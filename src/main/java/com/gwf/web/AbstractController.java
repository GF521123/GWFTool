package com.gwf.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletRequest;

/**
 * Controller公共组件
 * @author gwf
 * @version 1.0
 * @date 2021/10/3 14:04
 */
public abstract class AbstractController {
	protected Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private HttpServletRequest request;
	
	protected String getContextPath(){
		return request.getContextPath();
	}

}
