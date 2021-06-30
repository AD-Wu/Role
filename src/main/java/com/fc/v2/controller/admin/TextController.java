package com.fc.v2.controller.admin;

import com.fc.v2.common.base.BaseController;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Desc TODO
 * @Date 2021/5/27 23:03
 * @Author AD
 */
@Api(value = "测试数据")
@Controller
@RequestMapping("/TextController")
public class TextController extends BaseController {
    
    private final String prefix = "text";
    /**
     * 展示跳转页面
     * @param model
     * @return
     * @author fuce
     * @Date 2019年11月11日 下午4:14:34
     */
    @ApiOperation(value = "分页跳转", notes = "分页跳转")
    @GetMapping("/view")
    @RequiresPermissions("text:view")
    public String view(ModelMap model){
        return prefix + "/text";
    }
}
