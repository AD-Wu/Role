package com.fc.v2.service;

import com.fc.v2.common.base.IService;
import com.fc.v2.common.support.ConvertUtil;
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
public class SysUserService implements IService<TsysUser> {
    
    // // 生成的用户dao
    // @Autowired
    // private TsysUserMapper tsysUserMapper;
    // // 生成的角色用户dao
    // @Autowired
    // private TSysRoleUserMapper tSysRoleUserMapper;
    // //自定义角色dao
    // @Autowired
    // private RoleDao roleDao;
    // //自动生成的角色dao
    // @Autowired
    // private TsysRoleMapper tsysRoleMapper;
    @Autowired
    private DaoManager daoManager;
    
    /**
     * 分页查询
     *
     * @return
     */
    @Transactional
    public PageInfo<TsysUser> list(Tablepar tablepar) throws Exception {
        // IDao<Pikachu> pikachuDao = daoManager.getDao(Pikachu.class);
        // pikachuDao.add(new Pikachu());
        // System.out.println("=====================");
        // int i = 6/0;
        // System.out.println("=====================");
        PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
        String username = tablepar.getSearchText();
        IDao<TsysUser> userDao = daoManager.getDao(TsysUser.class);
        IDao<SysPosition> posDao = daoManager.getDao(SysPosition.class);
        IDao<SysDepartment> deptDao = daoManager.getDao(SysDepartment.class);
        
        TsysUser[] users = null;
        
        if (username == null) {
            users = userDao.getList(null, null);
        } else {
            users = userDao.getList(
                    new String[]{"username"},
                    new String[]{username},
                    new KeyValue[]{new KeyValue("id", "desc")});
        }
        for (TsysUser user : users) {
            SysPosition pos = posDao.getByPrimary(user.getPosId());
            if (pos != null) {
                user.setPosName(pos.getPostName());
            }
            SysDepartment dept = deptDao.getByPrimary(user.getDepId());
            if (dept != null) {
                user.setDepName(dept.getDeptName());
            }
        }
        PageInfo<TsysUser> pageInfo = new PageInfo<>(Arrays.asList(users));
        return pageInfo;
        
        // List<TsysUser> list = userDao.queryUserInfo(username);
        
    }
    
    @Override
    @Transactional
    public int delete(String ids) throws Exception {
        // List<String> lista = ConvertUtil.toListStrArray(ids);
        // TsysUserExample example = new TsysUserExample();
        // example.createCriteria().andIdIn(lista);
        // int i = tsysUserMapper.deleteByExample(example);
        // if (i > 0) {
        //     TSysRoleUserExample tSysRoleUserExample = new TSysRoleUserExample();
        //     tSysRoleUserExample.createCriteria().andSysUserIdIn(lista);
        //     tSysRoleUserMapper.deleteByExample(tSysRoleUserExample);
        // }
        // return i;
        
        // 分割ids
        String[] idAry = ids.split(",");
        // 生成where条件
        IDao<TsysUser> userDao = daoManager.getDao(TsysUser.class);
        int delete = userDao.delete(new Where[]{new Where("id", "in", idAry)});
        return delete;
        
    }
    
