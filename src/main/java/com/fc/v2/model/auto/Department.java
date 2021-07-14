package com.fc.v2.model.auto;

import java.io.Serializable;

import com.pikachu.common.annotations.IColumn;
import com.pikachu.common.annotations.ITable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.lang.Integer;

/**
 * 部门表 SysDepartment
 *
 * @author fuce_自动生成
 * @email 115889198@qq.com
 * @date 2020-04-17 13:12:58
 */
@ApiModel(value = "SysDepartment", description = "部门表")
@ITable(doc = "部门表", table = "t_sys_department", cache = false, history = false)
public class Department implements Serializable {

    private static final long serialVersionUID = 1L;
    /**
     * id
     */
    @ApiModelProperty(value = "id")
    @IColumn(doc = "主键", pk = true)
    private String id;
    /**
     * 父id
     */
    @ApiModelProperty(value = "父id")
    private String parentId;
    /**
     * 部门名称
     */
    @ApiModelProperty(value = "部门名称")
    private String deptName;
    // /**
    //  * 状态
    //  */
    // @ApiModelProperty(value = "状态")
    // private int status;

    @IColumn(doc = "子菜单个数",ignore = true)
    private int childCount;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    // public int getStatus() {
    //     return status;
    // }
    //
    // public void setStatus(int status) {
    //     this.status = status;
    // }

    public int getChildCount() {
        return childCount;
    }

    public void setChildCount(int childCount) {
        this.childCount = childCount;
    }

}