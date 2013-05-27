package edu.tongji.sse.ibm.action;
import com.opensymphony.xwork2.ActionSupport;
import edu.tongji.sse.ibm.dao.ClubInfoDAO;
import edu.tongji.sse.ibm.pojo.ClubInfo;

public class Club_InfoAction extends ActionSupport {
	private ClubInfo info;
	public String execute(){
		info = ClubInfoDAO.getClubInfo();
		if(info == null){
			return ERROR;
		}
		return SUCCESS;
	}
	public ClubInfo getInfo() {
		return info;
	}
	public void setInfo(ClubInfo info) {
		this.info = info;
	}


}
