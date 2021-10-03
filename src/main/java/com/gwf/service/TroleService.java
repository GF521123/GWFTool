package com.gwf.service;

import com.gwf.entity.Trole;

import java.util.List;

public interface TroleService extends IService<Trole>{


    //↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
    List<Trole> selectRolesByUserId(Integer userid);//根据userid查询所有的角色

}