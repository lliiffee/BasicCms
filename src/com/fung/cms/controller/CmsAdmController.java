package com.fung.cms.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fung.cms.model.Content;
import com.fung.cms.service.ContentService;


@Component
@RequestMapping("/cmadm")
public class CmsAdmController {

	@Autowired
	private ContentService contentService;
	@RequestMapping(value="hello")
	public ModelAndView sayHello(HttpServletRequest request,HttpServletResponse response ){
	 
		Map requestParams = request.getParameterMap();
	  	ModelAndView mv = new ModelAndView("hello","say","hello");
	  	 Content c=new Content();
	  	 c.setContentLink("test");
	  	c.setContentTitle("test");
	  	c.setContentType("test");
	  	this.contentService.insert(c);
	    	 return mv;
	    	 
	   
	    
 
	}
	

}
