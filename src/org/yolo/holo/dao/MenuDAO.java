package org.yolo.holo.dao;

import org.apache.ibatis.session.SqlSession;
import org.yolo.holo.util.SqlSessionUtil;
import org.yolo.holo.vo.Menu;

public class MenuDAO {

	// 은서 : 음식점 insert 추가
	public static int insert(Menu menu) {

		int result = 0;
		SqlSession session = null;

		try {
			session = SqlSessionUtil.getSession();
			result = session.insert("menu.insert", menu);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		} // try~catch~finally end

		return result;
	} // insert() end

}
