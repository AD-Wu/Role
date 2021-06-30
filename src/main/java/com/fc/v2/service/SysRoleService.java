package com.fc.v2.service;

import cn.hutool.core.util.RandomUtil;
import com.fc.v2.common.base.IService;
import com.fc.v2.common.support.ConvertUtil;
import com.fc.v2.mapper.auto.TsysPermissionRoleMapper;
import com.fc.v2.mapper.auto.TsysRoleMapper;
import com.fc.v2.mapper.custom.RoleDao;
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

import java.util.Arrays;
import java.util.List;

@Service
public class SysRoleService implements IService<TsysRole, TsysRoleExample> {
    
    //角色mapper
    @Autowired
    private TsysRoleMapper tsysRoleMapper;
    //自定义角色dao
    @Autowired
    private RoleDao roleDao;
    //自动生成的权限角色映射mapper
    @Autowired
    private TsysPermissionRoleMapper tsysPermissionRoleMapper;
    @Autowired
    private DaoManager daoManager;
    
    /**
     * 分页查询
     *
     * @return
     */
    public PageInfo<TsysRole> list(Tablepar tablepar) throws Exception {
        // TsysRoleExample testExample = new TsysRoleExample();
        // testExample.setOrderByClause("id+0 DESC");
        // if (tablepar.getSearchText() != null && !"".equals(tablepar.getSearchText())) {
        //     testExample.createCriteria().andNameLike("%" + tablepar.getSearchText() + "%");
        // }
        //
        // PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
        // List<TsysRole> list = tsysRoleMapper.selectByExample(testExample);
        // PageInfo<TsysRole> pageInfo = new PageInfo<>(list);
        // return pageInfo;
        
        IDao<TsysRole> dao = daoManager.getDao(TsysRole.class);
        Where[] wheres = new Where[]{new Where("name", "like", tablepar.getSearchText())};
        KeyValue[] orders = new KeyValue[]{new KeyValue("id", "DESC")};
        TsysRole[] roles = dao.getList(wheres, orders);
        
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
        // TsysRoleExample tsysRoleExample = new TsysRoleExample();
        // return tsysRoleMapper.selectByExample(tsysRoleExample);
        IDao<TsysRole> dao = daoManager.getDao(TsysRole.class);
        return Arrays.asList(dao.getList(null, null));
    }
    
    /**
     *
     */
    @Override
    @Transactional
    public int deleteByPrimaryKey(String ids) throws Exception {
        // List<String> lista = ConvertUtil.toListStrArray(ids);
        // // 先删除角色下面的所有权限
        // TsysPermissionRoleExample permissionRoleExample = new TsysPermissionRoleExample();
        // permissionRoleExample.createCriteria().andRoleIdIn(lista);
        // tsysPermissionRoleMapper.deleteByExample(permissionRoleExample);
        // // 再删除角色
        // TsysRoleExample example = new TsysRoleExample();
        // example.createCriteria().andIdIn(lista);
        // return tsysRoleMapper.deleteByExample(example);
        
        // 先删除角色下面的所有权限
        String[] idArr = ids.split(",");
        IDao<TsysPermissionRole> permissionRoleDao = daoManager.getDao(TsysPermissionRole.class);
        permissionRoleDao.delete(new Where[]{new Where("roleID", "in", idArr)});
        // 再删除角色
        IDao<TsysRole> roleDao = daoManager.getDao(TsysRole.class);
        return roleDao.delete(new Where[]{new Where("id", "in", idArr)});
    }
    
    @Override
    public int insertSelective(TsysRole record) throws Exception {
        // //添加雪花主键id
        // record.setID(SnowflakeIdWorker.getUUID());
        // return tsysRoleMapper.insertSelective(record);
        record.setID(SnowflakeIdWorker.getUUID());
        IDao<TsysRole> dao = daoManager.getDao(TsysRole.class);
        TsysRole add = dao.add(record);
        return 1;
    }
    
    /**
     * 添加角色绑定权限
     *
     * @param record     角色信息
     * @param permission 权限id集合
     *
     * @return
     */
    @Transactional
    public int insertRoleAndPrem(TsysRole record, String permission) throws Exception {
        // //添加雪花主键id
        // String roleid = SnowflakeIdWorker.getUUID();
        // record.setID(roleid);
        // //添加权限
        // List<String> prems = ConvertUtil.toListStrArray(prem);
        // for (String premid : prems) {
        //     TsysPermissionRole tsysPermissionRole = new TsysPermissionRole(RandomUtil.randomUUID(), roleid, premid);
        //     tsysPermissionRoleMapper.insertSelective(tsysPermissionRole);
        // }
        // return tsysRoleMapper.insertSelective(record);
        
        //添加雪花主键id
        String roleID = SnowflakeIdWorker.getUUID();
        record.setID(roleID);
        //添加权限
        String[] permissions = permission.split(",");
        IDao<TsysPermissionRole> permissionRoleDao = daoManager.getDao(TsysPermissionRole.class);
        for (String permissionID : permissions) {
            TsysPermissionRole permissionRole = new TsysPermissionRole(RandomUtil.randomUUID(), roleID, permissionID);
            permissionRoleDao.add(permissionRole);
        }
        IDao<TsysRole> roleDao = daoManager.getDao(TsysRole.class);
        TsysRole add = roleDao.add(record);
        return 1;
    }
    
