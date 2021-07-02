package com.fc.v2.service;

import com.fc.v2.common.base.IService;
import com.fc.v2.common.quartz.QuartzSchedulerUtil;
import com.fc.v2.common.quartz.ScheduleConstants;
import com.fc.v2.common.support.ConvertUtil;
import com.fc.v2.mapper.auto.SysQuartzJobMapper;
import com.fc.v2.model.auto.SysNotice;
import com.fc.v2.model.auto.SysNoticeUser;
import com.fc.v2.model.auto.SysQuartzJob;
import com.fc.v2.model.auto.SysQuartzJobExample;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.util.SnowflakeIdWorker;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pikachu.common.collection.KeyValue;
import com.pikachu.common.collection.Where;
import com.pikachu.framework.database.DaoManager;
import com.pikachu.framework.database.IDao;
import org.quartz.SchedulerException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.PostConstruct;
import java.util.Arrays;
import java.util.List;

/**
 * 定时任务调度表 SysQuartzJobService
 *
 * @author fuce_自动生成
 * @Title: SysQuartzJobService.java
 * @Package com.fc.v2.service
 * @email 115889198@qq.com
 * @date 2019-09-13 00:03:35
 **/
@Service
public class SysQuartzJobService implements IService<SysQuartzJob, SysQuartzJobExample> {

//    @Autowired
//    private SysQuartzJobMapper sysQuartzJobMapper;

    @Autowired
    private QuartzSchedulerUtil scheduler;

    @Autowired
    private DaoManager daoManager;

    private IDao<SysQuartzJob> dao;

    @PostConstruct
    private void init() {
        this.dao = daoManager.getDao(SysQuartzJob.class);
    }

    /**
     * 分页查询
     *
     * @param
     * @param
     * @return
     */
    public PageInfo<SysQuartzJob> list(Tablepar tablepar, String name) throws Exception {
//        SysQuartzJobExample testExample = new SysQuartzJobExample();
//        testExample.setOrderByClause("id ASC");
//        if (name != null && !"".equals(name)) {
//            testExample.createCriteria().andJobNameLike("%" + name + "%");
//        }
//
//        PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
//        List<SysQuartzJob> list = sysQuartzJobMapper.selectByExample(testExample);
//        PageInfo<SysQuartzJob> pageInfo = new PageInfo<>(list);
//        return pageInfo;

        KeyValue[] orders = new KeyValue[]{new KeyValue("id", "asc")};
        Where[] wheres = Where.getLikeWhere("jobName", name);
        SysQuartzJob[] jobs = dao.getList(wheres, orders);
        PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
        PageInfo<SysQuartzJob> pageInfo = new PageInfo<>(Arrays.asList(jobs));
        return pageInfo;

    }

    @Override
    public int deleteByPrimaryKey(String ids) throws Exception {
//        List<String> lista = ConvertUtil.toListStrArray(ids);
//        SysQuartzJobExample example = new SysQuartzJobExample();
//        example.createCriteria().andIdIn(lista);
//        return sysQuartzJobMapper.deleteByExample(example);
        String[] idArr = ids.split(",");
        int delete = dao.delete(Where.getInWhere("id", idArr));
        return delete;
    }


    @Override
    public SysQuartzJob selectByPrimaryKey(String id) throws Exception {
//        return sysQuartzJobMapper.selectByPrimaryKey(id);
        SysQuartzJob job = dao.getByPrimary(id);
        return job;
    }


    @Override
    public int updateByPrimaryKeySelective(SysQuartzJob record) throws Exception {
//        int i = sysQuartzJobMapper.updateByPrimaryKeySelective(record);
//        if (i > 0) {
//            //修改定时器
//            scheduler.modifyJob(record);
//        }
//        return i;
        int edit = dao.edit(record);
        if (edit > 0) {
            // 修改定时器
            scheduler.modifyJob(record);
        }
        return edit;
    }

