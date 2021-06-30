package com.fc.v2.text;

import com.pikachu.common.annotations.IColumn;
import com.pikachu.common.annotations.ITable;

import java.io.Serializable;
import java.util.StringJoiner;

/**
 * @Desc
 * @Date 2021/5/29 13:39
 * @Author AD
 */
@ITable(doc = "多啦A梦", cache = true)
public class Doraemon implements Serializable {
    
    @IColumn(doc = "主键", pk = true)
    private String id;
    private String name;
    
    public String getId() {
        return id;
    }
    
    public void setId(String id) {
        this.id = id;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    @Override
    public String toString() {
        return new StringJoiner(", ", Pikachu.class.getSimpleName() + "[", "]")
                .add("id='" + id + "'")
                .add("name='" + name + "'")
                .toString();
    }
    
}
