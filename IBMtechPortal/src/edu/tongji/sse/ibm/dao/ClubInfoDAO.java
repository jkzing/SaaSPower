package edu.tongji.sse.ibm.dao;

import edu.tongji.sse.ibm.pojo.ClubInfo;

public class ClubInfoDAO extends BaseDAO {
	public static ClubInfo getClubInfo(int id){
		return (ClubInfo) get(id, "ClubInfo");
	}
}
