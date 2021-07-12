package com.fc.v2.service;

import com.fc.v2.common.base.IService;
import com.fc.v2.common.support.ConvertUtil;
import com.fc.v2.mapper.auto.TsysPermissionMapper;
import com.fc.v2.mapper.auto.TsysPermissionRoleMapper;
import com.fc.v2.mapper.custom.PermissionDao;
import com.fc.v2.model.auto.*;
import com.fc.v2.model.custom.SysMenu;
import com.fc.v2.model.custom.SysPower;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.util.SnowflakeIdWorker;
import com.fc.v2.util.StringUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pikachu.common.collection.KeyValue;
import com.pikachu.common.collection.Where;
import com.pikachu.common.database.core.IDataReader;
import com.pikachu.common.database.core.IDatabase;
import com.pikachu.framework.caching.methods.MethodManager;
import com.pikachu.framework.database.DaoManager;
import com.pikachu.framework.database.IDao;
import com.pikachu.framework.database.reader.DaoListReader;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
public class SysPermissionService implements IService<TsysPermission, TsysPermissionExample> {
    
    //    //权限mapper
    //    @Autowired
    //    private TsysPermissionMapper tsysPermissionMapper;
    //    //权限角色关联表
    //    @Autowired
    //    private TsysPermissionRoleMapper permissionRoleMapper;
    //    //权限自定义dao
    //    @Autowired
    //    private PermissionDao permDao;
    @Autowired
    private DaoManager daoManager;
    //权限表
    private IDao<TsysPermission> permissionDao;
    //权限角色关联表
    private IDao<TsysPermissionRole> permissionRoleDao;
    
    @PostConstruct
    private void init() {
        this.permissionDao = daoManager.getDao(TsysPermission.class);
        this.permissionRoleDao = daoManager.getDao(TsysPermissionRole.class);
    }
    
    /**
     * 分页查询
     *
     * @return
     */
    public PageInfo<TsysPermission> list(Tablepar tablepar, String searchText) throws Exception {
        //        TsysPermissionExample testExample = new TsysPermissionExample();
        //        testExample.setOrderByClause("orderNum  is null  ASC,orderNum  ASC");
        //        if (searchText != null && !"".equals(searchText)) {
        //            testExample.createCriteria().andNameLike("%" + searchText + "%");
        //        }
        //        List<TsysPermission> list = tsysPermissionMapper.selectByExample(testExample);
        
        Where[] wheres = null;
        if (searchText != null && !"".equals(searchText)) {
            wheres = Where.getLikeWhere("name", searchText);
        }
        KeyValue[] orders = new KeyValue[]{new KeyValue("orderNum", "asc")};
        TsysPermission[] permissions = permissionDao.getList(wheres, orders);
        
        PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
        PageInfo<TsysPermission> pageInfo = new PageInfo<>(Arrays.asList(permissions));
        return pageInfo;
    }
    
