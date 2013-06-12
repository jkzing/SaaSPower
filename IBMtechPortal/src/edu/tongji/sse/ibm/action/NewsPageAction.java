package edu.tongji.sse.ibm.action;


import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.dao.NewsDAO;
import edu.tongji.sse.ibm.pojo.News;

public class NewsPageAction extends ActionSupport {
	private Integer id;
	private News news;
	public String execute(){
		setNews(NewsDAO.getNews(id));
		return SUCCESS;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public News getNews() {
		return news;
	}
	public void setNews(News news) {
		this.news = news;
	}
}
