package com.fc.v2.model.auto;

import java.io.Serializable;

import com.pikachu.common.annotations.IColumn;
import com.pikachu.common.annotations.ITable;
import io.swagger.annotations.ApiModelProperty;

@ITable(doc = "用户表", cache = false, history = false)
public class User implements Serializable {
    
    private static final long serialVersionUId = 1L;
    /**
     * 主键
     **/
    @IColumn(doc = "主键", pk = true)
    @ApiModelProperty(value = "主键")
    private String Id;
    /**
     * 用户账号
     **/
    @ApiModelProperty(value = "用户账号")
    private String username;
    /**
     * 用户密码
     **/
    @ApiModelProperty(value = "用户密码")
    private String password;
    
    /**
     * 部门Id
     **/
    @ApiModelProperty(value = "部门Id")
    private String deptId;

    /**
     * 部门名称
     **/
    @IColumn(doc = "部门名称",ignore = true)
    private String deptName;

    public String getId() {
        return Id;
    }
    
    public void setId(String Id) {
        this.Id = Id == null ? null : Id.trim();
    }
    
    public String getUsername() {
        return username;
    }
    
    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }
    
    public String getPassword() {
        return password;
    }
    
    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }
    
    public String getDeptId() {
        return deptId;
    }
    
    public void setDeptId(String deptId) {
        this.deptId = deptId;
    }

    public String getDeptName() {
        return deptName;
    }
    
    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

}