    /**
     * 添加用户
     */
    @Override
    public int add(TsysUser record) throws Exception {
        IDao<TsysUser> userDao = daoManager.getDao(TsysUser.class);
        TsysUser add = userDao.add(record);
        return 1;
        // return tsysUserMapper.insertSelective(record);
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
    public int insertUserRoles(TsysUser record, String roles) throws Exception {
        String userID = SnowflakeIdWorker.getUUID();
        record.setId(userID);
        if (StringUtils.isNotEmpty(roles)) {
            // 获取数据库操作对象
            IDao<TSysRoleUser> roleUserDao = daoManager.getDao(TSysRoleUser.class);
            List<String> rolesList = ConvertUtil.toListStrArray(roles);
            for (String rolesID : rolesList) {
                TSysRoleUser roleUser = new TSysRoleUser(SnowflakeIdWorker.getUUID(), userID, rolesID);
                // tSysRoleUserMapper.insertSelective(roleUser);
                roleUserDao.add(roleUser);
            }
        }
        
        //密码加密
        record.setPassword(MD5Util.encode(record.getPassword()));
        IDao<TsysUser> userDao = daoManager.getDao(TsysUser.class);
        
        userDao.add(record);
        return 1;
        
        // return tsysUserMapper.insertSelective(record);
    }
    
    @Override
    public TsysUser getByPrimary(String id) throws Exception {
        IDao<TsysUser> userDao = daoManager.getDao(TsysUser.class);
        
        TsysUser user = userDao.getByPrimary(id);
        if (user != null) {
            IDao<SysDepartment> deptDao = daoManager.getDao(SysDepartment.class);
            IDao<SysPosition> posDao = daoManager.getDao(SysPosition.class);
            SysDepartment dept = deptDao.getByPrimary(user.getDepId());
            SysPosition pos = posDao.getByPrimary(user.getPosId());
            if (dept != null) {
                user.setDepName(dept.getDeptName());
            }
            if (pos != null) {
                user.setPosName(pos.getPostName());
            }
        }
        return user;
        
        // return tsysUserMapper.selectByPrimaryKey(id);
    }
    
    @Override
    public int edit(TsysUser record) throws Exception {
        String pwd = MD5Util.encode(record.getPassword());
        IDao<TsysUser> userDao = daoManager.getDao(TsysUser.class);
        
        int update = userDao.update(new String[]{"password"}, new Object[]{pwd},
                new String[]{"id"}, new Object[]{record.getId()});
        return update;
        
        // record.setPassword(MD5Util.encode(record.getPassword()));
        // return tsysUserMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public List<TsysUser> getList(Where[] wheres, KeyValue[] orders) throws Exception {
        IDao<TsysUser> userDao = daoManager.getDao(TsysUser.class);
        TsysUser[] users = userDao.getList(wheres, orders);
        return Arrays.asList(users);
        // return tsysUserMapper.selectByExample(example);
    }
    
    @Override
    public long getCount(Where[] wheres) throws Exception {
        IDao<TsysUser> userDao = daoManager.getDao(TsysUser.class);
        int count = userDao.getCount(wheres);
        return count;
        // return tsysUserMapper.countByExample(example);
    }
    
    // @Override
    // public int deleteByExample(TsysUserExample example) throws Exception {
    //
    //     return tsysUserMapper.deleteByExample(example);
    // }
    
    /**
     * 检查用户name
     *
     * @param user
     *
     * @return
     */
    public int checkLoginNameUnique(TsysUser user) throws Exception {
        // TsysUserExample example = new TsysUserExample();
        // example.createCriteria().andUsernameEqualTo(user.getUsername());
        // List<TsysUser> list = tsysUserMapper.selectByExample(example);
        // return list.size();
        IDao<TsysUser> userDao = daoManager.getDao(TsysUser.class);
        TsysUser[] usernames = userDao.getList(new Where[]{new Where("username", "=", user.getUsername())}, null);
        return usernames.length;
    }
    
    /**
     * 获取所有权限 并且增加是否有权限字段
     *
     * @return
     */
    public List<RoleVo> getUserIsRole(String userID) throws Exception {
        // List<RoleVo> list = new ArrayList<>();
        // //查询出我的权限
        // List<TsysRole> myRoles = roleDao.queryUserRole(userID);
        // TsysRoleExample tsysRoleExample = new TsysRoleExample();
        // //查询系统所有的角色
        // List<TsysRole> tsysRoles = tsysRoleMapper.selectByExample(tsysRoleExample);
        // if (StringUtils.isNotEmpty(tsysRoles)) {
        //     for (TsysRole tsysRole : tsysRoles) {
        //         Boolean isflag = false;
        //         RoleVo roleVo = new RoleVo(tsysRole.getId(), tsysRole.getName(), isflag);
        //         for (TsysRole myRole : myRoles) {
        //             if (tsysRole.getId().equals(myRole.getId())) {
        //                 isflag = true;
        //                 break;
        //             }
        //         }
        //         if (isflag) {
        //             roleVo.setIscheck(true);
        //             list.add(roleVo);
        //         } else {
        //             list.add(roleVo);
        //         }
        //     }
        // }
        // return list;
        
        List<RoleVo> list = new ArrayList<>();
        //查询出我的权限
        IDatabase db = daoManager.getDatabaseAccess();
        DaoListReader<TsysRole> reader = new DaoListReader<>(TsysRole.class,
                MethodManager.getMethodData(TsysRole.class).getMethodsSetMap());
        String sql ="select r.id,r.name  from t_sys_role r " +
                    "LEFT JOIN t_sys_role_user ru ON  r.id=ru.sysRoleID " +
                    "where ru.sysUserID=?";
        Object[] params = new Object[]{userID};
        db.executeReader(reader,sql,params,null);
        TsysRole[] myRoles = reader.getDatas();
    
        //查询系统所有的角色
        IDao<TsysRole> roleDao = daoManager.getDao(TsysRole.class);
        TsysRole[] roles = roleDao.getList(null, null);
        if (StringUtils.isNotEmpty(roles)) {
            for (TsysRole role : roles) {
                Boolean isFlag = false;
                RoleVo roleVo = new RoleVo(role.getId(), role.getName(), isFlag);
                for (TsysRole myRole : myRoles) {
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
    public int updateUserPassword(TsysUser record) throws Exception {
        // record.setPassword(MD5Util.encode(record.getPassword()));
        // //修改用户信息
        // return tsysUserMapper.updateByPrimaryKeySelective(record);
        record.setPassword(MD5Util.encode(record.getPassword()));
        IDao<TsysUser> dao = daoManager.getDao(TsysUser.class);
        int edit = dao.edit(record);
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
    public int updateUserRoles(TsysUser record, String roleIds) throws Exception {
        // //先删除这个用户的所有角色
        // TSysRoleUserExample tSysRoleUserExample = new TSysRoleUserExample();
        // tSysRoleUserExample.createCriteria().andSysUserIdEqualTo(record.getId());
        // tSysRoleUserMapper.deleteByExample(tSysRoleUserExample);
        // if (StringUtils.isNotEmpty(roleIds)) {
        //     List<String> list_roles = ConvertUtil.toListStrArray(roleIds);
        //     //添加新的角色信息
        //     for (String role : list_roles) {
        //         TSysRoleUser tSysRoleUser = new TSysRoleUser(SnowflakeIdWorker.getUUID(), record.getId(), role);
        //         tSysRoleUserMapper.insertSelective(tSysRoleUser);
        //     }
        // }
        // //修改用户信息
        // return tsysUserMapper.updateByPrimaryKeySelective(record);
        
        //先删除这个用户的所有角色
        IDao<TSysRoleUser> roleUserDao = daoManager.getDao(TSysRoleUser.class);
        roleUserDao.delete(new Where[]{new Where("sysUserID", "=", record.getId())});
        
        if (StringUtils.isNotEmpty(roleIds)) {
            String[] roles = roleIds.split(",");
            //添加新的角色信息
            for (String role : roles) {
                TSysRoleUser roleUser = new TSysRoleUser(SnowflakeIdWorker.getUUID(), record.getId(), role);
                roleUserDao.add(roleUser);
            }
        }
        //修改用户信息
        IDao<TsysUser> userDao = daoManager.getDao(TsysUser.class);
        int edit = userDao.edit(record);
        return edit;
    }
    
}
