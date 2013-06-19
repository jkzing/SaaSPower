package edu.tongji.sse.ibm.dao;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.hibernate.dialect.SAPDBDialect;

import edu.tongji.sse.ibm.hibernateUtils.HibernateUtil;
import edu.tongji.sse.ibm.pojo.News;

public class NewsDAO {
	
	public static List<News> getNewsList(String sort){
		String[] params = {"" + sort};
		List<News> list = HibernateUtil.executeQuery("from News where sort=?", params);
		return list;
	}
	
	public static List<News> getNewsList(String sort,int first,int max){
		String[] params = {"" + sort};
		List<News> list = HibernateUtil.executeQuery("from News where sort=? order by createTime desc", params,first,max);
		return list;

	}
	
	public static List<News> getNewsListByKey(String key){
		String[] params = {"cdug","%" + key + "%"};
		List<News> list = HibernateUtil.executeQuery("from News where sort=? and title like ?", params);
		return list;
	}
	
	public static List<News> getCDUGNewsListBySpan(String span){
		Date endDate = new Date(System.currentTimeMillis());
		String end = new Timestamp(endDate.getTime()).toString();
		Calendar cal = Calendar.getInstance();
		cal.setTime(endDate);
		Date startDate = new Date();
		if(span.equals("day")){
			cal.set(Calendar.HOUR_OF_DAY, 0);
			cal.set(Calendar.MINUTE, 0);
			cal.set(Calendar.SECOND, 0);
			startDate = cal.getTime();
		}else if(span.equals("week")){
			cal.set(Calendar.DAY_OF_WEEK, 1);
			cal.set(Calendar.HOUR_OF_DAY, 0);
			cal.set(Calendar.MINUTE, 0);
			cal.set(Calendar.SECOND, 0);
			startDate = cal.getTime();
		}else if(span.equals("month")){
			cal.set(Calendar.DAY_OF_MONTH, 1);
			cal.set(Calendar.HOUR_OF_DAY, 0);
			cal.set(Calendar.MINUTE, 0);
			cal.set(Calendar.SECOND, 0);
			startDate = cal.getTime();
		}
		String start = new Timestamp(startDate.getTime()).toString();
		String[] params = {"cdug",start,end};
		List<News> list = HibernateUtil.executeQuery("from News where sort=? and createTime between ? and ?", params);
		return list;
	}
	
	public static int getNewsCount(String sort){
		String[] params = {"" + sort};
        return ((Long)HibernateUtil.uniqueQuery(
        		"select count(*) from News where sort=?", params)).intValue();  
	}

	
	public static News getNews(int id){
		News news = new News();
		String[] params = {"" + id};
		news = (News) HibernateUtil.uniqueQuery(
				"from News where id=?", params);
		return news;
	}

	public static News insertNews(News news) {
		if (HibernateUtil.saveObject(news)) {
			return news;
		} else {
			return null;
		}
	}

	public static News updateNews(News news) {
		if (HibernateUtil.updateObject(news)) {
			return news;
		} else {
			return null;
		}
	}

}
