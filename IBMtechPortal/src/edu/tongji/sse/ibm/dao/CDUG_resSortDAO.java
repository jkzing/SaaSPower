package edu.tongji.sse.ibm.dao;

import edu.tongji.sse.ibm.hibernateUtils.HibernateUtil;
import edu.tongji.sse.ibm.pojo.CDUG_resSort;

public class CDUG_resSortDAO {

	
	public static CDUG_resSort getResSort(String name){
		String param[]  = {"" + name};
        return (CDUG_resSort) HibernateUtil.uniqueQuery(
        		"from CDUG_resSort where sortname=?", param);
	}
	
	
	public static CDUG_resSort getResSort(Integer id){
		String param[]  = {"" + id};
        return (CDUG_resSort) HibernateUtil.uniqueQuery(
        		"from CDUG_resSort where id=?", param);
	}

	public static CDUG_resSort insertResSort(CDUG_resSort resSort) {
		if (HibernateUtil.saveObject(resSort)) {
			return resSort;
		} else {
			return null;
		}
	}

	public static CDUG_resSort updateResSort(CDUG_resSort resSort) {
		if (HibernateUtil.updateObject(resSort)) {
			return resSort;
		} else {
			return null;
		}
	}

}
