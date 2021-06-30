package com.fc.v2.service;

import com.fc.v2.common.base.IService;
import com.fc.v2.common.support.ConvertUtil;
import com.fc.v2.mapper.auto.SysNoticeUserMapper;
import com.fc.v2.model.auto.SysInterUrl;
import com.fc.v2.model.auto.SysNoticeUser;
import com.fc.v2.model.auto.SysNoticeUserExample;
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
 * 公告_用户外键 SysNoticeUserService
 *
 * @author fuce_自动生成
 * @Title: SysNoticeUserService.java
 * @Package com.fc.v2.service
 * @email 115889198@qq.com
 * @date 2019-09-08 02:12:54
 **/
@Service
public class SysNoticeUserService implements IService<SysNoticeUser, SysNoticeUserExample> {
    
    // @Autowired
    // private SysNoticeUserMapper sysNoticeUserMapper;
    
    @Autowired
    private DaoManager daoManager;
    private IDao<SysNoticeUser> dao;
    
    @PostConstruct
    private void init() {
        this.dao = daoManager.getDao(SysNoticeUser.class);
    }
    /**
     * 分页查询
     *
     * @return
     */
    public PageInfo<SysNoticeUser> list(Tablepar tablepar, String name) throws Exception {
        // SysNoticeUserExample testExample = new SysNoticeUserExample();
        // testExample.setOrderByClause("id ASC");
        // if (name != null && !"".equals(name)) {
        //     testExample.createCriteria().andUserIdLike("%" + name + "%");
        // }
        // PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
        // List<SysNoticeUser> list = sysNoticeUserMapper.selectByExample(testExample);
        // PageInfo<SysNoticeUser> pageInfo = new PageInfo<>(list);
        // return pageInfo;
    
        Where[] ws = null;
        if (name != null && !"".equals(name)) {
            ws = new Where[]{new Where("userID", "like", name)};
        }
        KeyValue[] orders = new KeyValue[]{new KeyValue("id", "asc")};
        SysNoticeUser[] users = dao.getList(ws, orders);
        PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
        PageInfo<SysNoticeUser> pageInfo = new PageInfo<>(Arrays.asList(users));
        return pageInfo;
    }
    
    @Override
    public int deleteByPrimaryKey(String ids) throws Exception {
        // List<String> lista = ConvertUtil.toListStrArray(ids);
        // SysNoticeUserExample example = new SysNoticeUserExample();
        // example.createCriteria().andIdIn(lista);
        // return sysNoticeUserMapper.deleteByExample(example);
        String[] idArr = ids.split(",");
        int delete = dao.delete(new Where[]{new Where("id", "in", idArr)});
        return delete;
    }
    
    @Override
    public SysNoticeUser selectByPrimaryKey(String id) throws Exception {
        
        // return sysNoticeUserMapper.selectByPrimaryKey(id);
        SysNoticeUser user = dao.getByPrimary(id);
        return user;
        
    }
    
    @Override
    public int updateByPrimaryKeySelective(SysNoticeUser record) throws Exception {
        // return sysNoticeUserMapper.updateByPrimaryKeySelective(record);
        return dao.edit(record);
    }
    
    /**
     * 添加
     */
    @Override
    public int insertSelective(SysNoticeUser record) throws Exception {
        // //添加雪花主键id
        // record.setId(SnowflakeIdWorker.getUUID());
        // return sysNoticeUserMapper.insertSelective(record);
        
        record.setId(SnowflakeIdWorker.getUUID());
        SysNoticeUser add = dao.add(record);
        return 1;
    }
    
    @Override
    public int updateByExampleSelective(SysNoticeUser record, SysNoticeUserExample example) throws Exception {
        
        // return sysNoticeUserMapper.updateByExampleSelective(record, example);
        return dao.edit(record);
    }
    
    @Override
    public int updateByExample(SysNoticeUser record, SysNoticeUserExample example) throws Exception {
        
        // return sysNoticeUserMapper.updateByExample(record, example);
        return dao.edit(record);
    }
    
    @Override
    public List<SysNoticeUser> selectByExample(SysNoticeUserExample example) throws Exception {
        
        // return sysNoticeUserMapper.selectByExample(example);
        SysNoticeUser[] users = dao.getList(null, null);
        return Arrays.asList(users);
    }
    
    @Override
    public long countByExample(SysNoticeUserExample example) throws Exception {
        
        // return sysNoticeUserMapper.countByExample(example);
        return dao.getCount(null);
    }
    
    // @Override
    // public int deleteByExample(SysNoticeUserExample example) throws Exception {
    //
    //     return sysNoticeUserMapper.deleteByExample(example);
    // }
    
    /**
     * 检查name
     *
     * @param sysNoticeUser
     *
     * @return
     */
    public int checkNameUnique(SysNoticeUser sysNoticeUser) throws Exception {
        // SysNoticeUserExample example = new SysNoticeUserExample();
        // example.createCriteria().andUserIdEqualTo(sysNoticeUser.getUserId());
        // List<SysNoticeUser> list = sysNoticeUserMapper.selectByExample(example);
        // return list.size();
    
        SysNoticeUser[] users = dao.getList(new Where[]{new Where("userID", "=", sysNoticeUser.getUserId())}, null);
        return users.length;
    }
    
}
