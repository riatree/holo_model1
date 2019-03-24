package org.yolo.holo.dao;

import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.yolo.holo.util.SqlSessionUtil;
import org.yolo.holo.vo.Review;

public class ReviewsDAO {
	
	public static List<Review> reviewList(int no) {
		List<Review> review = null;
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			review = session.selectList("review.reviewList",no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return review;
	}
	
	public static List<Review> reviewTogetherList(int no) {
		List<Review> review = null;
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			review = session.selectList("review.reviewTogetherList",no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return review;
	}
	
	public static int insert(Review review) {
		int result = 0;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			result = session.insert("review.insert", review);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}// try~catch~finally end
		
		return result;
	}
	
	public static List<Review> selectProTogetherReviewTourList(int no) {
		List<Review> review = null;
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			review = session.selectList("review.selectProTogetherReviewTourList",no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return review;
	}//selectProTogetherReviewTourList end
	
	public static List<Review> selectProTogetherReviewfoodList(int no) {
		List<Review> review = null;
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			review = session.selectList("review.selectProTogetherReviewfoodList",no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return review;
	}//selectProTogetherReviewfoodList end
	
	public static List<Review> selectProReviewList(int no) {
		List<Review> review = null;
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			review = session.selectList("review.selectProReviewList",no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return review;
	}//selectProReviewList end
	
	public static Review selectProReviewPic(Review review) {
		Review reviews = null;
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			reviews = session.selectOne("review.selectProReviewPic",review);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return reviews;
	}//selectProReviewList end
	
	public static int selectProReviewTotal(int no) {
		int review = 0;
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			review = session.selectOne("review.selectProReviewTotal",no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return review;
	}//selectProReviewTotal end
	
	public static int selectProReviewCount(int no) {
		int review = 0;
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			review = session.selectOne("review.selectProReviewCount",no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return review;
	}//selectProReviewCount end
	
	
	public static int selectProReviewFoodHice(int no) {
		int review = 0;
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			review = session.selectOne("review.selectProReviewFoodHice",no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return review;
	}//selectProReviewFoodHice end
	
	public static int selectProReviewTourHice(int no) {
		int review = 0;
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			review = session.selectOne("review.selectProReviewTourHice",no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return review;
	}//selectProReviewTourHice end
}
