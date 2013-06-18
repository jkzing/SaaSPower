package edu.tongji.sse.ibm.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.dao.CDUG_expertDAO;
import edu.tongji.sse.ibm.dao.CDUG_resDAO;
import edu.tongji.sse.ibm.pojo.CDUG_expert;

public class CDUG_ExpertAction extends ActionSupport {
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
	private List<CDUG_expert> expertlist;
	
	public String execute() {
		rowCount = CDUG_expertDAO.getExpertCount();
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
		setExpertlist(CDUG_expertDAO.getExpertList(curpage * pageSize, pageSize));
		
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

	public List<CDUG_expert> getExpertlist() {
		return expertlist;
	}

	public void setExpertlist(List<CDUG_expert> expertlist) {
		this.expertlist = expertlist;
	}
}
