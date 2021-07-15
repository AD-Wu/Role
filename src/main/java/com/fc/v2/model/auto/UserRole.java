package com.fc.v2.model.auto;

import com.pikachu.common.annotations.IColumn;
import com.pikachu.common.annotations.ITable;

import java.io.Serializable;

@ITable(doc = "角色用户表", cache = false, history = false)
public class UserRole implements Serializable {
    private static final long serialVersionUID = 1L;
    @IColumn(doc = "主键", pk = true)
    private String id;
    private String userId;
    private String roleId;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId == null ? null : roleId.trim();
    }

    public UserRole() {
        super();
    }

    public UserRole(String id, String userId, String roleId) {
        super();
        this.id = id;
        this.userId = userId;
        this.roleId = roleId;
    }

}