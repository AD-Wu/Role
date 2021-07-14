package com.fc.v2.model.auto;

import com.pikachu.common.annotations.IColumn;
import com.pikachu.common.annotations.ITable;

import java.io.Serializable;

@ITable(doc = "角色权限表", cache = false, history = false, table = "t_sys_permission_role")
public class RolePermission implements Serializable {
    
    private static final long serialVersionUID = 1L;
    @IColumn(doc = "主键", pk = true)
    private String id;
    private String roleId;
    private String permissionId;
    
    public String getId() {
        return id;
    }
    
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }
    
    public String getRoleId() {
        return roleId;
    }
    
    public void setRoleId(String roleId) {
        this.roleId = roleId == null ? null : roleId.trim();
    }
    
    public String getPermissionId() {
        return permissionId;
    }
    
    public void setPermissionId(String permissionId) {
        this.permissionId = permissionId == null ? null : permissionId.trim();
    }

}