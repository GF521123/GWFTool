package com.gwf.web;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

/**
 * @author gwf
 * @version 1.0
 * @date 2021/10/3 14:04
 */
@Controller
@RequestMapping("/work")
public class CompanyController {

    @RequestMapping("/company/page")
//    @RequiresPermissions(value = {"公司编码"})
    public String getCompanypage(){
        return "work/company";
    }

//    @RequestMapping("/companypage")
    public Map<String, Object> getCompanyList(){
        return null;
    }
}
