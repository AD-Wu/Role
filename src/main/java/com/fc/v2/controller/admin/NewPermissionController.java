package com.fc.v2.controller.admin;

import com.fc.v2.common.base.BaseController;
import com.fc.v2.common.data.PageInfo;
import com.fc.v2.model.enums.PermissionType;
import com.fc.v2.model.proxy.PermData;
import com.fc.v2.service.PermissionService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * @Desc TODO
 * @Date 2021/7/27 23:17
 * @Author AD
 */
@Controller
@RequestMapping("/NewPermissionController")
public class NewPermissionController extends BaseController {
    
    private static PermData[] tableData;
    //权限
    @Autowired
    public PermissionService permissionService;
    
    @GetMapping("/view")
    @RequiresPermissions("newPermission:view")
    public String tree(ModelMap model) {
        return "proxy/tableTree";
    }
    
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") String id, ModelMap model) throws Exception {
        //获取自己的权限信息
        // Permission selfPermission = permissionService.getByPrimary(id);
        // model.put("Permission", selfPermission);
        return "proxy/edit";
    }
    
    @PostMapping("list")
    // @RequiresPermissions("newPermission:list")
    @ResponseBody
    public PageInfo<PermData> list(@RequestBody PageInfo info) throws Exception {
        int page = info.getPage();
        int size = info.getPageSize();
        int start = (page - 1) * size;
        int end = start + size - 1;
        List<PermData> data = new ArrayList<>();
        while (start < end) {
            data.add(tableData[start++]);
        }
        info.setPage(page);
        info.setPageSize(size);
        info.setTotal(tableData.length);
        info.setData(data.toArray(new PermData[0]));
        return info;
    }
    
    static {
        List<PermData> datas = new ArrayList<>();
        for (int i = 1; i < 10; ++i) {
            PermData p = new PermData();
            p.setId(i + "");
            p.setIcon("el-icon-position");
            p.setName("权限名-" + i);
            p.setType(PermissionType.CATALOG);
            p.setKey(i + "");
            p.setUrl("URL:" + i);
            p.setEnable(true);
            p.setSort(i);
            List<PermData> children = new ArrayList<>();
            for (int j = 0; j < 6; j++) {
                PermData pd = new PermData();
                pd.setId(i + "" + j);
                pd.setIcon("el-icon-moon-night");
                pd.setName("权限名-" + i + j);
                pd.setKey(i + "" + j);
                pd.setUrl("URL:" + i + j);
                // 偶数
                if ((j & 1) == 0) {
                    pd.setType(PermissionType.MENU);
                } else {
                    pd.setType(PermissionType.BUTTON);
                }
                pd.setEnable(true);
                pd.setSort(j);
                children.add(pd);
            }
            p.setChildren(children.toArray(new PermData[0]));
            datas.add(p);
        }
        tableData = datas.toArray(new PermData[0]);
    }
}
