package com.fung.cms.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.fung.cms.dao.ContentMapper;
import com.fung.cms.model.Content;
 

@Component
public class ContentServiceImpl implements ContentService {

	@Autowired
	private ContentMapper contentMapper;
	@Transactional
	public int insert(Content record){
		return this.contentMapper.insert(record);
	}
	
	public List<Content> selectPageList(Map pageParams){
		return this.contentMapper.selectPageList(pageParams);
	}

	public long getTotalCnt(){
		return this.contentMapper.getTotalCnt();
	}
	
	public Content getPage(int contentId){
		return this.contentMapper.getPage(contentId);
	}
}
