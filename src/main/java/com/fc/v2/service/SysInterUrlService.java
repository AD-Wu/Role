package com.fc.v2.service;

import com.fc.v2.common.base.IService;
import com.fc.v2.common.support.ConvertUtil;
import com.fc.v2.mapper.auto.SysInterUrlMapper;
import com.fc.v2.model.auto.SysInterUrl;
import com.fc.v2.model.auto.SysInterUrlExample;
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
 * 拦截url表 SysInterUrlService
 *
 * @author fuce_自动生成
 * @Title: SysInterUrlService.java
 * @Package com.fc.v2.service
 * @email 115889198@qq.com
 * @date 2020-01-05 01:48:22
 **/
@Service
public class SysInterUrlService implements IService<SysInterUrl, SysInterUrlExample> {
    
    // @Autowired
    // private SysInterUrlMapper sysInterUrlMapper;
    
    @Autowired
    private DaoManager daoManager;
    private IDao<SysInterUrl> dao;
    
    @PostConstruct
    private void init() {
        this.dao = daoManager.getDao(SysInterUrl.class);
    }
    
    /**
     * 分页查询
     *
     * @return
     */
    public PageInfo<SysInterUrl> list(Tablepar tablepar, String name) throws Exception {
        // SysInterUrlExample testExample = new SysInterUrlExample();
        // testExample.setOrderByClause("id ASC");
        // if (name != null && !"".equals(name)) {
        //     testExample.createCriteria().andInterNameLike("%" + name + "%");
        // }
        // List<SysInterUrl> list = sysInterUrlMapper.selectByExample(testExample);
        //
        // PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
        // PageInfo<SysInterUrl> pageInfo = new PageInfo<>(list);
        // return pageInfo;
        Where[] ws = null;
        if (name != null && !"".equals(name)) {
            ws = new Where[]{new Where("interName", "like", name)};
        }
        KeyValue[] orders = new KeyValue[]{new KeyValue("id", "asc")};
        SysInterUrl[] interUrls = dao.getList(ws, orders);
        PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
        PageInfo<SysInterUrl> pageInfo = new PageInfo<>(Arrays.asList(interUrls));
        return pageInfo;
    }
    
    @Override
    public int deleteByPrimaryKey(String ids) throws Exception {
        
        // List<String> lista = ConvertUtil.toListStrArray(ids);
        // SysInterUrlExample example = new SysInterUrlExample();
        // example.createCriteria().andIdIn(lista);
        // return sysInterUrlMapper.deleteByExample(example);
        String[] idAry = ids.split(",");
        int delete = dao.delete(new Where[]{new Where("id", "in", idAry)});
        return delete;
    }
    
    @Override
    public SysInterUrl selectByPrimaryKey(String id) throws Exception {
        
        // return sysInterUrlMapper.selectByPrimaryKey(id);
        
        return dao.getByPrimary(id);
        
    }
    
    @Override
    public int updateByPrimaryKeySelective(SysInterUrl record) throws Exception {
        // return sysInterUrlMapper.updateByPrimaryKeySelective(record);
        return dao.edit(record);
    }
    
    /**
     * 添加
     */
    @Override
    public int insertSelective(SysInterUrl record) throws Exception {
        //添加雪花主键id
        // record.setId(SnowflakeIdWorker.getUUID());
        // return sysInterUrlMapper.insertSelective(record);
    
        record.setId(SnowflakeIdWorker.getUUID());
        SysInterUrl add = dao.add(record);
        return 1;
    }
    
    @Override
    public int updateByExampleSelective(SysInterUrl record, SysInterUrlExample example) throws Exception {
        
        // return sysInterUrlMapper.updateByExampleSelective(record, example);
        return dao.edit(record);
    }
    
    @Override
    public int updateByExample(SysInterUrl record, SysInterUrlExample example) throws Exception {
        
        // return sysInterUrlMapper.updateByExample(record, example);
        return dao.edit(record);
    }
    
    @Override
    public List<SysInterUrl> selectByExample(SysInterUrlExample example) throws Exception {
        
        // return sysInterUrlMapper.selectByExample(example);
        SysInterUrl[] urls = dao.getList(null, null);
        return Arrays.asList(urls);
    }
    
    @Override
    public long countByExample(SysInterUrlExample example) throws Exception {
        
        // return sysInterUrlMapper.countByExample(example);
        return dao.getCount(null);
    }
    
    // @Override
    // public int deleteByExample(SysInterUrlExample example) throws Exception {
    //
    // 	return sysInterUrlMapper.deleteByExample(example);
    // }
    
    /**
     * 检查name
     *
     * @param sysInterUrl
     *
     * @return
     */
    public int checkNameUnique(SysInterUrl sysInterUrl) throws Exception {
        // SysInterUrlExample example = new SysInterUrlExample();
        // example.createCriteria().andInterNameEqualTo(sysInterUrl.getInterName());
        // List<SysInterUrl> list = sysInterUrlMapper.selectByExample(example);
        // return list.size();
        Where[] ws = new Where[]{new Where("interName", "=", sysInterUrl.getInterName())};
        SysInterUrl[] urls = dao.getList(ws, null);
        return urls.length;
    }
    
}
