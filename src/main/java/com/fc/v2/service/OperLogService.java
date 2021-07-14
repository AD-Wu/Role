package com.fc.v2.service;

import com.fc.v2.common.base.IService;
import com.fc.v2.model.auto.OperLog;
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
public class OperLogService implements IService<OperLog> {
    
   
    @Autowired
    private DaoManager daoManager;
    private IDao<OperLog> dao;
    
    @PostConstruct
    private void init() {
        this.dao = daoManager.getDao(OperLog.class);
    }
    
    /**
     * 分页查询
     *
     * @return PageInfo<TsysOperLog>
     */
    public PageInfo<OperLog> list(Tablepar tablepar, String searchText) throws Exception {
        KeyValue[] orders = new KeyValue[]{new KeyValue("id", "desc")};
        Where[] wheres = null;
        if (searchText != null && !"".equals(searchText)) {
            wheres = new Where[]{new Where("title", "like", searchText)};
        }
        OperLog[] logs = dao.getList(wheres, orders);
        PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
        return new PageInfo<>(Arrays.asList(logs));
    }
    
    /**
     * 获取最新10条日志
     *
     * @return List<TsysOperLog>
     */
    public List<OperLog> getNEW() throws Exception {
        KeyValue[] orders = new KeyValue[]{new KeyValue("id", "desc")};
        OperLog[] logs = dao.getPage(1, 10, null, orders);
        return Arrays.asList(logs);
        
    }
    
    @Override
    public int delete(String ids) throws Exception {
        String[] idArr = ids.split(",");
        
        int delete = dao.delete(Where.getInWhere("id", idArr));
        return delete;
    }
    
    @Override
    public OperLog getByPrimary(String id) throws Exception {
        return dao.getByPrimary(id);
    }
    
    @Override
    public int edit(OperLog record) throws Exception {
        return dao.edit(record);
    }

    @Override
    public List<OperLog> getList(Where[] wheres, KeyValue[] orders) throws Exception {
        OperLog[] logs = dao.getList(null, null);
        return Arrays.asList(logs);
    }
    
    @Override
    public long getCount(Where[] wheres) throws Exception {
        return dao.getCount(wheres);
    }

    @Override
    public int add(OperLog record) throws Exception {
        record.setId(SnowflakeIdWorker.getUUID());
        OperLog add = dao.add(record);
        return 1;
    }
    
}
