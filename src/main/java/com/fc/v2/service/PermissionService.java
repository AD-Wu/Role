package com.fc.v2.service;

import com.fc.v2.common.base.IService;
import com.fc.v2.model.auto.*;
import com.fc.v2.model.custom.SysMenu;
import com.fc.v2.model.custom.SysPower;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.util.SnowflakeID;
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

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
public class PermissionService implements IService<Permission> {
    
    @Autowired
    private DaoManager daoManager;
    //权限表
    private IDao<Permission> permissionDao;
    //权限角色关联表
    private IDao<RolePermission> permissionRoleDao;

    @PostConstruct
    private void init() {
        this.permissionDao = daoManager.getDao(Permission.class);
        this.permissionRoleDao = daoManager.getDao(RolePermission.class);
    }

    /**
     * 分页查询
     *
     * @return
     */
    public PageInfo<Permission> list(Tablepar tablepar, String searchText) throws Exception {
        Where[] wheres = null;
        if (searchText != null && !"".equals(searchText)) {
            wheres = Where.getLikeWhere("name", searchText);
        }
        KeyValue[] orders = new KeyValue[]{new KeyValue("orderNum", "asc")};
        Permission[] permissions = getPermission(wheres, orders);

        PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
        PageInfo<Permission> pageInfo = new PageInfo<>(Arrays.asList(permissions));
        return pageInfo;
    }

