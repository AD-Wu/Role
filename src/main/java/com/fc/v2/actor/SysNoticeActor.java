package com.fc.v2.actor;

import com.fc.v2.enums.ReadState;
import com.fc.v2.model.auto.*;
import com.pikachu.common.collection.Where;
import com.pikachu.framework.database.DaoManager;
import com.pikachu.framework.database.IDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/**
 * @Desc
 * @Date 2021/6/10 20:56
 * @Author AD
 */
@Component
public class SysNoticeActor {
    
    @Autowired
    private DaoManager daoManager;
    
    /**
     * 获取用户公告
     *
     * @param user      当前用户
     * @param readState 阅读状态 {@link ReadState}
     *
     * @return
     */
    public SysNotice[] getUserNotice(TsysUser user, int readState) throws Exception {
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
    
}
