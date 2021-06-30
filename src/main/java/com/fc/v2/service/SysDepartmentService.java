package com.fc.v2.service;

import cn.hutool.core.util.StrUtil;
import com.fc.v2.common.base.IService;
import com.fc.v2.common.support.ConvertUtil;
import com.fc.v2.mapper.auto.SysDepartmentMapper;
import com.fc.v2.model.auto.SysDepartment;
import com.fc.v2.model.auto.SysDepartmentExample;
import com.fc.v2.model.auto.SysInterUrl;
import com.fc.v2.model.custom.Tablepar;
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
 * 部门表 SysDepartmentService
 */
@Service
public class SysDepartmentService implements IService<SysDepartment, SysDepartmentExample> {
    
    // @Autowired
    // private SysDepartmentMapper sysDepartmentMapper;
    @Autowired
    private DaoManager daoManager;
    
    private IDao<SysDepartment> dao;
    
    @PostConstruct
    private void init() {
        this.dao = daoManager.getDao(SysDepartment.class);
    }
    
    /**
     * 分页查询
     *
     * @return
     */
    public PageInfo<SysDepartment> list(Tablepar tablepar, String name) throws Exception {
        // SysDepartmentExample testExample = new SysDepartmentExample();
        // testExample.setOrderByClause("id ASC");
        // if (name != null && !"".equals(name)) {
        // 	testExample.createCriteria().andDeptNameLike("%" + name + "%");
        // }
        // if (StrUtil.isNotEmpty(tablepar.getOrderByColumn())) {
        // 	testExample.setOrderByClause(
        // 			StringUtils.toUnderScoreCase(tablepar.getOrderByColumn()) + " " + tablepar.getIsAsc());
        // }
        //
        // List<SysDepartment> list = sysDepartmentMapper.selectByExample(testExample);
        // PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
        // PageInfo<SysDepartment> pageInfo = new PageInfo<>(list);
        // return pageInfo;
        Where[] ws = null;
        if (name != null && !"".equals(name)) {
            ws = new Where[]{new Where("name", "like", name)};
        }
        KeyValue[] orders = new KeyValue[2];
        orders[0] = new KeyValue("id", "asc");
        if (StrUtil.isNotEmpty(tablepar.getOrderByColumn())) {
            orders[1] = new KeyValue(tablepar.getOrderByColumn(), tablepar.getIsAsc());
        }
        SysDepartment[] departments = dao.getList(ws, orders);
        PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
        PageInfo<SysDepartment> pageInfo = new PageInfo<>(Arrays.asList(departments));
        return pageInfo;
        
    }
    
    @Override
    public int deleteByPrimaryKey(String ids) throws Exception {
        
        // Integer[] integers = ConvertUtil.toIntArray(",", ids);
        // List<Integer> stringB = Arrays.asList(integers);
        // SysDepartmentExample example = new SysDepartmentExample();
        // example.createCriteria().andIdIn(stringB);
        // return sysDepartmentMapper.deleteByExample(example);
        
        Integer[] integers = ConvertUtil.toIntArray(",", ids);
        int delete = dao.delete(new Where[]{new Where("id", "in", integers)});
        return delete;
        
    }
    
    @Override
    public SysDepartment selectByPrimaryKey(String id) throws Exception {
        
        // Integer id1 = Integer.valueOf(id);
        // return sysDepartmentMapper.selectByPrimaryKey(id1);
        SysDepartment department = dao.getByPrimary(Integer.valueOf(id));
        return department;
    
    }
    
    @Override
    public int updateByPrimaryKeySelective(SysDepartment record) throws Exception {
        // return sysDepartmentMapper.updateByPrimaryKeySelective(record);
        int edit = dao.edit(record);
        return edit;
    }
    
    /**
     * 添加
     */
    @Override
    public int insertSelective(SysDepartment record) throws Exception {
        
        // record.setId(null);
        //
        // return sysDepartmentMapper.insertSelective(record);
    
        record.setId(null);
        SysDepartment add = dao.add(record);
        return 1;
    }
    
    @Override
    public int updateByExampleSelective(SysDepartment record, SysDepartmentExample example) throws Exception {
        
        // return sysDepartmentMapper.updateByExampleSelective(record, example);
        int edit = dao.edit(record);
        return edit;
    }
    
    @Override
    public int updateByExample(SysDepartment record, SysDepartmentExample example) throws Exception {
        
        // return sysDepartmentMapper.updateByExample(record, example);
    
        int edit = dao.edit(record);
        return edit;
    }
    
    @Override
    public List<SysDepartment> selectByExample(SysDepartmentExample example) throws Exception {
        
        // return sysDepartmentMapper.selectByExample(example);
        SysDepartment[] departments = dao.getList(null, null);
        return Arrays.asList(departments);
    
    }
    
    @Override
    public long countByExample(SysDepartmentExample example) throws Exception {
        
        // return sysDepartmentMapper.countByExample(example);
        int count = dao.getCount(null);
        return count;
    }
    
    // @Override
    // public int deleteByExample(SysDepartmentExample example) throws Exception {
    //
    // 	return sysDepartmentMapper.deleteByExample(example);
    // }
    
    /**
     * 检查name
     *
     * @param sysDepartment
     *
     * @return
     */
    public int checkNameUnique(SysDepartment sysDepartment) throws Exception {
        // SysDepartmentExample example = new SysDepartmentExample();
        // example.createCriteria().andDeptNameEqualTo(sysDepartment.getDeptName());
        // List<SysDepartment> list = sysDepartmentMapper.selectByExample(example);
        // return list.size();
    
        Where[] ws = new Where[]{new Where("deptName", "=", sysDepartment.getDeptName())};
        SysDepartment[] deptNames = dao.getList(ws, null);
        return deptNames.length;
        
    }
    
    /**
     * 修改权限状态展示或者不展示
     *
     * @param record
     *
     * @return
     */
    public int updateVisible(SysDepartment record) throws Exception {
        // return sysDepartmentMapper.updateByPrimaryKeySelective(record);
        int edit = dao.edit(record);
        return edit;
    }
    
}
