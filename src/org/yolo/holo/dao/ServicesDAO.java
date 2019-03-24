package org.yolo.holo.dao;

import org.apache.ibatis.session.SqlSession;
import org.yolo.holo.util.SqlSessionUtil;
import org.yolo.holo.vo.Service;

public class ServicesDAO {
	
	public static int insert(Service service) {

		int result = 0;
		SqlSession session = null;

		try {
			session = SqlSessionUtil.getSession();
			result = session.insert("service.insert", service);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		} // try~catch~finally end

		return result;

	}
}
