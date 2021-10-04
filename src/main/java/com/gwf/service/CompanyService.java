package com.gwf.service;

import com.gwf.entity.Company;
import com.gwf.model.JqgridBean;

import java.util.List;
import java.util.Map;

public interface CompanyService extends IService<Company>{

    public Map<String, Object> list(JqgridBean jqgridbean);
    public Map<String, Object> searchById(String CompanyId);
    //↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
//    public List<Company> selectRolesByUserId(Integer userid);//根据userid查询所有的角色

}