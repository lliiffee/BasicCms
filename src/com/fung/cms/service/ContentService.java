package com.fung.cms.service;

import java.util.List;

import com.fung.cms.model.Content;

public interface ContentService {
	public int insert(Content record);
	public List<Content> selectPageList();

}
