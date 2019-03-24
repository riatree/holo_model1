package org.yolo.holo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.yolo.holo.util.SqlSessionUtil;
import org.yolo.holo.vo.DounorSave;
	
public class DounorSavesDAO {
	
	public static int selectSpotLike(int no) {
		
		int like = 0;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			like = session.selectOne("dounorsave.selectSpotLike",no);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		
		return like;
	}//selectSpotLike end
	
	public static int selectSpotScrap(int no) {
		
		int scrap = 0;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			scrap = session.selectOne("dounorsave.selectSpotScrap",no);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		
		return scrap;
	}//selectSpotScrap end
	

	public static List<DounorSave> selectProfileScrapTour(int no) {
		
		List<DounorSave> scrap = null;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			scrap = session.selectList("dounorsave.selectProfileScrapTour",no);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		
		return scrap;
	}//selectProfileScrapTour end
	
	public static List<DounorSave> selectProScrapTourList(int no) {
		
		List<DounorSave> scrap = null;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			scrap = session.selectList("dounorsave.selectProScrapTourList",no);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		
		return scrap;
	}//selelctProScrapTourList end
	
	public static List<DounorSave> selectProScrapFoodList(int no) {
		
		List<DounorSave> scrap = null;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			scrap = session.selectList("dounorsave.selectProScrapFoodList",no);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		
		return scrap;
	}//selelctProScrapFoodList end
	
	
	//프로필 스크랩 관광명소 카운트
	public static int selectProScrapTourCount(int no) {
		
		int scrap = 0;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			scrap = session.selectOne("dounorsave.selectProScrapTourCount",no);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		
		return scrap;
	}//selelctProScrapTourCount end
	
	//프로필 스크랩 음식점 카운트
			public static int selectProScrapFoodCount(int no) {
				
				int like = 0;
				
				SqlSession session = null;
				
				try {
					session = SqlSessionUtil.getSession();
					
					like = session.selectOne("dounorsave.selectProScrapFoodCount",no);
					
				} catch (Exception e) {
					e.printStackTrace();
				}finally {
					session.close();
				}//try~catch~finally end
				
				return like;
			}//selelctProScrapFoodCount end
	
	//프로필 라이크 카운트
	public static int selectLikeCount(int no) {
		
		int like = 0;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			like = session.selectOne("dounorsave.selectLikeCount",no);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		
		return like;
	}//selectLikeCount end
	
}
