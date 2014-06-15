package com.fung.cms.dao;

import java.util.List;
import java.util.Map;

import com.fung.cms.model.Content;

public interface ContentMapper {
	public int insert(Content record);
	public List<Content> selectPageList(Map pageParams);
	public long getTotalCnt();
	public Content getPage(int contentId);
}