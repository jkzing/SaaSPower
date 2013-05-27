package edu.tongji.sse.ibm.action;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.dao.NewsDAO;
import edu.tongji.sse.ibm.pojo.News;
import edu.tongji.sse.ibm.pojo.News;

public class CDUG_NewsAction extends ActionSupport {
	private static int pageSize = 6; //每页显示的新闻个数
	private int curpage = 0;
	public int getCurpage() {
		return curpage;
	}

	public void setCurpage(int curpage) {
		this.curpage = curpage;
	}

	private int pageCount = 0;
	private int rowCount = 0;
	private List<News> newsList;

	public String execute() {

		rowCount = NewsDAO.getNewsCount("cdug");
		if (rowCount % pageSize == 0) {
			pageCount = rowCount / pageSize;
		} else {
			pageCount = rowCount / pageSize + 1;
		}
		if(curpage < 0){
			curpage =0;			
		}else if (curpage >= pageCount) {
			curpage = pageCount -1;
		}
		newsList = NewsDAO.getNewsList("cdug",curpage * pageSize, pageSize);
		return SUCCESS;
	}

	public static int getPageSize() {
		return pageSize;
	}

	public static void setPageSize(int pageSize) {
		CDUG_NewsAction.pageSize = pageSize;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getRowCount() {
		return rowCount;
	}

	public void setRowCount(int rowCount) {
		this.rowCount = rowCount;
	}

	public List<News> getNewsList() {
		return newsList;
	}

	public void setNewsList(List<News> newsList) {
		this.newsList = newsList;
	}

}
