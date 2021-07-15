package com.fc.v2.controller.admin;

import com.fc.v2.common.base.BaseController;
import com.fc.v2.common.domain.AjaxResult;
import com.fc.v2.common.domain.ResultTable;
import com.fc.v2.model.auto.Department;
// import com.fc.v2.model.auto.SysDepartmentExample;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.service.DepartmentService;
import com.fc.v2.common.domain.ResuTree;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Api(value = "部门表")
@Controller
@RequestMapping("/SysDepartmentController")
public class DepartmentController extends BaseController {
    
    private final String prefix = "admin/sysDepartment";
    @Autowired
    private DepartmentService departmentService;
    
    /**
     * 分页跳转
     *
     * @param model
     *
     * @return
     *
     * @author fuce
     * @Date 2020年4月18日 下午11:48:55
     */
    @ApiOperation(value = "分页跳转", notes = "分页跳转")
    @GetMapping("/view")
    @RequiresPermissions("gen:department:view")
    public String view(ModelMap model) {
        return prefix + "/list";
    }
    
    /**
     * 分页查询
     *
     * @param tablepar
     * @param searchText
     *
     * @return
     *
     * @author fuce
     * @Date 2020年4月18日 下午11:48:34
     */
    //@Log(title = "部门表集合查询", action = "111")
    @ApiOperation(value = "分页查询", notes = "分页查询")
    @GetMapping("/list")
    @RequiresPermissions("gen:department:list")
    @ResponseBody
    public ResultTable list(Tablepar tablepar, String searchText) throws Exception {
        PageInfo<Department> page = departmentService.list(tablepar, searchText);
        return treeTable(page.getList());
    }
    
    /**
     * 新增
     */
    @ApiOperation(value = "新增跳转", notes = "新增跳转")
    @GetMapping("/add")
    public String add(ModelMap modelMap) {
        return prefix + "/add";
    }
    
    /**
     * 新增
     *
     * @param department
     *
     * @return
     *
     * @author fuce
     * @Date 2020年4月18日 下午11:47:51
     */
    //@Log(title = "部门表新增", action = "111")
    @ApiOperation(value = "新增", notes = "新增")
    @PostMapping("/add")
    @RequiresPermissions("gen:department:add")
    @ResponseBody
    public AjaxResult add(@RequestBody Department department) {
        int b = 0;
        try {b = departmentService.add(department);} catch (Exception e) {
            e.printStackTrace();
        }
        if (b > 0) {
            return success();
        } else {
            return error();
        }
    }
    
    /**
     * 删除
     *
     * @param ids
     *
     * @return
     */
    //@Log(title = "部门表删除", action = "111")
    @ApiOperation(value = "删除", notes = "删除")
    @DeleteMapping("/remove")
    @RequiresPermissions("gen:department:remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        int b = 0;
        try {
            b = departmentService.delete(ids);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (b > 0) {
            return success();
        } else {
            return error();
        }
    }
    
    /**
     * 检查用户
     *
     * @return
     */
    @ApiOperation(value = "检查Name唯一", notes = "检查Name唯一")
    @PostMapping("/checkNameUnique")
    @ResponseBody
    public int checkNameUnique(Department department) throws Exception {
        int b = departmentService.checkNameUnique(department);
        if (b > 0) {
            return 1;
        } else {
            return 0;
        }
    }
    
    /**
     * 修改跳转
     *
     * @param id
     * @param mmap
     *
     * @return
     */
    @ApiOperation(value = "修改跳转", notes = "修改跳转")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") String id, ModelMap mmap) {
        //获取自己的权限信息
        Department dept = null;
        try {
            dept = departmentService.getByPrimary(id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        mmap.put("Department", dept);
        return prefix + "/edit";
    }
    
    /**
     * 修改保存
     */
    @ApiOperation(value = "修改保存", notes = "修改保存")
    @RequiresPermissions("gen:department:edit")
    @PutMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(@RequestBody Department record) throws Exception {
        return toAjax(departmentService.edit(record));
        
    }
    
    @GetMapping("/selectParent")
    @ResponseBody
    public ResuTree selectParent() {
        List<Department> list = null;
        try {
            list = departmentService.getList(null, null);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return dataTree(list);
    }
    
    /**
     * 根据主键查询
     *
     * @param id
     *
     * @return
     */
    @PostMapping("/get/{id}")
    @ApiOperation(value = "根据id查询唯一", notes = "根据id查询唯一")
    public Department edit(@PathVariable("id") String id) throws Exception {
        return departmentService.getByPrimary(id);
    }
    
    /**
     * Describe: 获取部门树状数据结构
     */
    @GetMapping("tree")
    @ApiOperation(value = "获取部门树状数据结构", notes = "获取部门树状数据结构")
    @ResponseBody
    public ResuTree tree() throws Exception {
        List<Department> data = departmentService.getList(null, null);
        return dataTree(data);
    }
    
    
}
