package edu.tongji.sse.ibm.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.dao.CDUG_resDAO;
import edu.tongji.sse.ibm.dao.CDUG_resSortDAO;
import edu.tongji.sse.ibm.dao.NewsDAO;
import edu.tongji.sse.ibm.pojo.CDUG_res;
import edu.tongji.sse.ibm.pojo.CDUG_resSort;

public class CDUG_ResourcesAction extends ActionSupport {
	private String sortname;
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
	private List<CDUG_res> reslist;
	
	public String execute() {
		CDUG_resSort sort;
		if(sortname != "all"){
			 sort = CDUG_resSortDAO.getResSort(sortname);
		}else{
			 sort = null;
		}
		rowCount = CDUG_resDAO.getResCount(sort);
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
		setReslist(CDUG_resDAO.getResList(sort,curpage * pageSize, pageSize));
		
		return SUCCESS;
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

	public List<CDUG_res> getReslist() {
		return reslist;
	}

	public void setReslist(List<CDUG_res> reslist) {
		this.reslist = reslist;
	}

	public String getSortname() {
		return sortname;
	}

	public void setSortname(String sortname) {
		this.sortname = sortname;
	}
}
