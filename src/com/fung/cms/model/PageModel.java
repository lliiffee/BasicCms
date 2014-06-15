package com.fung.cms.model;

import java.util.List;

public class PageModel {
	
	private List pageList;
	private long totalPages;
	private long currentPage;
	
	public long getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(long currentPage) {
		this.currentPage = currentPage;
	}
	public List getPageList() {
		return pageList;
	}
	public void setPageList(List pageList) {
		this.pageList = pageList;
	}
	public long getTotalPages() {
		return totalPages;
	}
	public void setTotalPages(long totalPages) {
		this.totalPages = totalPages;
	}
	
	

}
