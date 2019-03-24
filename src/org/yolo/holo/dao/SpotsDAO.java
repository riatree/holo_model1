package org.yolo.holo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.yolo.holo.util.SqlSessionUtil;
import org.yolo.holo.vo.PageVO;
import org.yolo.holo.vo.Spot;

public class SpotsDAO {
	
	public static List<Spot> selectFoodList(PageVO pagevo) {
		List<Spot> list = null;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			list = session.selectList("spot.selectFoodList",pagevo);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		
		return list;
	}//selectFoodList end
	
	public static int selectFoodTotal() {
		int total = 0;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			total = session.selectOne("spot.selectFoodTotal");
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		
		return total;
	}//selectFoodTotal end

	public static List<Spot> selectTourList(PageVO pagevo) {
		List<Spot> list = null;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			list = session.selectList("spot.selectTourList",pagevo);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		
		return list;
	}//selectTourList end
	
	public static int selectTourTotal() {
		int total = 0;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			total = session.selectOne("spot.selectTourTotal");
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		
		return total;
	}//selectTourTotal end
	
	public static List<Spot> selectMainTourList() {
		List<Spot> list = null;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			list = session.selectList("spot.selectMainTourList");
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		
		return list;
	}//selectMainTourList end
	
	public static List<Spot> selectMainFoodList() {
		List<Spot> list = null;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			list = session.selectList("spot.selectMainFoodList");
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		
		return list;
	}//selectMainFoodList end
	
	public static Spot selectSpotOne(int no) {
		Spot spot = null;
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			spot = session.selectOne("spot.selectSpotOne",no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return spot;
	}
	
	public static List<Spot> selectLocationTourList(int no){
		List<Spot> list = null;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			list = session.selectList("spot.selectLocationTourList", no);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		return list;
	} //selectLocationTourList() end 
	
	public static List<Spot> selectLocationFoodList(int no){
		List<Spot> list = null;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			list = session.selectList("spot.selectLocationFoodList", no);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		return list;
	} //selectLocationTourList() end
	
	
	
	
	public static List<Spot> selectSpotList(){
		List<Spot> list = null;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			list = session.selectList("spot.selectSpotList");
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		return list;
	} //selectLocationTourList() end
	
	public static int insert(Spot spot) {

		int result = 0;
		SqlSession session = null;

		try {
			session = SqlSessionUtil.getSession();
			result = session.insert("spot.insertTour", spot);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		} // try~catch~finally end

		return result;
	} // insert() end

	// 은서 : 음식점 insert 추가
	public static int insertFood(Spot spot) {

		int result = 0;
		SqlSession session = null;

		try {
			session = SqlSessionUtil.getSession();
			result = session.insert("spot.insertFood", spot);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		} // try~catch~finally end

		return result;
	} // insert() end
	
	public static List<Spot> selectProTourFounder(int no){
		List<Spot> list = null;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			list = session.selectList("spot.selectProTourFounder", no);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		return list;
	} //selectProTourFounder() end
	
	public static List<Spot> selectProFoodFounder(int no){
		List<Spot> list = null;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			list = session.selectList("spot.selectProFoodFounder", no);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		return list;
	} //selectProFoodFounder() end
	
	public static int selectProTourFounderCount(int no){
		int num = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			num = session.selectOne("spot.selectProTourFounderCount", no);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		return num;
	} //selectProTourFounderCount() end
	
	public static int selectProFoodFounderCount(int no){
		int num = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			num = session.selectOne("spot.selectProFoodFounderCount", no);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		return num;
	} //selectProFoodFounderCount() end
}
