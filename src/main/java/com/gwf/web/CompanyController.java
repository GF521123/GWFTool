package com.gwf.web;

import com.github.pagehelper.PageHelper;
import com.gwf.entity.Trole;
import com.gwf.model.JqgridBean;
import com.gwf.model.PageRusult;
import com.gwf.service.CompanyService;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import tk.mybatis.mapper.entity.Example;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * @author gwf
 * @version 1.0
 * @date 2021/10/3 14:04
 */
@Controller
@RequestMapping("/work/company")
public class CompanyController {

    @Autowired
    private CompanyService companyService;

    @RequestMapping("/page")
//    @RequiresPermissions(value = {"公司编码"})
    public String getCompanypage(){
        return "work/company";
    }


    /**
     * 分页查询角色信息
     */

    @ResponseBody
    @RequestMapping(value = "/list")
    @RequiresPermissions(value = {"公司编码"})
    public Map<String, Object> list(JqgridBean jqgridbean) throws Exception {

        return companyService.list(jqgridbean);
    }


    /**
     * 分页查询角色信息
     */

    @ResponseBody
    @RequestMapping(value = "/searchById")
    public Map<String, Object> searchById(String CompanyId)  {
        System.out.println(CompanyId+".........................");
        return companyService.searchById(CompanyId);

    }
}
