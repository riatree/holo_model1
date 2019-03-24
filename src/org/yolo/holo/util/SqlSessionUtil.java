package org.yolo.holo.util;

import java.io.*;


import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.*;

public class SqlSessionUtil {

	public static SqlSession getSession() {
		
		SqlSession session = null;
		
		try {
	     // 1) mybatis-config.xml을 읽어옴
	      Reader reader = Resources.getResourceAsReader("org/yolo/holo/config/mybatis-config.xml");
	      
	      // SqlSessionFactoryBuilder
	      
	      // 2) SqlSessionFactory 만들기
	      SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(reader);
	      session = factory.openSession(true);
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}// try~catch end()
		
		return session;
	}
	
}
