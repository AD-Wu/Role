package com.fc.v2.service;

import cn.hutool.core.util.StrUtil;
import com.fc.v2.common.base.IService;
import com.fc.v2.model.auto.SysNoticeUser;
import com.fc.v2.model.auto.SysPosition;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.util.SnowflakeIdWorker;
import com.fc.v2.util.StringUtils;
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
 * 岗位表 SysPositionService
 **/
@Service
public class SysPositionService implements IService<SysPosition> {
    
    @Autowired
    private DaoManager daoManager;
    private IDao<SysPosition> dao;
    
    @PostConstruct
    private void init() {
        this.dao = daoManager.getDao(SysPosition.class);
    }
    
    /**
     * 分页查询
     *
     * @return
     */
    public PageInfo<SysPosition> list(Tablepar tablepar, String name) throws Exception {
        Where[] wheres = null;
        if (name != null && !"".equals(name)) {
            wheres = Where.getLikeWhere("postName", name);
        }
        KeyValue[] orders = new KeyValue[2];
        orders[0] = new KeyValue("id", "asc");
        if (StrUtil.isNotEmpty(tablepar.getOrderByColumn())) {
            String column = StringUtils.toUnderScoreCase(tablepar.getOrderByColumn());
            orders[1] = new KeyValue(column, tablepar.getIsAsc());
        }
        SysPosition[] positions = dao.getList(wheres, orders);
        PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
        PageInfo<SysPosition> pageInfo = new PageInfo<>(Arrays.asList(positions));
        return pageInfo;
    }
    
    @Override
    public int delete(String ids) throws Exception {
        String[] idArr = ids.split(",");
        int delete = dao.delete(Where.getInWhere("id", idArr));
        return delete;
    
    }
    
    @Override
    public SysPosition getByPrimary(String id) throws Exception {
        SysPosition po = dao.getByPrimary(id);
        return po;
    }
    
    @Override
    public int edit(SysPosition record) throws Exception {
        int edit = dao.edit(record);
        return edit;
    }
    
    /**
     * 添加
     */
    @Override
    public int add(SysPosition record) throws Exception {
        //添加雪花主键id
        record.setId(SnowflakeIdWorker.getUUID());
        dao.add(record);
        return 1;
    }

    @Override
    public List<SysPosition> getList(Where[] wheres, KeyValue[] orders) throws Exception {
        SysPosition[] positions = dao.getList(null, null);
        return Arrays.asList(positions);
    }
    
    @Override
    public long getCount(Where[] wheres) throws Exception {
        return dao.getCount(wheres);
    }
    
    /**
     * 检查name
     *
     * @param sysPosition
     *
     * @return
     */
    public int checkNameUnique(SysPosition sysPosition) throws Exception {
        Where[] wheres = Where.getEqualsWhere("postName", sysPosition.getPostName());
        SysPosition[] positions = dao.getList(wheres, null);
        return positions.length;
    
    }
    
    /**
     * 修改权限状态展示或者不展示
     *
     * @param record
     *
     * @return
     */
    public int updateVisible(SysPosition record) throws Exception {
        int edit = dao.edit(record);
        return edit;
    }
    
}
