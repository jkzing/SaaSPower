package edu.tongji.sse.ibm.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.dao.NewsDAO;
import edu.tongji.sse.ibm.pojo.News;

public class Portal_HomePageAction extends ActionSupport {
	private List<News> newslist;
	public String execute(){
		setNewslist(NewsDAO.getNewsList("club"));
		return SUCCESS;
	}
	public List<News> getNewslist() {
		return newslist;
	}
	public void setNewslist(List<News> newslist) {
		this.newslist = newslist;
	}

}
