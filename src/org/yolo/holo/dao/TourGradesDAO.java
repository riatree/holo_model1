package org.yolo.holo.dao;

import org.apache.ibatis.session.SqlSession;
import org.yolo.holo.util.SqlSessionUtil;
import org.yolo.holo.vo.FoodGrade;
import org.yolo.holo.vo.TourGrade;

public class TourGradesDAO {
	
	public static double selectTourHice(int no) {
			
			double hice = 0;
			
			SqlSession session = null;
			
			try {
				session = SqlSessionUtil.getSession();
				
				hice = session.selectOne("tourgrade.selectTourHice",no);
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				session.close();
			}//try~catch~finally end
			
			return hice;
		}//selectFoodList end
	
	// 수진추가
		public static TourGrade selectTourReview(int no) {
			
			TourGrade tourgrade = null;
			
			SqlSession session = null;
			
			try {
				session = SqlSessionUtil.getSession();
				
				tourgrade = session.selectOne("tourgrade.selectTourReview",no);
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				session.close();
			}//try~catch~finally end
			
			return tourgrade;
		}//selectFoodList end

		public static int insert(TourGrade tourgrade) {

			int result = 0;
			SqlSession session = null;

			try {
				session = SqlSessionUtil.getSession();
				result = session.insert("tourgrade.insert", tourgrade);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				session.close();
			} // try~catch~finally end

			return result;

		}
}
