package org.yolo.holo.dao;

import org.apache.ibatis.session.SqlSession;
import org.yolo.holo.util.SqlSessionUtil;
import org.yolo.holo.vo.Theme;

public class ThemeDAO {

	public static int insert(Theme theme) {
		int result = 0 ;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			result = session.insert("theme.insert",theme);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		} //try ~ catch ~ finally end
		return result;
	}//insert() end
	
}//ThemeDAO end
