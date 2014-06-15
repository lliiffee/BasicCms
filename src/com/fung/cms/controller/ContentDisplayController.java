package com.fung.cms.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fung.cms.model.Content;
import com.fung.cms.model.PageModel;
import com.fung.cms.service.ContentService;

@Component
@RequestMapping("/")
public class ContentDisplayController {

	@Autowired
	private ContentService contentService;
	@RequestMapping(value="home")
	public ModelAndView addContent(HttpServletRequest request,HttpServletResponse response ){
     String page_num=request.getParameter("page_num");
     long pageNo=1;
     long rows=4;
     if(stringNotEmpty(page_num) )
     {
    	  pageNo=Integer.parseInt(page_num);
     }
     Map params=new HashMap();
	 params.put("pageNo", (pageNo-1)*rows);
	 params.put("rowsNum",rows);
	 List<Content> list=this.contentService.selectPageList(params);
	 long totalRecords=this.contentService.getTotalCnt();
	 long pages=0;
	 if(request.getSession().getAttribute("totalPages")!=null)
	 {
		 pages=(Long)request.getSession().getAttribute("totalPages");
	 }else
	 {
		 pages=totalRecords/rows;
		 if(totalRecords%rows>0)
		 {
			 pages=pages+1;
		 }
		 request.setAttribute("totalPages", new Long(pages));
	 }
	
	 PageModel pageModel=new PageModel();
	 pageModel.setPageList(list);
	 pageModel.setTotalPages(pages);
	 pageModel.setCurrentPage(pageNo);
	 
	  ModelAndView mv = new ModelAndView("home","pageModel",pageModel);
	  return mv;
	}

	
	
	@RequestMapping(value="article")
	public ModelAndView getArticle(HttpServletRequest request,HttpServletResponse response ){
     String contentId=request.getParameter("article_id");
     Content content=null;
     try{
    	 
    	  content=this.contentService.getPage(Integer.parseInt(contentId));
    	  System.out.println(content.getFullContent());
    	 
     }catch(Exception e)
     {
    	 e.printStackTrace();
     }
	 
	  ModelAndView mv = new ModelAndView("article","content",content);
	  return mv;
	}

	private boolean stringNotEmpty(String str)
	{
		return (str !=null && !"".equals(str));
	}
}
