package org.yolo.holo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.yolo.holo.util.SqlSessionUtil;
import org.yolo.holo.vo.FoodGrade;
import org.yolo.holo.vo.Spot;

public class FoodGradesDAO {

	public static double selectFoodHice(int no) {
		
		double hice = 0;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			hice = session.selectOne("foodgrade.selectFoodHice",no);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		
		return hice;
	}//selectFoodList end
	
	
	public static FoodGrade selectFoodReview(int no) {
		
		FoodGrade foodgrade = null;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			foodgrade = session.selectOne("foodgrade.selectFoodReview",no);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		
		return foodgrade;
	}//selectFoodList end
	
	public static int insert(FoodGrade foodgrade) {

		int result = 0;
		SqlSession session = null;

		try {
			session = SqlSessionUtil.getSession();
			result = session.insert("foodgrade.insert", foodgrade);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		} // try~catch~finally end

		return result;
	} // insert() end
	
}
