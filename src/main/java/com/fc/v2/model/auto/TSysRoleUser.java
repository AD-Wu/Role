package com.fc.v2.model.auto;

import com.pikachu.common.annotations.IColumn;
import com.pikachu.common.annotations.ITable;

import java.io.Serializable;

@ITable(doc = "角色用户表", cache = false, history = false, table = "t_sys_role_user")
public class TSysRoleUser implements Serializable {
    private static final long serialVersionUID = 1L;
    @IColumn(doc = "主键", pk = true)
    private String id;
    private String sysUserId;
    private String sysRoleId;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getSysUserId() {
        return sysUserId;
    }

    public void setSysUserId(String sysUserId) {
        this.sysUserId = sysUserId == null ? null : sysUserId.trim();
    }

    public String getSysRoleId() {
        return sysRoleId;
    }

    public void setSysRoleId(String sysRoleId) {
        this.sysRoleId = sysRoleId == null ? null : sysRoleId.trim();
    }

    public TSysRoleUser() {
        super();
    }

    public TSysRoleUser(String id, String sysUserId, String sysRoleId) {
        super();
        this.id = id;
        this.sysUserId = sysUserId;
        this.sysRoleId = sysRoleId;
    }

}