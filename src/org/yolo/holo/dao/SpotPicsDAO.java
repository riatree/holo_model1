package org.yolo.holo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.yolo.holo.util.SqlSessionUtil;
import org.yolo.holo.vo.PageVO;
import org.yolo.holo.vo.Spot;
import org.yolo.holo.vo.SpotPic;

public class SpotPicsDAO {

	// 추가
	public static List<SpotPic> selectSpotPicList(int no) {
		List<SpotPic> list = null;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			list = session.selectList("spotpic.selectSpotPicList",no);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		
		return list;
	}//selectFoodList end
	
	
	
	public static int selectPicNum(int no) {
		int result = 0;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			result = session.selectOne("spotpic.selectPicNum",no);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		
		return result;
	}//selectFoodList end
	
	public static int insert(SpotPic spotpic) {
		
		int result = 0;
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			result = session.insert("spotpic.insert", spotpic);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		
		return result;
		
	}
}
