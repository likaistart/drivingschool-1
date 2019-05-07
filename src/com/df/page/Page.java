package com.df.page;

import java.util.ArrayList;
import java.util.List;

public class Page<T> {
	/**
	 * 页面大小
	 * */
	private int pageSize=10;
	/**
	 * 当前页面
	 * */
	private int currentPage=1;
	/**
	 * 总条�?
	 * */
	private long total;
	/**
	 * 总页�?
	 * */
	private long totalPage;
	/**
	 * 结果�?
	 * */
	private List<T> result=new ArrayList<T>();
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public long getTotal() {
		return total;
	}
	public void setTotal(long total) {
		this.total = total;
	}
	public List<T> getResult() {
		return result;
	}
	public void setResult(List<T> result) {
		this.result = result;
	}
	/**
	 * 总页�?
	 * */
	public long getTotalPage() {
		return this.total%this.pageSize != 0 ? this.total/this.pageSize + 1 : this.total/this.pageSize;
	}
	public void setTotalPage(long totalPage) {
		this.totalPage = totalPage;
	}
	
	
}
