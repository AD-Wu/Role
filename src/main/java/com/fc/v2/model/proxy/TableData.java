package com.fc.v2.model.proxy;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.StringJoiner;

/**
 * @Desc TODO
 * @Date 2021/7/20 22:15
 * @Author AD
 */
public class TableData{
    
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime date;
    private String name;
    private String province;
    private String city;
    private String address;
    private String zip;
    
    public TableData(int i) {
        this.date = LocalDateTime.now();
        this.name = "名字" + i;
        this.province = "省份" + i;
        this.city = "城市" + i;
        this.address = "地址" + i;
        this.zip = "邮编" + i;
    }
    
    public LocalDateTime getDate() {
        return date;
    }
    
    public void setDate(LocalDateTime date) {
        this.date = date;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public String getProvince() {
        return province;
    }
    
    public void setProvince(String province) {
        this.province = province;
    }
    
    public String getCity() {
        return city;
    }
    
    public void setCity(String city) {
        this.city = city;
    }
    
    public String getAddress() {
        return address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }
    
    public String getZip() {
        return zip;
    }
    
    public void setZip(String zip) {
        this.zip = zip;
    }
    
    @Override
    public String toString() {
        return new StringJoiner(", ", TableData.class.getSimpleName() + "[", "]")
                .add("date=" + date)
                .add("name='" + name + "'")
                .add("province='" + province + "'")
                .add("city='" + city + "'")
                .add("address='" + address + "'")
                .add("zip='" + zip + "'")
                .toString();
    }
    
}
