package com.fc.v2.model.auto;

import com.pikachu.common.annotations.IColumn;
import com.pikachu.common.annotations.ITable;

import java.io.Serializable;
import java.util.StringJoiner;

@ITable(doc = "权限表", cache = true, history = true, table = "t_sys_permission")
public class TsysPermission implements Serializable {
    private static final long serialVersionUID = 1L;
    @IColumn(doc = "主键", pk = true)
    private String id;
    private String name;
    private String descripion;
    private String url;
    private int isBlank;
    private String pid;
    private String perms;
    private int type;
    private String icon;
    private int orderNum;
    private int visible;
    private int childCount;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getDescripion() {
        return descripion;
    }

    public void setDescripion(String descripion) {
        this.descripion = descripion == null ? null : descripion.trim();
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public int getIsBlank() {
        return isBlank;
    }

    public void setIsBlank(int isBlank) {
        this.isBlank = isBlank;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid == null ? null : pid.trim();
    }

    public String getPerms() {
        return perms;
    }

    public void setPerms(String perms) {
        this.perms = perms == null ? null : perms.trim();
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon == null ? null : icon.trim();
    }

    public int getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(int orderNum) {
        this.orderNum = orderNum;
    }

    public int getChildCount() {
        return childCount;
    }

    public void setChildCount(int childCount) {
        this.childCount = childCount;
    }

    public int getVisible() {
        return visible;
    }

    public void setVisible(int visible) {
        this.visible = visible;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", TsysPermission.class.getSimpleName() + "[", "]")
                .add("id='" + id + "'")
                .add("name='" + name + "'")
                .add("descripion='" + descripion + "'")
                .add("url='" + url + "'")
                .add("isBlank=" + isBlank)
                .add("pid='" + pid + "'")
                .add("perms='" + perms + "'")
                .add("type=" + type)
                .add("icon='" + icon + "'")
                .add("orderNum=" + orderNum)
                .add("visible=" + visible)
                .add("childCount=" + childCount)
                .toString();
    }

}