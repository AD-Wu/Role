package com.fc.v2.common.data;

import java.io.Serializable;

/**
 * @Desc TODO
 * @Date 2021/7/21 22:16
 * @Author AD
 */
public class PageInfo<T> implements Serializable {
    
    private int page;
    private int pageSize;
    private long total;
    private T[] data;
    
    public int getPage() {
        return page < 1 ? 1 : page;
    }
    
    public void setPage(int page) {
        this.page = page < 1 ? 1 : page;
    }
    
    public int getPageSize() {
        return  pageSize < 10 ? 10 : pageSize;
    }
    
    public void setPageSize(int pageSize) {
        this.pageSize = pageSize < 10 ? 10 : pageSize;
    }
    
    public long getTotal() {
        return total;
    }
    
    public void setTotal(long total) {
        this.total = total;
    }
    
    public T[] getData() {
        return data;
    }
    
    public void setData(T[] data) {
        this.data = data;
    }
    
}
