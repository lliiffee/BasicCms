package com.fung.cms.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fung.cms.model.Content;
import com.fung.cms.service.ContentService;

@Component
@RequestMapping("/")
public class ContentDisplayController {

	@Autowired
	private ContentService contentService;
	@RequestMapping(value="home")
	public ModelAndView addContent(HttpServletRequest request,HttpServletResponse response ){
	 List<Content> list=this.contentService.selectPageList();
	 for(Content c:list){
		 System.out.println(c.getContentId());
	 }
	  ModelAndView mv = new ModelAndView("home","pageList",list);
	  return mv;
	}

}
