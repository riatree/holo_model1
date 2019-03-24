package org.yolo.holo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.yolo.holo.util.SqlSessionUtil;
import org.yolo.holo.vo.HLog;
import org.yolo.holo.vo.PageVO;

public class HLogsDAO {
	
	public static int insert(HLog hLog) {
		int result = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			result = session.insert("hlog.insert", hLog);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}//try ~ catch ~ finally end
		return result;
	}//insert() end
	
	public static HLog selectOne(int no) {
		HLog hLog = null;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			hLog = session.selectOne("hlog.selectOne", no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}//try ~ catch ~ finally end
		return hLog;
	}//selectOne() end
	
	public static List<HLog> selectList(PageVO pageVO) {
		List<HLog> hLogs = null;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			hLogs = session.selectList("hlog.selectList", pageVO);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}//try ~ catch ~ finally end
		return hLogs;
	} // selectList() end
	
	public static int selectTotal() {
		int result = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			result = session.selectOne("hlog.selectTotal");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}//try ~ catch ~ finally end
		return result;
	}//selectTotal() end
	
	public static int updateHit(int no) {
		int result = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			result = session.insert("hlog.updateHit", no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}//try ~ catch ~ finally end
		return result;
	}//updateHit() end
	
	public static List<HLog> selectProList(int no) {
		List<HLog> hLogs = null;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			hLogs = session.selectList("hlog.selectProList", no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}//try ~ catch ~ finally end
		return hLogs;
	} // selectProList() end

	
	public static int selectMyProHlogCount(int no) {
		int hLogs = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			hLogs = session.selectOne("hlog.selectMyProHlogCount", no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}//try ~ catch ~ finally end
		return hLogs;
	} // selectMyProHlogCount() end
	
	public static List<HLog> selectMyProList(int no) {
		List<HLog> hLogs = null;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			hLogs = session.selectList("hlog.selectMyProList", no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}//try ~ catch ~ finally end
		return hLogs;
	} // selectMyProList() end
	
	public static List<HLog> selectLocationList() {
		List<HLog> hLogs = null;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			hLogs = session.selectList("hlog.selectLocationList");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}//try ~ catch ~ finally end
		return hLogs;
	} // selectList() end
	
}//selectProList() end
