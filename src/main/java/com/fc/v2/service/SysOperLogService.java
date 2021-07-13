package com.fc.v2.service;

import com.fc.v2.common.base.IService;
import com.fc.v2.model.auto.TsysOperLog;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.util.SnowflakeIdWorker;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pikachu.common.collection.KeyValue;
import com.pikachu.common.collection.Where;
import com.pikachu.framework.database.DaoManager;
import com.pikachu.framework.database.IDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.util.Arrays;
import java.util.List;

@Service
public class SysOperLogService implements IService<TsysOperLog> {
    
    //文件mapper
    // @Autowired
    // private TsysOperLogMapper tsysOperLogMapper;
    @Autowired
    private DaoManager daoManager;
    private IDao<TsysOperLog> dao;
    
    @PostConstruct
    private void init() {
        this.dao = daoManager.getDao(TsysOperLog.class);
    }
    
    /**
     * 分页查询
     *
     * @return PageInfo<TsysOperLog>
     */
    public PageInfo<TsysOperLog> list(Tablepar tablepar, String searchText) throws Exception {
//        TsysOperLogExample testExample = new TsysOperLogExample();
        // testExample.setOrderByClause("id+0 DESC");
        // if (searchText != null && !"".equals(searchText)) {
        //     testExample.createCriteria().andTitleLike("%" + searchText + "%");
        // }
        // List<TsysOperLog> list = tsysOperLogMapper.selectByExample(testExample);
        //
        // PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
        // return new PageInfo<>(list);
        KeyValue[] orders = new KeyValue[]{new KeyValue("id", "desc")};
        Where[] wheres = null;
        if (searchText != null && !"".equals(searchText)) {
            wheres = new Where[]{new Where("title", "like", searchText)};
        }
        TsysOperLog[] logs = dao.getList(wheres, orders);
        PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
        return new PageInfo<>(Arrays.asList(logs));
    }
    
    /**
     * 获取最新10条日志
     *
     * @return List<TsysOperLog>
     */
    public List<TsysOperLog> getNEW() throws Exception {
        // TsysOperLogExample testExample = new TsysOperLogExample();
        // testExample.setOrderByClause("id DESC");
        // PageHelper.startPage(1, 10);
        // List<TsysOperLog> tsysOperLogs = tsysOperLogMapper.selectByExample(testExample);
        
        KeyValue[] orders = new KeyValue[]{new KeyValue("id", "desc")};
        TsysOperLog[] logs = dao.getPage(1, 10, null, orders);
        return Arrays.asList(logs);
        
    }
    
    @Override
    public int delete(String ids) throws Exception {
        // List<String> lista = ConvertUtil.toListStrArray(ids);
        // TsysOperLogExample example = new TsysOperLogExample();
        // example.createCriteria().andIdIn(lista);
        // return tsysOperLogMapper.deleteByExample(example);
        String[] idArr = ids.split(",");
        
        int delete = dao.delete(Where.getInWhere("id", idArr));
        return delete;
    }
    
    @Override
    public TsysOperLog getByPrimary(String id) throws Exception {
        
        // return tsysOperLogMapper.selectByPrimaryKey(id);
        return dao.getByPrimary(id);
    }
    
    @Override
    public int edit(TsysOperLog record) throws Exception {
        // return tsysOperLogMapper.updateByPrimaryKeySelective(record);
        return dao.edit(record);
    }

    @Override
    public List<TsysOperLog> getList(Where[] wheres, KeyValue[] orders) throws Exception {
        // return tsysOperLogMapper.selectByExample(example);
        TsysOperLog[] logs = dao.getList(null, null);
        return Arrays.asList(logs);
    }
    
    @Override
    public long getCount(Where[] wheres) throws Exception {
        // return tsysOperLogMapper.countByExample(example);
        return dao.getCount(wheres);
    }

    @Override
    public int add(TsysOperLog record) throws Exception {
        record.setId(SnowflakeIdWorker.getUUID());
        // return tsysOperLogMapper.insertSelective(record);
        TsysOperLog add = dao.add(record);
        return 1;
    }
    
}
