package com.fc.v2.service;

import com.fc.v2.common.base.IService;
import com.fc.v2.model.auto.Department;
import com.fc.v2.model.custom.Tablepar;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pikachu.common.collection.KeyValue;
import com.pikachu.common.collection.Where;
import com.pikachu.framework.database.DaoManager;
import com.pikachu.framework.database.IDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * 部门表 SysDepartmentService
 */
@Service
public class DepartmentService implements IService<Department> {

    @Autowired
    private DaoManager daoManager;
    private IDao<Department> dao;

    @PostConstruct
    private void init() {
        this.dao = daoManager.getDao(Department.class);
    }

    /**
     * 分页查询
     *
     * @return
     */
    public PageInfo<Department> list(Tablepar tablepar, String name) throws Exception {
        Where[] ws = null;
        if (name != null && !"".equals(name)) {
            ws = new Where[]{new Where("name", "like", name)};
        }
        List<KeyValue> orders = new ArrayList<>();
        orders.add(new KeyValue("deptName", "desc"));
        Department[] departments = getDepartments(ws, orders.toArray(new KeyValue[0]));
        PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
        PageInfo<Department> pageInfo = new PageInfo<>(Arrays.asList(departments));
        return pageInfo;

    }

    @Override
    public int delete(String ids) throws Exception {
        String[] idArr = ids.split(",");
        int delete = dao.delete(Where.getInWhere("id", idArr));
        return delete;

    }

    @Override
    public Department getByPrimary(String id) throws Exception {
        Department department = dao.getByPrimary(id);
        department.setChildCount(getChildCount(department));
        return department;

    }

    @Override
    public int edit(Department record) throws Exception {
        int edit = dao.edit(record);
        return edit;
    }

    /**
     * 添加
     */
    @Override
    public int add(Department record) throws Exception {
        String pid = record.getParentId();
        if (pid == null || "".equals(pid.trim())) {
            record.setParentId("0");
        }
        Department add = dao.add(record);
        return 1;
    }

    @Override
    public List<Department> getList(Where[] wheres, KeyValue[] orders) throws Exception {
        if (orders == null || orders.length == 0) {
            orders = new KeyValue[]{new KeyValue("deptName", "desc")};
        }
        Department[] departments = getDepartments(wheres, orders);
        return Arrays.asList(departments);

    }

    @Override
    public long getCount(Where[] wheres) throws Exception {
        int count = dao.getCount(wheres);
        return count;
    }


    /**
     * 检查name
     *
     * @param department
     * @return
     */
    public int checkNameUnique(Department department) throws Exception {
        Where[] ws = Where.getEqualsWhere("deptName", department.getDeptName());
        Department[] deptNames = dao.getList(ws, null);
        return deptNames.length;
    }
    
    private Department[] getDepartments(Where[] wheres, KeyValue[] orders) throws Exception {
        Department[] departs = dao.getList(wheres, orders);
        for (Department depart : departs) {
            depart.setChildCount(getChildCount(depart));
        }
        return departs;
    }

    private int getChildCount(Department depart) throws Exception {
        Where[] countWheres = Where.getEqualsWhere("parentId", depart.getId());
        int childCount = dao.getCount(countWheres);
        return childCount;
    }
}
