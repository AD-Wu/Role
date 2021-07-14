package com.fc.v2.service;

import com.fc.v2.common.base.IService;
import com.fc.v2.util.ConvertUtil;
import com.fc.v2.model.auto.*;
import com.fc.v2.model.custom.RoleVo;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.util.MD5Util;
import com.fc.v2.util.SnowflakeIdWorker;
import com.fc.v2.util.StringUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pikachu.common.collection.KeyValue;
import com.pikachu.common.collection.Where;
import com.pikachu.common.database.core.IDatabase;
import com.pikachu.framework.caching.methods.MethodManager;
import com.pikachu.framework.database.DaoManager;
import com.pikachu.framework.database.IDao;
import com.pikachu.framework.database.reader.DaoListReader;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * 系统用户
 *
 * @author fuce
 * @ClassName: SysUserService
 * @date 2018年8月26日
 */
@Service
public class UserService implements IService<User> {
    
    @Autowired
    private DaoManager daoManager;
    private IDao<User> userDao;
    private IDao<UserRole> userRoleDao;

    @PostConstruct
    private void init() {
        this.userDao = daoManager.getDao(User.class);
        this.userRoleDao = daoManager.getDao(UserRole.class);
    }
    /**
     * 分页查询
     *
     * @return
     */
    @Transactional
    public PageInfo<User> list(Tablepar tablepar) throws Exception {
        
        PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
        String username = tablepar.getSearchText();
        IDao<Department> deptDao = daoManager.getDao(Department.class);
        
        User[] users = null;
        
        if (username == null) {
            users = userDao.getList(null, null);
        } else {
            users = userDao.getList(
                    new String[]{"username"},
                    new String[]{username},
                    new KeyValue[]{new KeyValue("id", "desc")});
        }
        for (User user : users) {
            Department dept = deptDao.getByPrimary(user.getDepId());
            if (dept != null) {
                user.setDepName(dept.getDeptName());
            }
        }
        PageInfo<User> pageInfo = new PageInfo<>(Arrays.asList(users));
        return pageInfo;
    }
    
    @Override
    @Transactional
    public int delete(String ids) throws Exception {
        // 分割ids
        String[] idAry = ids.split(",");
        // 先删除用户角色
        int userRoleDelete = userRoleDao.delete(Where.getInWhere("sysUserId", idAry));
        // 生成where条件
        int userDelete = userDao.delete(Where.getInWhere("id", idAry));
        return userDelete;
        
    }
    
    /**
     * 添加用户
     */
    @Override
    public int add(User record) throws Exception {
        User add = userDao.add(record);
        return 1;
    }
    
    /**
     * 添加用户跟角色信息
     *
     * @param record
     * @param roles
     *
     * @return
     */
    @Transactional
    public int insertUserRoles(User record, String roles) throws Exception {
        String userID = SnowflakeIdWorker.getUUID();
        record.setId(userID);
        if (StringUtils.isNotEmpty(roles)) {
            // 获取数据库操作对象
            List<String> rolesList = ConvertUtil.toListStrArray(roles);
            for (String rolesID : rolesList) {
                UserRole userRole = new UserRole(SnowflakeIdWorker.getUUID(), userID, rolesID);
                userRoleDao.add(userRole);
            }
        }
        //密码加密
        record.setPassword(MD5Util.encode(record.getPassword()));
        userDao.add(record);
        return 1;
    }
    
    @Override
    public User getByPrimary(String id) throws Exception {
        User user = userDao.getByPrimary(id);
        if (user != null) {
            IDao<Department> deptDao = daoManager.getDao(Department.class);
            Department dept = deptDao.getByPrimary(user.getDepId());
            if (dept != null) {
                user.setDepName(dept.getDeptName());
            }

        }
        return user;
    }
    
    @Override
    public int edit(User record) throws Exception {
        String pwd = MD5Util.encode(record.getPassword());
        int update = userDao.update(new String[]{"password"}, new Object[]{pwd},
                new String[]{"id"}, new Object[]{record.getId()});
        return update;
    }
    
    @Override
    public List<User> getList(Where[] wheres, KeyValue[] orders) throws Exception {
        User[] users = userDao.getList(wheres, orders);
        return Arrays.asList(users);
    }
    
    @Override
    public long getCount(Where[] wheres) throws Exception {
        int count = userDao.getCount(wheres);
        return count;
        
    }
    
    /**
     * 检查用户name
     *
     * @param user
     *
     * @return
     */
    public int checkLoginNameUnique(User user) throws Exception {
        IDao<User> dao = daoManager.getDao(User.class);
        User[] usernames = dao.getList(Where.getEqualsWhere("username", user.getUsername()), null);
        return usernames.length;
    }
    
    /**
     * 获取所有权限 并且增加是否有权限字段
     *
     * @return
     */
    public List<RoleVo> getUserIsRole(String userID) throws Exception {
        
        List<RoleVo> list = new ArrayList<>();
        //查询出我的权限
        IDatabase db = daoManager.getDatabaseAccess();
        DaoListReader<Role> reader = new DaoListReader<>(Role.class,
                MethodManager.getMethodData(Role.class).getMethodsSetMap());
        String sql = "select r.id,r.name  from t_sys_role r " +
                     "LEFT JOIN t_sys_role_user ru ON  r.id=ru.sysRoleID " +
                     "where ru.sysUserID=?";
        Object[] params = new Object[]{userID};
        db.executeReader(reader, sql, params, null);
        Role[] myRoles = reader.getDatas();
        
        //查询系统所有的角色
        IDao<Role> roleDao = daoManager.getDao(Role.class);
        Role[] roles = roleDao.getList(null, null);
        if (StringUtils.isNotEmpty(roles)) {
            for (Role role : roles) {
                Boolean isFlag = false;
                RoleVo roleVo = new RoleVo(role.getId(), role.getName(), isFlag);
                for (Role myRole : myRoles) {
                    if (role.getId().equals(myRole.getId())) {
                        isFlag = true;
                        break;
                    }
                }
                if (isFlag) {
                    roleVo.setIscheck(true);
                    list.add(roleVo);
                } else {
                    list.add(roleVo);
                }
            }
        }
        return list;
    }
    
    /**
     * 修改用户密码
     *
     * @param record
     *
     * @return
     */
    public int updateUserPassword(User record) throws Exception {
        User old = userDao.getByPrimary(record.getId());
        old.setPassword(MD5Util.encode(record.getPassword()));
        int edit = userDao.edit(old);
        return edit;
    }
    
    /**
     * 修改用户信息以及角色信息
     *
     * @param record
     *
     * @return
     */
    @Transactional
    public int updateUserRoles(User record, String roleIds) throws Exception {
        // 先删除这个用户的所有角色
        int delete = userRoleDao.delete(Where.getEqualsWhere("sysUserID", record.getId()));

        if (StringUtils.isNotEmpty(roleIds)) {
            String[] roles = roleIds.split(",");
            //添加新的角色信息
            for (String role : roles) {
                UserRole userRole = new UserRole(SnowflakeIdWorker.getUUID(), record.getId(), role);
                userRoleDao.add(userRole);
            }
        }
        // 修改用户信息
        User old = userDao.getByPrimary(record.getId());
        record.setPassword(old.getPassword());
        int edit = userDao.edit(record);
        return edit;
    }
    
}
