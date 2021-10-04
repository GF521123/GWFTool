package com.gwf.service.impl;

import com.github.pagehelper.PageHelper;
import com.gwf.entity.Company;
import com.gwf.entity.Trole;
import com.gwf.mapper.CompanyMapper;
import com.gwf.model.JqgridBean;
import com.gwf.model.PageRusult;
import com.gwf.service.CompanyService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * @author gwf
 * @version 1.0, 2021/11/10
 * @description
 */

@Service("companyService")
public class CompanyServiceImpl extends BaseService<Company> implements CompanyService{
    @Autowired
    private CompanyMapper companyMapper;

//    @Override
//    public List<Company> selectRolesByUserId(Integer userid) {
//        return troleMapper.selectRolesByUserId(userid);
//    }

    @Override
    public Map<String, Object> list(JqgridBean jqgridbean){
        LinkedHashMap<String, Object> resultmap = new LinkedHashMap<String, Object>();
        LinkedHashMap<String, Object> datamap = new LinkedHashMap<String, Object>();
//
        Example companyExample = new Example(Company.class);
        Example.Criteria criteria = companyExample.or();
//
        if (StringUtils.isNotEmpty(jqgridbean.getSearchField())) {
            if ("name".equalsIgnoreCase(jqgridbean.getSearchField())) {
                if ("eq".contentEquals(jqgridbean.getSearchOper())) {
                    criteria.andEqualTo("name",jqgridbean.getSearchString());
                }
            }
        }
//
        PageHelper.startPage(jqgridbean.getPage(), jqgridbean.getLength());
        List<Company> companyList = companyMapper.selectByExample(companyExample);
        PageRusult<Company> pageRusult =new PageRusult<Company>(companyList);
//
        resultmap.put("currpage", String.valueOf(pageRusult.getPageNum()));
        resultmap.put("totalpages", String.valueOf(pageRusult.getPages()));
        resultmap.put("totalrecords", String.valueOf(pageRusult.getTotal()));
        resultmap.put("datamap", companyList);
        return resultmap;
    }
    @Override
    public Map<String, Object> searchById(String CompanyId){
        LinkedHashMap<String, Object> resultmap = new LinkedHashMap<String, Object>();
        Company company = companyMapper.selectByPrimaryKey(Integer.parseInt(CompanyId));
        resultmap.put("code","0");
        resultmap.put("msg","查询成功");
        resultmap.put("resultCompany",company);
        return resultmap;
    }
}