    @Override
    public int deleteByPrimaryKey(String ids) throws Exception {
        //        //转成集合
        //        List<String> lista = ConvertUtil.toListStrArray(ids);
        //
        //        //判断角色是否删除去除
        //        TsysPermissionRoleExample permissionRoleExample = new TsysPermissionRoleExample();
        //        permissionRoleExample.createCriteria().andPermissionIdIn(lista);
        //        List<TsysPermissionRole> tsysPermissionRoles = permissionRoleMapper.selectByExample(permissionRoleExample);
        //        if (tsysPermissionRoles.size() > 0) {//有角色外键
        //            return -2;
        //        }
        //
        //        //判断是否有子集
        //        TsysPermissionExample example = new TsysPermissionExample();
        //        example.createCriteria().andIdIn(lista);
        //        List<TsysPermission> tsysPermissions = tsysPermissionMapper.selectByExample(example);
        //        boolean lag = false;
        //        for (TsysPermission tsysPermission : tsysPermissions) {
        //            if (tsysPermission.getChildCount() > 0) {
        //                lag = true;
        //            }
        //        }
        //        if (lag) {//有子集 无法删除
        //            return -1;
        //        } else {//删除操作
        //            int i = tsysPermissionMapper.deleteByExample(example);
        //            if (i > 0) {//删除成功
        //                return 1;
        //            } else {//删除失败
        //                return 0;
        //            }
        //
        //        }
        
        //转成集合
        String[] idArr = ids.split(",");
        Where[] wheres = Where.getInWhere("permissionID", idArr);
        //判断角色是否删除去除
        TsysPermissionRole[] permRoles = permissionRoleDao.getList(wheres, null);
        if (permRoles.length > 0) {//有角色外键
            return -2;
        }
        
        //判断是否有子集
        Where[] idWheres = Where.getInWhere("id", idArr);
        TsysPermission[] perms = permissionDao.getList(idWheres, null);
        boolean lag = false;
        for (TsysPermission permission : perms) {
            if (permission.getChildCount() > 0) {
                lag = true;
                break;
            }
        }
        if (lag) {//有子集 无法删除
            return -1;
        } else {//删除操作
            int i = permissionDao.delete(idWheres);
            // 1:成功，0:失败
            return i > 0 ? 1 : 0;
        }
    }
    
    @Override
    public int insertSelective(TsysPermission record) throws Exception {
        //添加雪花主键id
        //        record.setId(SnowflakeIdWorker.getUUID());
        //判断为目录的时候添加父id为0
		/*if(record!=null&&record.getType()==0){
			record.setPid("1");
		}*/
        //默认设置不跳转
        //        if (record.getIsBlank() == null) {
        //            record.setIsBlank(0);
        //        }
        //        return tsysPermissionMapper.insertSelective(record);
        
        record.setId(SnowflakeIdWorker.getUUID());
        permissionDao.add(record);
        return 1;
    }
    
    @Override
    public TsysPermission selectByPrimaryKey(String id) throws Exception {
        
        //        return tsysPermissionMapper.selectByPrimaryKey(id);
        TsysPermission perm = permissionDao.getByPrimary(id);
        return perm;
    }
    
    @Override
    public int updateByPrimaryKeySelective(TsysPermission record) throws Exception {
        //默认设置不跳转
        //        if (record.getIsBlank() == null) {
        //            record.setIsBlank(0);
        //        }
        //        return tsysPermissionMapper.updateByPrimaryKeySelective(record);
        int edit = permissionDao.edit(record);
        return edit;
    }
    
    public int updateByPrimaryKey(TsysPermission record) throws Exception {
        //默认设置不跳转
        //        if (record.getIsBlank() == null) {
        //            record.setIsBlank(0);
        //        }
        //        return tsysPermissionMapper.updateByPrimaryKey(record);
        if (record.getIsBlank() == null) {
            record.setIsBlank(0);
        }
        int edit = permissionDao.edit(record);
        return edit;
    }
    
    /**
     * 修改权限状态展示或者不展示
     *
     * @param record
     *
     * @return
     */
    public int updateVisible(TsysPermission record) throws Exception {
        //        return tsysPermissionMapper.updateByPrimaryKeySelective(record);
        int edit = permissionDao.edit(record);
        return edit;
    }
    
    @Override
    public int updateByExampleSelective(TsysPermission record, TsysPermissionExample example) throws Exception {
        //默认设置不跳转
        //        if (record.getIsBlank() == null) {
        //            record.setIsBlank(0);
        //        }
        //        return tsysPermissionMapper.updateByExampleSelective(record, example);
        int edit = permissionDao.edit(record);
        return edit;
    }
    
    @Override
    public int updateByExample(TsysPermission record, TsysPermissionExample example) throws Exception {
        //默认设置不跳转
        //        if (record.getIsBlank() == null) {
        //            record.setIsBlank(0);
        //        }
        //        return tsysPermissionMapper.updateByExample(record, example);
        int edit = permissionDao.edit(record);
        return edit;
    }
    
