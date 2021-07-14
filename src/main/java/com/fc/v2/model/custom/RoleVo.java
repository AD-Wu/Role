package com.fc.v2.model.custom;

import com.fc.v2.model.auto.Role;

/**
 * 角色自定义数据
 * @author fuce 
 * @date: 2018年9月8日 上午12:18:59
 */
public class RoleVo extends Role {
	private static final long serialVersionUID = 1L;
	
	private boolean ischeck;//判断是否有这个权限
	
	public RoleVo() {
		super();
	}
	public boolean isIscheck() {
		return ischeck;
	}
	public void setIscheck(boolean ischeck) {
		this.ischeck = ischeck;
	}
	
	
	public RoleVo(String id, String name,Boolean ischeck) {
		super(id, name);
		this.ischeck=ischeck;
	}
	
}
