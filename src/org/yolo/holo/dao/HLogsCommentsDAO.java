package org.yolo.holo.dao;

import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.yolo.holo.util.SqlSessionUtil;
import org.yolo.holo.vo.HLogComment;
import org.yolo.holo.vo.PageVO;

public class HLogsCommentsDAO {
	public static int selectTotal(int no) {
		int result = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			result = session.selectOne("hlogcomment.selectTotal",no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		} //try ~ catch() ~ finally end 
		return result;
	}//selectTotal() end 
	
	public static List<HLogComment> selectList(PageVO pageVO){
		List<HLogComment> comments = null;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			comments = session.selectList("hlogcomment.selectList", pageVO);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		} // try ~ catch() ~ finally end
		return comments;
	}//selectList() end
	
	public static int insert(HLogComment hLogComment) {
		int result = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			result = session.insert("hlogcomment.insert", hLogComment);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		} //try ~ catch() ~ finally end
		return result;
	}//insert() end
	
}
