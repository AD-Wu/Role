package com.fc.v2.common.base;

import java.util.List;

import com.pikachu.common.collection.KeyValue;
import com.pikachu.common.collection.Where;
import org.apache.ibatis.annotations.Param;

/**
 * 抽象类BaseService
 *
 * @author fuce
 * @ClassName: BaseService
 * @Description: Service实现这个
 * @date 2018年6月3日
 */
public interface IService<T> {


    int add(T record) throws Exception;

    int delete(String id) throws Exception;

    int edit(T record) throws Exception;

    T getByPrimary(String id) throws Exception;

    List<T> getList(Where[] wheres, KeyValue[] orders) throws Exception;

    long getCount(Where[] wheres) throws Exception;

}
