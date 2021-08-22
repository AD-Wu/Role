package com.fc.v2.service;

import com.fc.v2.common.base.IService;
import com.fc.v2.model.auto.*;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.util.SnowflakeID;
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
import java.util.Arrays;
import java.util.List;

@Service
public class RoleService implements IService<Role> {
    
    @Autowired
    private DaoManager daoManager;
    private IDao<Role> roleDao;
    private IDao<RolePermission> permissionRoleDao;
    
    @PostConstruct
    private void init() {
        this.roleDao = daoManager.getDao(Role.class);
        this.permissionRoleDao = daoManager.getDao(RolePermission.class);
    }
    
    /**
     * 分页查询
     *
     * @return
     */
    public PageInfo<Role> list(Tablepar tablepar) throws Exception {
        Where[] wheres = null;
        if (tablepar.getSearchText() != null && !"".equals(tablepar.getSearchText())) {
            wheres = Where.getLikeWhere("name", tablepar.getSearchText());
        }
        KeyValue[] orders = new KeyValue[]{new KeyValue("id", "DESC")};
        Role[] roles = roleDao.getList(wheres, orders);
        
        PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
        PageInfo<Role> pageInfo = new PageInfo<>(Arrays.asList(roles));
        return pageInfo;
    }
    
    /**
     * 查询全部角色集合
     *
     * @return
     */
    public List<Role> queryList() throws Exception {
        Role[] roles = roleDao.getList(null, null);
        return Arrays.asList(roles);
    }
    
    /**
     *
     */
    @Override
    @Transactional
    public int delete(String ids) throws Exception {
        // 先删除角色下面的所有权限
        String[] idArr = ids.split(",");
        permissionRoleDao.delete(Where.getInWhere("roleID",  idArr));
        // 再删除角色
        int delete = roleDao.delete(Where.getInWhere("id",  idArr));
        return delete;
    }
    
    @Override
    public int add(Role record) throws Exception {
        record.setID(SnowflakeID.get());
        Role add = roleDao.add(record);
        return 1;
    }
    
    @Override
    public Role getByPrimary(String id) throws Exception {
        Role role = roleDao.getByPrimary(id);
        return role;
        
    }
    
    @Override
    public int edit(Role record) throws Exception {
        int edit = roleDao.edit(record);
        return edit;
    }
    
    /**
     * 修改用户角色 以及下面绑定的权限
     *
     * @return
     */
    @Transactional
    public int updateRoleAndPerm(String roleId, String powerIds) throws Exception {
        // 先删除角色下面的所有权限
        permissionRoleDao.delete(Where.getEqualsWhere("roleID",roleId));
        // 添加权限关联
        String[] permIdAry = powerIds.split(",");
        int i = 0;
        for (String perID : permIdAry) {
            RolePermission rolePermission = new RolePermission();
            rolePermission.setId(SnowflakeID.get());
            rolePermission.setRoleId(roleId);
            rolePermission.setPermissionId(perID);
            permissionRoleDao.add(rolePermission);
            i++;
        }
        return i;
    }
    
    @Override
    public List<Role> getList(Where[] wheres, KeyValue[] orders) throws Exception {
        Role[] roles = roleDao.getList(wheres, orders);
        return Arrays.asList(roles);
    }
    
    @Override
    public long getCount(Where[] wheres) throws Exception {
        int count = roleDao.getCount(wheres);
        return count;
    }
    
    /**
     * 检查角色name
     *
     * @return
     */
    public int checkNameUnique(Role role) throws Exception {
        Where[] wheres = Where.getEqualsWhere("name", role.getName());
        Role[] roles = roleDao.getList(wheres, null);
        return roles.length;
    }
    
    /**
     * 根据用户id查询角色
     *
     * @param userID
     *
     * @return
     */
    public List<Role> queryUserRole(String userID) throws Exception {
        IDatabase da = daoManager.getDatabaseAccess();
        String sql = "select r.id,r.name  from role r " +
                     "LEFT JOIN userRole ru ON  r.id=ru.roleID " +
                     "where ru.userID=?";
        DaoListReader<Role> reader = new DaoListReader<>(Role.class,
                MethodManager.getMethodData(Role.class)
                        .getMethodsSetMap());
        da.executeReader(reader, sql, new Object[]{userID}, null);
        Role[] roles = reader.getDatas();
        return Arrays.asList(roles);
    }
    
}
