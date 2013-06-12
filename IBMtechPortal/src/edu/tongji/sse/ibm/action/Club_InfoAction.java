package edu.tongji.sse.ibm.action;
import com.opensymphony.xwork2.ActionSupport;
import edu.tongji.sse.ibm.dao.ClubInfoDAO;
import edu.tongji.sse.ibm.dao.Portal_infoDAO;
import edu.tongji.sse.ibm.pojo.ClubInfo;
import edu.tongji.sse.ibm.pojo.Portal_info;

public class Club_InfoAction extends ActionSupport {
    private Portal_info info;
    public String execute(){
        setInfo(Portal_infoDAO.getInfo("clubIntro"));
        return SUCCESS;
    }
    public Portal_info getInfo() {
        return info;
    }
    public void setInfo(Portal_info info) {
        this.info = info;
    }


}
