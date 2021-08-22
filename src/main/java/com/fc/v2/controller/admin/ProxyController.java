package com.fc.v2.controller.admin;

import com.alibaba.druid.support.console.TabledDataPrinter;
import com.fc.v2.common.base.BaseController;
import com.fc.v2.common.data.PageInfo;
import com.fc.v2.model.proxy.TableData;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * @Desc TODO
 * @Date 2021/5/29 11:34
 * @Author AD
 */
@Controller
@RequestMapping("ProxyController")
public class ProxyController extends BaseController {
    
    private static TableData[] tableData;
    private final String prefix = "proxy";
    
    @ApiOperation(value = "分页跳转", notes = "分页跳转")
    @GetMapping("/view")
    @RequiresPermissions("proxy:view")
    public String view(ModelMap model) {
        return prefix + "/eleHome";
    }
    
    @PostMapping("getData")
    @ResponseBody
    public PageInfo<TableData> getData(@RequestBody PageInfo info) {
        int page = info.getPage();
        int size = info.getPageSize();
        int start = (page - 1) * size;
        int end = start + size - 1;
        List<TableData> data = new ArrayList<>();
        while (start < end) {
            data.add(tableData[start++]);
        }
        info.setPage(page);
        info.setPageSize(size);
        info.setTotal(tableData.length);
        info.setData(data.toArray(new TableData[0]));
        return info;
    }
    
    static {
        List<TableData> datas = new ArrayList<>();
        for (int i = 1; i < 100; ++i) {
            datas.add(new TableData(i));
        }
        tableData = datas.toArray(new TableData[0]);
    }
}
