package com.fc.v2.service;

import cn.hutool.core.util.RandomUtil;
import com.fc.v2.common.base.IService;
import com.fc.v2.model.auto.*;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.util.SnowflakeIdWorker;
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
public class SysRoleService implements IService<TsysRole> {
    
    @Autowired
    private DaoManager daoManager;
    private IDao<TsysRole> roleDao;
    private IDao<TsysPermissionRole> permissionRoleDao;
    
    @PostConstruct
    private void init() {
        this.roleDao = daoManager.getDao(TsysRole.class);
        this.permissionRoleDao = daoManager.getDao(TsysPermissionRole.class);
    }
    
    /**
     * 分页查询
     *
     * @return
     */
    public PageInfo<TsysRole> list(Tablepar tablepar) throws Exception {
        Where[] wheres = null;
        if (tablepar.getSearchText() != null && !"".equals(tablepar.getSearchText())) {
            wheres = Where.getLikeWhere("name", tablepar.getSearchText());
        }
        KeyValue[] orders = new KeyValue[]{new KeyValue("id", "DESC")};
        TsysRole[] roles = roleDao.getList(wheres, orders);
        
        PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
        PageInfo<TsysRole> pageInfo = new PageInfo<>(Arrays.asList(roles));
        return pageInfo;
    }
    
    /**
     * 查询全部角色集合
     *
     * @return
     */
    public List<TsysRole> queryList() throws Exception {
        TsysRole[] roles = roleDao.getList(null, null);
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
        permissionRoleDao.delete(new Where[]{new Where("roleID", "in", idArr)});
        // 再删除角色
        int delete = roleDao.delete(new Where[]{new Where("id", "in", idArr)});
        return delete;
    }
    
    @Override
    public int add(TsysRole record) throws Exception {
        record.setID(SnowflakeIdWorker.getUUID());
        TsysRole add = roleDao.add(record);
        return 1;
    }
    
    @Override
    public TsysRole getByPrimary(String id) throws Exception {
        TsysRole role = roleDao.getByPrimary(id);
        return role;
        
    }
    
    @Override
    public int edit(TsysRole record) throws Exception {
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
        //先删除角色下面的所有权限
        permissionRoleDao.delete(new Where[]{new Where("roleID", "=", roleId)});
        //添加权限关联
        String[] permIdAry = powerIds.split(",");
        int i = 0;
        for (String perID : permIdAry) {
            TsysPermissionRole permissionRole = new TsysPermissionRole();
            permissionRole.setId(RandomUtil.randomUUID());
            permissionRole.setRoleId(roleId);
            permissionRole.setPermissionId(perID);
            permissionRoleDao.add(permissionRole);
            i++;
        }
        return i;
    }
    
    @Override
    public List<TsysRole> getList(Where[] wheres, KeyValue[] orders) throws Exception {
        TsysRole[] roles = roleDao.getList(wheres, orders);
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
    public int checkNameUnique(TsysRole tsysRole) throws Exception {
        Where[] wheres = Where.getEqualsWhere("name", tsysRole.getName());
        TsysRole[] roles = roleDao.getList(wheres, null);
        return roles.length;
    }
    
    /**
     * 根据用户id查询角色
     *
     * @param userID
     *
     * @return
     */
    public List<TsysRole> queryUserRole(String userID) throws Exception {
        IDatabase da = daoManager.getDatabaseAccess();
        String sql = "select r.id,r.name  from t_sys_role r " +
                     "LEFT JOIN t_sys_role_user ru ON  r.id=ru.sysRoleID " +
                     "where ru.sysUserID=?";
        DaoListReader<TsysRole> reader = new DaoListReader<>(TsysRole.class,
                MethodManager.getMethodData(TsysRole.class)
                        .getMethodsSetMap());
        da.executeReader(reader, sql, new Object[]{userID}, null);
        TsysRole[] roles = reader.getDatas();
        return Arrays.asList(roles);
    }
    
}