    @Override
    public int delete(String ids) throws Exception {
        //转成集合
        String[] idArr = ids.split(",");
        Where[] wheres = Where.getInWhere("permissionID", idArr);
        //判断角色是否删除去除
        RolePermission[] permRoles = permissionRoleDao.getList(wheres, null);
        if (permRoles.length > 0) {//有角色外键
            return -2;
        }

        //判断是否有子集
        Where[] idWheres = Where.getInWhere("id", idArr);
        Permission[] perms = getPermission(idWheres, null);
        boolean lag = false;

        for (Permission perm : perms) {
            if (perm.getChildCount() > 0) {
                lag = true;
                break;
            }
            if (perm.getChildCount() > 0) {
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
    public int add(Permission record) throws Exception {
        //添加雪花主键id
        record.setId(SnowflakeID.get());
        permissionDao.add(record);
        return 1;
    }

    @Override
    public Permission getByPrimary(String id) throws Exception {
        Permission perm = permissionDao.getByPrimary(id);
        return perm;
    }

    @Override
    public int edit(Permission record) throws Exception {
        int edit = permissionDao.edit(record);
        return edit;
    }

    public int updateByPrimaryKey(Permission record) throws Exception {
        //默认设置不跳转
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
     * @return
     */
    public int updateVisible(Permission record) throws Exception {
        Permission old = permissionDao.getByPrimary(record.getId());
        old.setVisible(record.getVisible());
        int edit = permissionDao.edit(old);
        return edit;
    }

    @Override
    public List<Permission> getList(Where[] wheres, KeyValue[] orders) throws Exception {
        Permission[] perms = getPermission(null, null);
        return Arrays.asList(perms);
    }

    @Override
    public long getCount(Where[] wheres) throws Exception {
        int count = permissionDao.getCount(wheres);
        return count;
    }


    /**
     * 检查权限名字
     *
     * @return
     */
    public int checkNameUnique(Permission permission) throws Exception {
        Where[] wheres = Where.getEqualsWhere("name", permission.getName());
        Permission[] perms = getPermission(wheres, null);
        return perms.length;
    }

    /**
     * 检查权限URL
     *
     * @return
     */
    public int checkURLUnique(Permission permission) throws Exception {
        Where[] wheres = Where.getEqualsWhere("url", permission.getName());
        Permission[] perms = getPermission(wheres, null);
        return perms.length;
    }

    /**
     * 检查权限perms字段
     *
     * @return
     */
    public int checkPermsUnique(Permission permission) throws Exception {
        Where[] wheres = Where.getEqualsWhere("perms", permission.getName());
        Permission[] perms = getPermission(wheres, null);
        return perms.length;
    }


    /**
     * 根据用户id查询菜单栏
     *
     * @return
     */
    public List<SysMenu> getSysMenus(String userID) throws Exception {
        List<Permission> menuList = getAll(userID);
        List<SysMenu> treeList = getSysMenus(menuList, "0");
        return treeList;
    }

    /**
     * 递归查询权限
     *
     * @param treeList
     * @param parentId
     * @return
     */
    private List<SysMenu> getSysMenus(List<Permission> treeList, String parentId) {
        List<SysMenu> SysMenus = new ArrayList<>();
        if (StringUtils.isNotNull(parentId) && treeList != null && treeList.size() > 0) {
            List<SysMenu> childList = null;
            for (Permission perm : treeList) {
                String pid = perm.getPid();
                if (pid == null) {
                    continue;
                }
                if (pid.equals(parentId)) {
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

    public Permission[] queryRoleId(String roleId) throws Exception {
        //角色权限
        String queryRoleIdSQL = "select p.* from permission p " +
                "left join rolePermission pr on p.id=pr.permissionID " +
                "where pr.roleID=?";
        IDatabase db = daoManager.getDatabaseAccess();
        DaoListReader<Permission> reader = new DaoListReader<>(Permission.class,
                MethodManager.getMethodData(Permission.class)
                        .getMethodsSetMap());
        db.executeReader(reader, queryRoleIdSQL, new Object[]{roleId}, null);
        Permission[] rolePowers = reader.getDatas();
        return rolePowers;
    }

    /**
     * 根据角色id查询所有权限，权限有会有标识表示
     *
     * @return
     */
    public List<SysPower> getRolePower(String roleId) throws Exception {
        //所有权限
        List<Permission> allPowers = getAll(null);
        //角色权限
        Permission[] rolePowers = queryRoleId(roleId);

        List<SysPower> sysPowerList = new ArrayList<>();
    
        for (Permission allPower : allPowers) {
            SysPower sysPower = new SysPower();
            sysPower.setPowerId(allPower.getId());
            sysPower.setPowerName(allPower.getName());
            sysPower.setPowerType(allPower.getType());
            sysPower.setPowerCode(allPower.getPerms());
            sysPower.setPowerUrl(allPower.getUrl());
            sysPower.setOpenType(allPower.getIsBlank());
            sysPower.setParentId(allPower.getPid());
            sysPower.setIcon(allPower.getIcon());
            sysPower.setSort(allPower.getOrderNum());
            sysPower.setEnable(allPower.getVisible());
            sysPower.setCheckArr("0");
            for (Permission rolePower : rolePowers) {
                if(rolePower.getId().equals(allPower.getId())){
                    sysPower.setCheckArr("1");
                    break;
                }
            }
            sysPowerList.add(sysPower);
        }
        return sysPowerList;

    }

    /**
     * 根据用户id获取用户角色如果用户为null 获取所有权限
     *
     * @return
     */
    public List<Permission> getAll(String userId) throws Exception {

        if (StringUtils.isEmpty(userId)) {
            Where[] wheres = Where.getEqualsWhere("visible", 0);
            KeyValue[] orders = new KeyValue[]{new KeyValue("orderNum", "asc")};
            Permission[] perms = getPermission(wheres, orders);
            List<Permission> permList = new ArrayList<>();
            for (Permission perm : perms) {
                permList.add(perm);
            }
            return permList;
        }

        String findByAdminUserIdSQL = "select distinct p.*,(select count(1) from permission where pid=p.id) childCount " +
                "from rolePermission spr,userRole sru,permission p " +
                "where spr.roleID = sru.roleID AND spr.permissionID = p.id and visible=0  AND sru.userID=? " +
                "GROUP BY p.id " +
                "ORDER BY orderNum  is null  ASC,orderNum  ASC";
        IDatabase db = daoManager.getDatabaseAccess();
        DaoListReader<Permission> reader = new DaoListReader<>(Permission.class, MethodManager.getMethodData(Permission.class)
                .getMethodsSetMap());
        db.executeReader(reader, findByAdminUserIdSQL, new Object[]{userId}, null);
        Permission[] rolePowers = reader.getDatas();
        for (Permission rolePower : rolePowers) {
            rolePower.setChildCount(getPermissionChildCount(rolePower));
        }
        return Arrays.asList(rolePowers);
    }

    private Permission[] getPermission(Where[] wheres, KeyValue[] orders) throws Exception {
        Permission[] perms = permissionDao.getList(wheres, orders);
        for (Permission perm : perms) {
            perm.setChildCount(getPermissionChildCount(perm));
        }
        return perms;
    }

    private int getPermissionChildCount(Permission perm) throws Exception {
        Where[] countWheres = Where.getEqualsWhere("pid", perm.getId());
        int childCount = permissionDao.getCount(countWheres);
        return childCount;
    }

}
