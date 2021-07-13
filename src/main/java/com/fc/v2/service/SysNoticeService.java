package com.fc.v2.service;

import com.fc.v2.common.base.IService;
import com.fc.v2.model.auto.*;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.shiro.util.ShiroUtils;
import com.fc.v2.util.SnowflakeIdWorker;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pikachu.common.collection.KeyValue;
import com.pikachu.common.collection.Where;
import com.pikachu.framework.database.DaoManager;
import com.pikachu.framework.database.IDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 * 公告 SysNoticeService
 *
 * @author fuce_自动生成
 * @Title: SysNoticeService.java
 * @Package com.fc.v2.service
 * @email 115889198@qq.com
 * @date 2019-09-08 01:38:44
 **/
@Service
public class SysNoticeService implements IService<SysNotice> {
    
    @Autowired
    private SysUserService userService;
    @Autowired
    private SysNoticeUserService noticeUserService;

    private IDao<SysNotice> noticeDao;
    private IDao<SysNoticeUser> noticeUserDao;

    @Autowired
    private DaoManager daoManager;

    @PostConstruct
    private void init() {
        this.noticeDao = daoManager.getDao(SysNotice.class);
        this.noticeUserDao = daoManager.getDao(SysNoticeUser.class);
    }

    /**
     * 分页查询
     *
     * @return
     */
    public PageInfo<SysNotice> list(Tablepar tablepar, String name) throws Exception {
        KeyValue[] orders = new KeyValue[]{new KeyValue("id", "asc")};
        Where[] wheres = Where.getLikeWhere("title", name);
        SysNotice[] notices = noticeDao.getList(wheres, orders);
        PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
        PageInfo<SysNotice> pageInfo = new PageInfo<>(Arrays.asList(notices));
        return pageInfo;
    }

    /**
     * 对应用户的所有公告信息
     *
     * @return
     */
    public PageInfo<SysNotice> list(TsysUser tsysUser, Tablepar tablepar, String name) throws Exception {
        SysNoticeUser[] noticeUsers = noticeUserDao.getList(Where.getEqualsWhere("userID", tsysUser.getId()), null);
        //查询对应的公告列表
        List<String> ids = new ArrayList<>();
        for (SysNoticeUser noticeUser : noticeUsers) {
            ids.add(noticeUser.getNoticeId());
        }

        KeyValue[] orders = new KeyValue[]{new KeyValue("id", "desc")};
        Where[] wheres = new Where[2];
        wheres[0] = new Where("name", "like", name);
        wheres[1] = new Where("id", "in", ids);
        SysNotice[] notices = noticeDao.getList(wheres, orders);

        PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
        PageInfo<SysNotice> pageInfo = new PageInfo<>(Arrays.asList(notices));
        return pageInfo;
    }

    @Override
    public int delete(String ids) throws Exception {
        String[] idArr = ids.split(",");
        int delete = noticeDao.delete(Where.getInWhere("id", idArr));
        return delete;
    }

    @Override
    public SysNotice getByPrimary(String id) throws Exception {
        SysNotice notice = noticeDao.getByPrimary(id);
        return notice;
    }

    @Override
    public int edit(SysNotice record) throws Exception {
        int edit = noticeDao.edit(record);
        return edit;
    }

    /**
     * 添加
     */
    @Override
    @Transactional
    public int add(SysNotice record) throws Exception {
        // 添加雪花主键id
        record.setId(SnowflakeIdWorker.getUUID());
        // 添加创建人id
        record.setCreateId(ShiroUtils.getUserId());
        // 添加创建人
        record.setCreateUsername(ShiroUtils.getLoginName());
        // 添加创建时间
        record.setCreateTime(new Date());
        noticeDao.add(record);
        // 给所有人添加公告状态
        List<TsysUser> users = userService.getList(null,null);
        for (TsysUser user : users) {
            SysNoticeUser noticeUser = new SysNoticeUser(null, record.getId(), user.getId(), 0);
            noticeUserService.add(noticeUser);
        }
        return 1;
    }

    @Override
    public List<SysNotice> getList(Where[] wheres, KeyValue[] orders) throws Exception {
        SysNotice[] notices = noticeDao.getList(wheres, orders);
        return Arrays.asList(notices);
    }

    @Override
    public long getCount(Where[] wheres) throws Exception {
        int count = noticeDao.getCount(wheres);
        return count;
    }

    /**
     * 检查name
     *
     * @param sysNotice
     * @return
     */
    public int checkNameUnique(SysNotice sysNotice) throws Exception {
        SysNotice[] notices = noticeDao.getList(Where.getEqualsWhere("title", sysNotice.getTitle()), null);
        return notices.length;
    }

   /**
    * 获取用户未阅读公告
    *
    * @param user
    * @param readState    阅读状态  0未阅读 1 阅读  -1全部
    * @return
    * @author fuce
    * @Date 2019年9月8日 上午3:36:21
    */
   public SysNotice[] getuserNoticeNotRead(TsysUser user, int readState) throws Exception {
       // 查询未阅读的公告用户外键
       IDao<SysNoticeUser> noticeUserDao = daoManager.getDao(SysNoticeUser.class);
       Where[] wheres = new Where[2];
       wheres[0] = new Where("userID", "=", user.getId());
       wheres[1] = new Where("state", "=", readState);
       SysNoticeUser[] noticeUsers = noticeUserDao.getList(wheres, null);
    
       IDao<SysNotice> noticeDao = daoManager.getDao(SysNotice.class);
       List<String> noticeIDs = new ArrayList<>();
       for (SysNoticeUser noticeUser : noticeUsers) {
           //查询对应的公告列表
           noticeIDs.add(noticeUser.getNoticeId());
       }
       SysNotice[] notices = noticeDao.getList(new Where[]{new Where("id", "in", noticeIDs)}, null);
       return notices;
   }


    /**
     * 获取最新8条公告
     *
     * @return
     */
    public List<SysNotice> getNEW() throws Exception {
        KeyValue[] orders = new KeyValue[]{new KeyValue("id", "desc")};
        SysNotice[] notices = noticeDao.getPage(1, 8, null, orders);
        return Arrays.asList(notices);
    }

}
