package com.fc.v2.controller.admin;

import com.fc.v2.common.base.BaseController;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Desc TODO
 * @Date 2021/5/29 11:34
 * @Author AD
 */
@Controller
@RequestMapping("ProxyController")
public class ProxyController extends BaseController {
    
    private final String prefix = "proxy";
   
    @ApiOperation(value = "分页跳转", notes = "分页跳转")
    @GetMapping("/view")
    @RequiresPermissions("proxy:view")
    public String view(ModelMap model){
        return prefix + "/eleHome";
    }
}
