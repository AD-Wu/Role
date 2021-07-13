package com.fc.v2.model.auto;

import java.io.Serializable;

import com.pikachu.common.annotations.IColumn;
import com.pikachu.common.annotations.ITable;
import io.swagger.annotations.ApiModelProperty;

@ITable(doc = "用户表", cache = false, history = false, table = "t_sys_user")
public class TsysUser implements Serializable {
    
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
     * 昵称
     **/
    @ApiModelProperty(value = "昵称")
    private String nickname;
    /**
     * 部门Id
     **/
    @ApiModelProperty(value = "部门Id")
    private Integer depId;
    /**
     * 岗位Id
     **/
    @ApiModelProperty(value = "岗位Id")
    private String posId;
    /**
     * 部门名称
     **/
    private String depName;
    /**
     * 岗位名称
     **/
    private String posName;
    
    public TsysUser(String Id, String username, String password, String nickname, Integer depId, String posId) {
        super();
        this.Id = Id;
        this.username = username;
        this.password = password;
        this.nickname = nickname;
        this.depId = depId;
        this.posId = posId;
    }
    
    public TsysUser() {
        super();
    }
    
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
    
    public String getNickname() {
        return nickname;
    }
    
    public void setNickname(String nickname) {
        this.nickname = nickname == null ? null : nickname.trim();
    }
    
    public Integer getDepId() {
        return depId;
    }
    
    public void setDepId(Integer depId) {
        this.depId = depId;
    }
    
    public String getPosId() {
        return posId;
    }
    
    public void setPosId(String posId) {
        this.posId = posId;
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