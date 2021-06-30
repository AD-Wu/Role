package com.fc.v2.model.auto;

import java.io.Serializable;

import com.pikachu.common.annotations.IColumn;
import com.pikachu.common.annotations.ITable;
import io.swagger.annotations.ApiModelProperty;

@ITable(doc = "用户表", cache = true, history = true, table = "t_sys_user")
public class TsysUser implements Serializable {
    
    private static final long serialVersionUID = 1L;
    /**
     * 主键
     **/
    @ApiModelProperty(value = "主键")
    @IColumn(doc = "主键", pk = true)
    private String id;
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
     * 昵称
     **/
    @ApiModelProperty(value = "昵称")
    private String nickname;
    /**
     * 部门id
     **/
    @ApiModelProperty(value = "部门id")
    private Integer depID;
    /**
     * 岗位id
     **/
    @ApiModelProperty(value = "岗位id")
    private String posID;
    /**
     * 部门名称
     **/
    private String depName;
    /**
     * 岗位名称
     **/
    private String posName;
    
    public TsysUser(String id, String username, String password, String nickname, Integer depID, String posID) {
        super();
        this.id = id;
        this.username = username;
        this.password = password;
        this.nickname = nickname;
        this.depID = depID;
        this.posID = posID;
    }
    
    public TsysUser() {
        super();
    }
    
    public String getID() {
        return id;
    }
    
    public void setID(String id) {
        this.id = id == null ? null : id.trim();
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
    
    public String getNickname() {
        return nickname;
    }
    
    public void setNickname(String nickname) {
        this.nickname = nickname == null ? null : nickname.trim();
    }
    
    public Integer getDepID() {
        return depID;
    }
    
    public void setDepID(Integer depID) {
        this.depID = depID;
    }
    
    public String getPosID() {
        return posID;
    }
    
    public void setPosID(String posID) {
        this.posID = posID;
    }
    
    public String getDepName() {
        return depName;
    }
    
    public void setDepName(String depName) {
        this.depName = depName;
    }
    
    public String getPosName() {
        return posName;
    }
    
    public void setPosName(String posName) {
        this.posName = posName;
    }
    
}