    @Override
    public List<TsysPermission> selectByExample(TsysPermissionExample example) throws Exception {
        
        //        return tsysPermissionMapper.selectByExample(example);
        TsysPermission[] perms = permissionDao.getList(null, null);
        return Arrays.asList(perms);
    }
    
    @Override
    public long countByExample(TsysPermissionExample example) throws Exception {
        
        //        return tsysPermissionMapper.countByExample(example);
        int count = permissionDao.getCount(null);
        return count;
    }
    
    // @Override
    // public int deleteByExample(TsysPermissionExample example) throws Exception {
    //
    // 	return tsysPermissionMapper.deleteByExample(example);
    // }
    
    /**
     * 检查权限名字
     *
     * @return
     */
    public int checkNameUnique(TsysPermission tsysPermission) throws Exception {
        //        TsysPermissionExample example = new TsysPermissionExample();
        //        example.createCriteria().andNameEqualTo(tsysPermission.getName());
        //        List<TsysPermission> list = tsysPermissionMapper.selectByExample(example);
        //        return list.size();
        Where[] wheres = Where.getEqualsWhere("name", tsysPermission.getName());
        TsysPermission[] perms = permissionDao.getList(wheres, null);
        return perms.length;
    }
    
    /**
     * 检查权限URL
     *
     * @return
     */
    public int checkURLUnique(TsysPermission tsysPermission) throws Exception {
        //        TsysPermissionExample example = new TsysPermissionExample();
        //        example.createCriteria().andUrlEqualTo(tsysPermission.getUrl());
        //        List<TsysPermission> list = tsysPermissionMapper.selectByExample(example);
        //        return list.size();
        Where[] wheres = Where.getEqualsWhere("url", tsysPermission.getName());
        TsysPermission[] perms = permissionDao.getList(wheres, null);
        return perms.length;
    }
    
    /**
     * 检查权限perms字段
     *
     * @return
     */
    public int checkPermsUnique(TsysPermission tsysPermission) throws Exception {
        //        TsysPermissionExample example = new TsysPermissionExample();
        //        example.createCriteria().andPermsEqualTo(tsysPermission.getPerms());
        //        List<TsysPermission> list = tsysPermissionMapper.selectByExample(example);
        //        return list.size();
        
        Where[] wheres = Where.getEqualsWhere("perms", tsysPermission.getName());
        TsysPermission[] perms = permissionDao.getList(wheres, null);
        return perms.length;
    }
    
    /**
     * 根据父id 以及类型查询权限子集
     *
     * @param pid
     *
     * @return
     */
    public List<TsysPermission> queryPid(String pid, int type) throws Exception {
        //        TsysPermissionExample example = new TsysPermissionExample();
        //        example.createCriteria().andPidEqualTo(pid).andTypeEqualTo(type);
        //        return tsysPermissionMapper.selectByExample(example);
        Where[] ws = new Where[2];
        ws[0] = new Where("pid", "=", pid);
        ws[1] = new Where("type", "=", type);
        TsysPermission[] perms = permissionDao.getList(ws, null);
        return Arrays.asList(perms);
    }
    
    /**
     * 根据用户id查询菜单栏
     *
     * @return
     */
    public List<SysMenu> getSysMenus(String userID) throws Exception {
        List<SysMenu> treeList = new ArrayList<>();
        List<TsysPermission> menuList = getall(userID);
        treeList = getSysMenus(menuList, "0");
        return treeList;
    }
    
    /**
     * 递归查询权限
     *
     * @param treeList
     * @param parentId
     *
     * @return
     */
    private List<SysMenu> getSysMenus(List<TsysPermission> treeList, String parentId) {
        List<SysMenu> SysMenus = new ArrayList<>();
        if (StringUtils.isNotNull(parentId) && treeList != null && treeList.size() > 0) {
            List<SysMenu> childList = null;
            for (TsysPermission perm : treeList) {
                if (perm.getPid().equals(parentId)) {
                    if (perm.getChildCount() > 0) {
                        childList = getSysMenus(treeList, perm.getId());
                    }
                    SysMenu sysMenu = new SysMenu(perm.getId(), perm.getPid(), perm.getName(),
                            perm.getType(), perm.getIsBlank(), perm.getIcon(), perm.getUrl(), childList);
                    SysMenus.add(sysMenu);
                    childList = null;
                }
            }
        }
        return SysMenus;
    }
    
