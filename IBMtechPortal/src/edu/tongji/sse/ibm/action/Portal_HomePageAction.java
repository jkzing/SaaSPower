package edu.tongji.sse.ibm.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.dao.NewsDAO;
import edu.tongji.sse.ibm.pojo.News;

public class Portal_HomePageAction extends ActionSupport {
	private List<News> portalNewsList;
	private List<News> activityList;
	public String execute(){
		setPortalNewsList(NewsDAO.getNewsList("portal"));
		setActivityList(NewsDAO.getNewsList("activity"));
		return SUCCESS;
	}
	public List<News> getPortalNewsList() {
		return portalNewsList;
	}
	public void setPortalNewsList(List<News> portalNewsList) {
		this.portalNewsList = portalNewsList;
	}
	public List<News> getActivityList() {
		return activityList;
	}
	public void setActivityList(List<News> activityList) {
		this.activityList = activityList;
	}
}
