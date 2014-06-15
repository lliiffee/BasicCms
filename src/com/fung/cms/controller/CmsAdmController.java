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
	@RequestMapping(value="addContent")
	public ModelAndView addContent(HttpServletRequest request,HttpServletResponse response ){
	 
	//	Map requestParams = request.getParameterMap();
		//content_title
		//content_link
		//contentType=0 product , =1 article
		String contentType=request.getParameter("contentType");
		String contentLink="";
		if("0".equals(contentType))
		{
			contentLink=request.getParameter("contentLink");
		}
		String contentTitle=request.getParameter("contentTitle");
		String sumImg=request.getParameter("sumImg");
		
		String sumDesc=request.getParameter("sumDesc");
		String fullContent=request.getParameter("fullContent");
		
		
	  	ModelAndView mv = new ModelAndView("success","say","hello");
	  	 Content c=new Content();
	  	 c.setSumImg(sumImg);
	  	 c.setSumDesc(sumDesc);
	  	 c.setFullContent(fullContent);
	  	 c.setContentLink(contentLink);
	  	c.setContentTitle(contentTitle);
	  	c.setContentType(contentType);
	  	this.contentService.insert(c);
	    	 return mv;
	    	 
	   
	    
 
	}
	

}
