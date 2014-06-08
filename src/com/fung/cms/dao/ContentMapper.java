package com.fung.cms.dao;

import java.util.List;
import com.fung.cms.model.Content;

public interface ContentMapper {
	public int insert(Content record);
	public List<Content> selectPageList();
}