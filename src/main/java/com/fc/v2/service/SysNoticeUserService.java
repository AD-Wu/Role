package com.fc.v2.service;

import com.fc.v2.common.base.IService;
import com.fc.v2.model.auto.SysNoticeUser;
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
public class SysNoticeUserService implements IService<SysNoticeUser> {
    
    
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
    public int delete(String ids) throws Exception {
        String[] idArr = ids.split(",");
        int delete = dao.delete(new Where[]{new Where("id", "in", idArr)});
        return delete;
    }
    
    @Override
    public SysNoticeUser getByPrimary(String id) throws Exception {
        SysNoticeUser user = dao.getByPrimary(id);
        return user;
        
    }
    
    @Override
    public int edit(SysNoticeUser record) throws Exception {
        return dao.edit(record);
    }
    
    /**
     * 添加
     */
    @Override
    public int add(SysNoticeUser record) throws Exception {
        //添加雪花主键id
        record.setId(SnowflakeIdWorker.getUUID());
        SysNoticeUser add = dao.add(record);
        return 1;
    }

    @Override
    public List<SysNoticeUser> getList(Where[] wheres, KeyValue[] orders) throws Exception {
        SysNoticeUser[] users = dao.getList(wheres, orders);
        return Arrays.asList(users);
    }
    
    @Override
    public long getCount(Where[] wheres) throws Exception {
        return dao.getCount(wheres);
    }

    /**
     * 检查name
     *
     * @param sysNoticeUser
     *
     * @return
     */
    public int checkNameUnique(SysNoticeUser sysNoticeUser) throws Exception {
        SysNoticeUser[] users = dao.getList(Where.getEqualsWhere("userID",sysNoticeUser.getUserId()), null);
        return users.length;
    }
    
}
