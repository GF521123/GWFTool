package com.gwf.mapper;

import com.gwf.entity.Trole;
import com.gwf.util.MyMapper;

import java.util.List;

public interface TroleMapper extends MyMapper<Trole> {

    List<Trole> selectRolesByUserId(Integer userid);

}