    @Override
    public TsysRole selectByPrimaryKey(String id) throws Exception {
        // return tsysRoleMapper.selectByPrimaryKey(id);
        IDao<TsysRole> dao = daoManager.getDao(TsysRole.class);
        return dao.getByPrimary(id);
        
    }
    
    @Override
    public int updateByPrimaryKeySelective(TsysRole record) throws Exception {
        // return tsysRoleMapper.updateByPrimaryKeySelective(record);
        IDao<TsysRole> dao = daoManager.getDao(TsysRole.class);
        return dao.edit(record);
    }
    
    /**
     * 修改用户角色 以及下面绑定的权限
     *
     * @return
     */
    @Transactional
    public int updateRoleAndPrem(String roleId, String powerIds) throws Exception {
        // //先删除角色下面的所有权限
        // TsysPermissionRoleExample permissionRoleExample = new TsysPermissionRoleExample();
        // permissionRoleExample.createCriteria().andRoleIdEqualTo(roleId);
        // tsysPermissionRoleMapper.deleteByExample(permissionRoleExample);
        // //添加权限关联
        // List<String> prems = ConvertUtil.toListStrArray(powerIds);
        // int i = 0;
        // for (String pre : prems) {
        //     TsysPermissionRole permissionRole = new TsysPermissionRole(RandomUtil.randomUUID(), roleId, pre);
        //     tsysPermissionRoleMapper.insertSelective(permissionRole);
        //     i++;
        // }
        // return i;
        
        //先删除角色下面的所有权限
        IDao<TsysPermissionRole> dao = daoManager.getDao(TsysPermissionRole.class);
        dao.delete(new Where[]{new Where("roleID","=",roleId)});
        //添加权限关联
        String[] permIdAry = powerIds.split(",");
        int i = 0;
        for (String perID : permIdAry) {
            TsysPermissionRole permissionRole = new TsysPermissionRole(RandomUtil.randomUUID(), roleId, perID);
            dao.add(permissionRole);
            i++;
        }
        return i;
    }
    
    @Override
    public int updateByExampleSelective(TsysRole record, TsysRoleExample example) throws Exception {
        // 更新，进行非空判断
        // return tsysRoleMapper.updateByExampleSelective(record, example);
        IDao<TsysRole> dao = daoManager.getDao(TsysRole.class);
        int edit = dao.edit(record);
        return edit;
    }
    
    @Override
    public int updateByExample(TsysRole record, TsysRoleExample example) throws Exception {
        // 更新，未进行非空判断
        // return tsysRoleMapper.updateByExample(record, example);
        IDao<TsysRole> dao = daoManager.getDao(TsysRole.class);
        return dao.edit(record);
    }
    
    @Override
    public List<TsysRole> selectByExample(TsysRoleExample example) throws Exception {
        
        return tsysRoleMapper.selectByExample(example);
    }
    
    @Override
    public long countByExample(TsysRoleExample example) throws Exception {
        
        return tsysRoleMapper.countByExample(example);
    }
    
    // @Override
    // public int deleteByExample(TsysRoleExample example) throws Exception {
    //
    //     return tsysRoleMapper.deleteByExample(example);
    // }
    
    /**
     * 检查角色name
     *
     * @return
     */
    public int checkNameUnique(TsysRole tsysRole) {
        TsysRoleExample example = new TsysRoleExample();
        example.createCriteria().andNameEqualTo(tsysRole.getName());
        List<TsysRole> list = tsysRoleMapper.selectByExample(example);
        return list.size();
    }
    
    /**
     * 根据用户id查询角色
     *
     * @param userID
     *
     * @return
     */
    public List<TsysRole> queryUserRole(String userID) throws Exception {
        // IDatabase da = daoManager.getDatabaseAccess();
        // String sql = "select r.id,r.name  from t_sys_role r " +
        //              "LEFT JOIN t_sys_role_user ru ON  r.id=ru.sysRoleID " +
        //              "where ru.sysRoleID=?";
        // DaoListReader<TsysRole> reader = new DaoListReader<>(TsysRole.class,
        //         MethodManager.getMethodData(TsysRole.class)
        //                 .getMethodsSetMap());
        // da.executeReader(reader, sql, new Object[]{userID}, null);
        // TsysRole[] roles = reader.getDatas();
        // return Arrays.asList(roles);
        return roleDao.queryUserRole(userID);
    }
    
}
