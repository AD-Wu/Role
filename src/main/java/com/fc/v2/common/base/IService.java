package com.fc.v2.common.base;

import java.util.List;

import org.apache.ibatis.annotations.Param;

/**
 * 抽象类BaseService
 *
 * @author fuce
 * @ClassName: BaseService
 * @Description: Service实现这个
 * @date 2018年6月3日
 */
public interface IService<T, T2> {
    
    int deleteByPrimaryKey(String id)throws Exception;
    
    int insertSelective(T record)throws Exception;
    
    T selectByPrimaryKey(String id)throws Exception;
    
    int updateByPrimaryKeySelective(T record)throws Exception;
    
    int updateByExampleSelective(@Param("record") T record, @Param("example") T2 example)throws Exception;
    
    int updateByExample(@Param("record") T record, @Param("example") T2 example)throws Exception;
    
    List<T> selectByExample(T2 example)throws Exception;
    
    long countByExample(T2 example)throws Exception;
    
    // int deleteByExample(T2 example)throws Exception;
    
}
