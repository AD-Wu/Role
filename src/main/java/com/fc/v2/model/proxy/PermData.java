package com.fc.v2.model.proxy;

import com.fc.v2.model.enums.PermissionType;

/**
 * @Desc TODO
 * @Date 2021/7/29 23:18
 * @Author AD
 */
public class PermData {
    
    private String id;
    private String name;
    private String icon;
    private PermissionType type;
    private String key;
    private boolean enable;
    private String url;
    private int sort;
    
    private PermData[] children;
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public String getIcon() {
        return icon;
    }
    
    public void setIcon(String icon) {
        this.icon = icon;
    }
    
    public PermissionType getType() {
        return type;
    }
    
    public void setType(PermissionType type) {
        this.type = type;
    }
    
    public String getKey() {
        return key;
    }
    
    public void setKey(String key) {
        this.key = key;
    }
    
    public boolean isEnable() {
        return enable;
    }
    
    public void setEnable(boolean enable) {
        this.enable = enable;
    }
    
    public String getUrl() {
        return url;
    }
    
    public void setUrl(String url) {
        this.url = url;
    }
    
    public int getSort() {
        return sort;
    }
    
    public void setSort(int sort) {
        this.sort = sort;
    }
    
    public String getId() {
        return id;
    }
    
    public void setId(String id) {
        this.id = id;
    }
    
    public PermData[] getChildren() {
        return children;
    }
    
    public void setChildren(PermData[] children) {
        this.children = children;
    }
    
}