    /**
     * 根据角色id查询所有权限，权限有会有标识表示
     *
     * @return
     */
    public List<SysPower> getRolePower(String roleId) throws Exception {
        //所有权限
        List<TsysPermission> allPower = getall(null);
        //角色权限
        String queryRoleIdSQL = "select p.* from t_sys_permission p " +
                                "left join t_sys_permission_role pr on p.id=pr.permissionID " +
                                "where pr.roleID=?";
        IDatabase db = daoManager.getDatabaseAccess();
        DaoListReader<TsysPermission> reader = new DaoListReader<>(TsysPermission.class,
                MethodManager.getMethodData(TsysPermission.class)
                .getMethodsSetMap());
        db.executeReader(reader, queryRoleIdSQL, new Object[]{roleId}, null);
        TsysPermission[] rolePower = reader.getDatas();
        
        // List<TsysPermission> rolePower = permDao.queryRoleId(roleId);
        
        List<SysPower> sysPowerList = new ArrayList<>();
        
        allPower.forEach(sysPower -> {
            SysPower sysPower1 = new SysPower(sysPower.getId(), sysPower.getName(), sysPower.getType(), sysPower.getPerms(),
                    sysPower
                            .getUrl(), sysPower.getIsBlank(), sysPower.getPid(), sysPower.getIcon(), sysPower.getOrderNum(),
                    sysPower
                            .getVisible(), "0");
            Arrays.asList(rolePower).forEach(sysRolePower -> {
                if (sysRolePower.getId().equals(sysPower.getId())) {
                    sysPower1.setCheckArr("1");
                    return;
                }
            });
            sysPowerList.add(sysPower1);
            
        });
        return sysPowerList;
        
    }
    
    /**
     * 根据用户id获取用户角色如果用户为null 获取所有权限
     *
     * @return
     */
    public List<TsysPermission> getall(String userId) throws Exception {
        //        if (StringUtils.isEmpty(userId)) {
        //            TsysPermissionExample example = new TsysPermissionExample();
        //            example.createCriteria().andVisibleEqualTo(0);
        //            example.setOrderByClause("orderNum  is null  ASC,orderNum  ASC");
        //            return tsysPermissionMapper.selectByExample(example);
        //        }
        //        return permissionDao.findByAdminUserId(userid);
        if (StringUtils.isEmpty(userId)) {
            Where[] wheres = Where.getEqualsWhere("visible", 0);
            KeyValue[] orders = new KeyValue[]{new KeyValue("orderNum", "asc")};
            TsysPermission[] perms = permissionDao.getList(wheres, orders);
            List<TsysPermission> permList = new ArrayList<>();
            for (TsysPermission perm : perms) {
                permList.add(perm);
            }
            return permList;
        }
        
        String findByAdminUserIdSQL = "select distinct p.*,(select count(1) from t_sys_permission where pid=p.id) childcount " +
                                      "from t_sys_permission_role spr,t_sys_role_user sru,t_sys_permission p " +
                                      "where spr.roleID = sru.sysRoleID AND spr.permissionID = p.id and visible=0  AND sru.sysUserID=? " +
                                      "GROUP BY p.id " +
                                      "ORDER BY orderNum  is null  ASC,orderNum  ASC";
        IDatabase db = daoManager.getDatabaseAccess();
        DaoListReader<TsysPermission> reader = new DaoListReader<>(TsysPermission.class, MethodManager.getMethodData(TsysPermission.class)
                .getMethodsSetMap());
        db.executeReader(reader, findByAdminUserIdSQL, new Object[]{userId}, null);
        TsysPermission[] rolePower = reader.getDatas();
        return Arrays.asList(rolePower);
        // return permDao.findByAdminUserId(userId);
    }
    
}
