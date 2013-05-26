package edu.tongji.sse.ibm.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import edu.tongji.sse.ibm.hibernateUtils.HibernateUtil;
import edu.tongji.sse.ibm.pojo.CDUG_news;

public class CDUG_newsDAO {
	
	public static List<CDUG_news> getNewsList(){
		List<CDUG_news> list = HibernateUtil.executeQuery("from CDUG_news", null);
		return list;
	}
	
	public static List<CDUG_news> getNewsList(int first,int max){
		List<CDUG_news> list = HibernateUtil.executeQuery("from CDUG_news order by uploadDate desc", null,first,max);
		return list;

	}
	
	public static int getNewsCount(){
        return ((Long)HibernateUtil.uniqueQuery(
        		"select count(*) from CDUG_news", null)).intValue();  
	}

	
	public static CDUG_news getNews(int id){
		CDUG_news news = new CDUG_news();
		String[] params = {"" + id};
		news = (CDUG_news) HibernateUtil.uniqueQuery(
				"from CDUG_news where id=?", params);
		return news;
	}

	public static CDUG_news insertNews(CDUG_news news) {
		if (HibernateUtil.saveObject(news)) {
			return news;
		} else {
			return null;
		}
	}

	public static CDUG_news updateNews(CDUG_news news) {
		if (HibernateUtil.updateObject(news)) {
			return news;
		} else {
			return null;
		}
	}

}
