package edu.tongji.sse.ibm.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.dao.NewsDAO;
import edu.tongji.sse.ibm.pojo.News;
import edu.tongji.sse.ibm.service.CDUG_checkUser;

public class CDUGNewsListBySpanAjaxAction extends ActionSupport{
	
	private String span;
	private List<News> newslist;

	public List<News> getNewslist() {
		return newslist;
	}

	public void setNewslist(List<News> newslist) {
		this.newslist = newslist;
	}

	public String execute() {
		newslist = NewsDAO.getCDUGNewsListBySpan(span);
		return SUCCESS;
	}

	public void setSpan(String span) {
		this.span = span;
	}

}
