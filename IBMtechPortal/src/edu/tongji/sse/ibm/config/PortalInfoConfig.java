package edu.tongji.sse.ibm.config;

import java.util.Map;

public class PortalInfoConfig {
	private static Map<String,String> portalInfo;
	
	static{
		portalInfo.put("textbook","教材建设");
		portalInfo.put("research", "教学研究改革");
	}

}
