package com.fc.v2.model.auto;

import com.pikachu.common.annotations.IColumn;
import com.pikachu.common.annotations.ITable;

import java.io.Serializable;

@ITable(doc = "角色表", cache = false, history = false)
public class Role implements Serializable {
    
    private static final long serialVersionUID = 1L;
    
    @IColumn(doc = "主键", pk = true)
    private String id;
    private String parentId;
    private String name;
    
    
    public Role() {
    
    }
    
    public String getId() {
        return id;
    }
    
    public void setID(String id) {
        this.id = id == null ? null : id.trim();
    }
    
    public String getParentId() {
        return parentId;
    }
    
    public void setParentId(String parentId) {
        this.parentId = parentId;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }
    
    public Role(String id, String name) {
        this.id = id;
        this.name = name;
    }
   
    
}