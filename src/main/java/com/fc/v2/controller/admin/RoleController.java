package com.fc.v2.controller.admin;

import com.fc.v2.common.base.BaseController;
import com.fc.v2.common.domain.AjaxResult;
import com.fc.v2.common.domain.ResultTable;
import com.fc.v2.model.auto.Role;
import com.fc.v2.model.custom.Tablepar;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

/**
 * 角色Controller
 * @author fuce 
 * @date: 2018年9月2日 下午8:08:21
 */
@Api(value = "用户角色")
@Controller
@RequestMapping("/RoleController")
public class RoleController extends BaseController{
	
	
	//跳转页面参数
	private final String prefix = "admin/role";
	
	/**
	 * 展示页面
	 * @param model
	 * @return
	 * @author fuce
	 * @Date 2019年11月11日 下午4:01:58
	 */
	@ApiOperation(value = "分页跳转", notes = "分页跳转")
	@GetMapping("/view")
	@RequiresPermissions("system:role:view")
    public String view(ModelMap model)
    {
		return prefix + "/list";
    }
	
	/**
	 * 角色列表
	 * @param tablepar
	 * @return
	 */
	@ApiOperation(value = "分页查询", notes = "分页查询")
	@GetMapping("/list")
	@RequiresPermissions("system:role:list")
	@ResponseBody
	public ResultTable list(Tablepar tablepar) throws Exception {
		PageInfo<Role> page=sysRoleService.list(tablepar) ;
		return pageTable(page.getList(),page.getTotal());
	}

	/**
     * 新增角色
     */
	@ApiOperation(value = "新增跳转", notes = "新增跳转")
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }
	
	
    /**
     * 角色添加
     * @param role
     * @return
     */
	//@Log(title = "角色添加", action = "1")
	@ApiOperation(value = "新增", notes = "新增")
	@PostMapping("/add")
	@RequiresPermissions("system:role:add")
	@ResponseBody
	public AjaxResult add(@RequestBody Role role){
		int b= 0;
		try {b = sysRoleService.add(role);} catch (Exception e) {
			e.printStackTrace();
		}
		if(b>0){
			return success();
		}else{
			return error();
		}
	}
	
	/**
	 * 删除角色
	 * @param ids
	 * @return
	 */
	//@Log(title = "删除角色", action = "1")
	@ApiOperation(value = "删除", notes = "删除")
	@DeleteMapping("/remove")
	@RequiresPermissions("system:role:remove")
	@ResponseBody
	public AjaxResult remove(String ids){
        int b= 0;
        try {b = sysRoleService.delete(ids);} catch (Exception e) {
            e.printStackTrace();
        }
        if(b>0){
			return success();
		}else{
			return error();
		}
	}
	
	/**
	 * 检查角色
	 * @return
	 */
	@ApiOperation(value = "检查Name唯一", notes = "检查Name唯一")
	@PostMapping("/checkNameUnique")
	@ResponseBody
	public int checkNameUnique(Role role) throws Exception {
		int b=sysRoleService.checkNameUnique(role);
		if(b>0){
			return 1;
		}else{
			return 0;
		}
	}
	
	
	/**
	 * 修改角色
	 * @param id
	 * @param mmap
	 * @return
	 */
	@ApiOperation(value = "修改跳转", notes = "修改跳转")
	@GetMapping("/edit/{roleId}")
    public String edit(@PathVariable("roleId") String id, ModelMap mmap)
    {
	    try {mmap.put("sysRole", sysRoleService.getByPrimary(id));} catch (Exception e) {
		    e.printStackTrace();
	    }
	    return prefix + "/edit";
    }



    /**
     * 修改保存角色
     */
	//@Log(title = "修改保存角色", action = "1")
	@ApiOperation(value = "修改保存", notes = "修改保存")
    @RequiresPermissions("system:role:edit")
    @PutMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(@RequestBody Role role)
    {
	    int i= 0;
	    try {i = sysRoleService.edit(role);} catch (Exception e) {
		    e.printStackTrace();
	    }
	    return toAjax(i);
    }




}
