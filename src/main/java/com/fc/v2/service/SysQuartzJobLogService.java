package com.fc.v2.service;

import com.fc.v2.common.base.IService;
import com.fc.v2.common.support.ConvertUtil;
import com.fc.v2.mapper.auto.SysQuartzJobLogMapper;
import com.fc.v2.model.auto.SysPosition;
import com.fc.v2.model.auto.SysQuartzJobLog;
import com.fc.v2.model.auto.SysQuartzJobLogExample;
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

/**
 * 定时任务调度日志表 SysQuartzJobLogService
 *
 * @author fuce_自动生成
 * @Title: SysQuartzJobLogService.java
 * @Package com.fc.v2.service
 * @email 115889198@qq.com
 * @date 2019-09-13 00:03:42
 **/
@Service
public class SysQuartzJobLogService implements IService<SysQuartzJobLog, SysQuartzJobLogExample> {
    
    // @Autowired
    // private SysQuartzJobLogMapper sysQuartzJobLogMapper;
    @Autowired
    private DaoManager daoManager;
    private IDao<SysQuartzJobLog> dao;
    
    @PostConstruct
    private void init() {
        this.dao = daoManager.getDao(SysQuartzJobLog.class);
    }
    
    /**
     * 分页查询
     *
     * @return
     */
    public PageInfo<SysQuartzJobLog> list(Tablepar tablepar, String name) throws Exception {
        // SysQuartzJobLogExample testExample = new SysQuartzJobLogExample();
        // testExample.setOrderByClause("id DESC");
        // if (name != null && !"".equals(name)) {
        //     testExample.createCriteria().andJobNameLike("%" + name + "%");
        // }
        // List<SysQuartzJobLog> list = sysQuartzJobLogMapper.selectByExample(testExample);
        // PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
        // PageInfo<SysQuartzJobLog> pageInfo = new PageInfo<>(list);
        // return pageInfo;
    
        Where[] wheres = null;
        if (name != null && !"".equals(name)) {
            wheres = Where.getLikeWhere("jobName",name);
        }
        KeyValue[] orders = new KeyValue[]{new KeyValue("id","desc")};
        SysQuartzJobLog[] logs = dao.getList(wheres, orders);
        PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
        PageInfo<SysQuartzJobLog> pageInfo = new PageInfo<>(Arrays.asList(logs));
        return pageInfo;
    }
    
    @Override
    public int deleteByPrimaryKey(String ids) throws Exception {
        // List<String> lista = ConvertUtil.toListStrArray(ids);
        // SysQuartzJobLogExample example = new SysQuartzJobLogExample();
        // example.createCriteria().andIdIn(lista);
        // return sysQuartzJobLogMapper.deleteByExample(example);
        String[] idArr = ids.split(",");
        Where[] wheres = Where.getInWhere("id", idArr);
        int delete = dao.delete(wheres);
        return delete;
    }
    
    @Override
    public SysQuartzJobLog selectByPrimaryKey(String id) throws Exception {
        // return sysQuartzJobLogMapper.selectByPrimaryKey(id);
        SysQuartzJobLog log = dao.getByPrimary(id);
        return log;
    }
    
    @Override
    public int updateByPrimaryKeySelective(SysQuartzJobLog record) throws Exception {
        // return sysQuartzJobLogMapper.updateByPrimaryKeySelective(record);
        int edit = dao.edit(record);
        return edit;
    }
    
    /**
     * 添加
     */
    @Override
    public int insertSelective(SysQuartzJobLog record) throws Exception {
        //添加雪花主键id
        record.setId(SnowflakeIdWorker.getUUID());
        // return sysQuartzJobLogMapper.insertSelective(record);
        SysQuartzJobLog add = dao.add(record);
        return 1;
    }
    
    @Override
    public int updateByExampleSelective(SysQuartzJobLog record, SysQuartzJobLogExample example) throws Exception {
        // return sysQuartzJobLogMapper.updateByExampleSelective(record, example);
        int edit = dao.edit(record);
        return edit;
    }
    
    @Override
    public int updateByExample(SysQuartzJobLog record, SysQuartzJobLogExample example) throws Exception {
        // return sysQuartzJobLogMapper.updateByExample(record, example);
        int edit = dao.edit(record);
        return edit;
    }
    
    @Override
    public List<SysQuartzJobLog> selectByExample(SysQuartzJobLogExample example) throws Exception {
        // return sysQuartzJobLogMapper.selectByExample(example);
        SysQuartzJobLog[] logs = dao.getList(null, null);
        return Arrays.asList(logs);
    }
    
    @Override
    public long countByExample(SysQuartzJobLogExample example) throws Exception {
        // return sysQuartzJobLogMapper.countByExample(example);
        return dao.getCount(null);
    }
    
    // @Override
    // public int deleteByExample(SysQuartzJobLogExample example) throws Exception {
    //
    // 	return sysQuartzJobLogMapper.deleteByExample(example);
    // }
    
    /**
     * 检查name
     *
     * @param sysQuartzJobLog
     *
     * @return
     */
    public int checkNameUnique(SysQuartzJobLog sysQuartzJobLog) throws Exception {
        // SysQuartzJobLogExample example = new SysQuartzJobLogExample();
        // example.createCriteria().andJobNameEqualTo(sysQuartzJobLog.getJobName());
        // List<SysQuartzJobLog> list = sysQuartzJobLogMapper.selectByExample(example);
        // return list.size();
        Where[] wheres = Where.getEqualsWhere("jobName", sysQuartzJobLog.getJobName());
        SysQuartzJobLog[] logs = dao.getList(wheres, null);
        return logs.length;
    }
    
}
