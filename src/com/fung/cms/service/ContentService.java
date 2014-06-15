package com.fung.cms.service;

import java.util.List;
import java.util.Map;

import com.fung.cms.model.Content;

public interface ContentService {
	public int insert(Content record);
	public List<Content> selectPageList(Map pageParams);
	public long getTotalCnt();
	public Content getPage(int contentId);

}
