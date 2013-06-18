package edu.tongji.sse.ibm.dao;

import java.util.List;

import edu.tongji.sse.ibm.hibernateUtils.HibernateUtil;
import edu.tongji.sse.ibm.pojo.CDUG_res;
import edu.tongji.sse.ibm.pojo.CDUG_resSort;
import edu.tongji.sse.ibm.pojo.News;

public class CDUG_resDAO {

	public static List<CDUG_res> getResList(CDUG_resSort sort) {
		if (sort != null) {
			String params[] = { "" + sort.getId() };
			List<CDUG_res> list = HibernateUtil.executeQuery(
					"from CDUG_res where ressort_id=?", null);
		}
		List<CDUG_res> list = HibernateUtil.executeQuery("from CDUG_res", null);
		return list;
	}

	public static List<CDUG_res> getResList(CDUG_resSort sort, int first,
			int max) {
		if (sort != null) {
			String params[] = { "" + sort.getId() };
			List<CDUG_res> list = HibernateUtil.executeQuery(
					"from CDUG_res where ressort_id=? order by uploadDate desc", params, first, max);
		}
		List<CDUG_res> list = HibernateUtil.executeQuery(
				"from CDUG_res order by uploadDate desc", null, first, max);
		return list;
	}

	public static int getResCount(CDUG_resSort sort) {

		if (sort != null) {
			String params[] = { "" + sort.getId() };
			return ((Long) HibernateUtil.uniqueQuery(
					"select count(*) from CDUG_res where ressort_id=?", params))
					.intValue();
		}
		return ((Long) HibernateUtil.uniqueQuery(
				"select count(*) from CDUG_res", null)).intValue();
	}

	public static CDUG_res insertRes(CDUG_res res) {
		if (HibernateUtil.saveObject(res)) {
			return res;
		} else {
			return null;
		}
	}

	public static CDUG_res updateRes(CDUG_res res) {
		if (HibernateUtil.updateObject(res)) {
			return res;
		} else {
			return null;
		}
	}

}