    /**
     * 添加
     */
    @Override
    public int insertSelective(SysQuartzJob record) throws Exception {
//        //添加雪花主键id
//        record.setId(SnowflakeIdWorker.getUUID());
//        return sysQuartzJobMapper.insertSelective(record);

        //添加雪花主键id
        record.setId(SnowflakeIdWorker.getUUID());
        SysQuartzJob add = dao.add(record);
        return 1;
    }


    @Override
    public int updateByExampleSelective(SysQuartzJob record, SysQuartzJobExample example) throws Exception {
//        return sysQuartzJobMapper.updateByExampleSelective(record, example);
        int edit = dao.edit(record);
        return edit;
    }


    @Override
    public int updateByExample(SysQuartzJob record, SysQuartzJobExample example) throws Exception {
//        return sysQuartzJobMapper.updateByExample(record, example);
        int edit = dao.edit(record);
        return edit;
    }

    @Override
    public List<SysQuartzJob> selectByExample(SysQuartzJobExample example) throws Exception {
//        return sysQuartzJobMapper.selectByExample(example);
        SysQuartzJob[] jobs = dao.getList(null, null);
        return Arrays.asList(jobs);
    }


    @Override
    public long countByExample(SysQuartzJobExample example) throws Exception {
//        return sysQuartzJobMapper.countByExample(example);
        int count = dao.getCount(null);
        return count;
    }


    // @Override
    // public int deleteByExample(SysQuartzJobExample example) throws Exception {
    //
    // 	return sysQuartzJobMapper.deleteByExample(example);
    // }

    /**
     * 检查name
     *
     * @param sysQuartzJob
     * @return
     */
    public int checkNameUnique(SysQuartzJob sysQuartzJob) throws Exception {
//        SysQuartzJobExample example = new SysQuartzJobExample();
//        example.createCriteria().andJobNameEqualTo(sysQuartzJob.getJobName());
//        List<SysQuartzJob> list = sysQuartzJobMapper.selectByExample(example);
//        return list.size();
        Where[] wheres = Where.getEqualsWhere("jobName", sysQuartzJob.getJobName());
        SysQuartzJob[] jobs = dao.getList(wheres, null);
        return jobs.length;
    }


    /**
     * 恢复任务
     *
     * @param job 调度信息
     */
    @Transactional
    public int resumeJob(SysQuartzJob job) throws Exception {
//        job.setStatus(ScheduleConstants.Status.NORMAL.getValue());
//        int rows = sysQuartzJobMapper.updateByPrimaryKeySelective(job);
//        if (rows > 0) {
//            scheduler.resumeJob(job);
//        }
//        return rows;
        job.setStatus(ScheduleConstants.Status.NORMAL.getValue());
        int rows = dao.edit(job);
        if (rows > 0) {
            scheduler.resumeJob(job);
        }
        return rows;
    }


    /**
     * 暂停任务
     *
     * @param job 调度信息
     */
    @Transactional
    public int pauseJob(SysQuartzJob job) throws Exception {
//        job.setStatus(ScheduleConstants.Status.PAUSE.getValue());
//        //job.setUpdateBy(ShiroUtils.getLoginName());
//        int rows = sysQuartzJobMapper.updateByPrimaryKeySelective(job);
//        if (rows > 0) {
//            scheduler.pauseJob(job);
//        }
//        return rows;

        job.setStatus(ScheduleConstants.Status.PAUSE.getValue());
        int rows = dao.edit(job);
        if (rows > 0) {
            scheduler.pauseJob(job);
        }
        return rows;
    }

    /**
     * 任务调度状态修改
     *
     * @param job 调度信息
     */
    @Transactional
    public int changeStatus(SysQuartzJob job) throws Exception {
        int rows = 0;
        Integer status = job.getStatus();
        if (ScheduleConstants.Status.NORMAL.getValue().equals(status)) {
            rows = resumeJob(job);
        } else if (ScheduleConstants.Status.PAUSE.getValue().equals(status)) {
            rows = pauseJob(job);
        }
        return rows;
    }


    /**
     * 立即运行任务
     *
     * @param job 调度信息
     */
    @Transactional
    public void run(SysQuartzJob job) throws SchedulerException {

        scheduler.run(job);

    }


}
