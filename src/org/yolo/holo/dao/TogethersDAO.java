package org.yolo.holo.dao;

import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.yolo.holo.util.SqlSessionUtil;
import org.yolo.holo.vo.PageVO;
import org.yolo.holo.vo.Together;

public class TogethersDAO {
	
	// 수진
	public static List<Together> selectFoodList(PageVO pagevo) {
		List<Together> list = null;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			list = session.selectList("together.selectTogetherListPage",pagevo);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		
		return list;
	}//selectFoodList end
	
	// 수진
	public static int selectTogetherTotal() {
		int total = 0;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			total = session.selectOne("together.selectTogetherTotal");
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		
		return total;
	}//selectFoodTotal end
	
	public static List<Together> selectTogetherList() {
	      List<Together> together = null;
	      SqlSession session = null;
	      
	      try {
	         session = SqlSessionUtil.getSession();
	         together = session.selectList("together.selectTogetherList");
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         session.close();
	      }
	      return together;
	   }//selectTogetherList end
	
	///수진
	/*public static List<Together> selectTogetherList() {
		List<Together> together = null;
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			together = session.selectList("together.selectTogetherList");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return together;
	}//selectTogetherList end
*/	
	public static List<Together> selectTogetherListNo(int no) {
		List<Together> together = null;
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			together = session.selectList("together.selectTogetherListNo",no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return together;
	}//selectTogetherListNo end
	
	public static int selectPersonnelTotal(int no) {
		  int together = 0;
	      SqlSession session = null;
	      
	      try {
	         session = SqlSessionUtil.getSession();
	         together = session.selectOne("together.selectPersonnelTotal", no);
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         session.close();
	      }
	      return together;
	   }//selectPersonnelTotal end
	
	public static Together selectOnePop(int no) {
		Together together = null;
	      SqlSession session = null;
	      
	      try {
	         session = SqlSessionUtil.getSession();
	         together = session.selectOne("together.selectOnePop", no);
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         session.close();
	      }
	      return together;
	   }//selectOnePop end
	
	
	// 수진 추가
	public static List<Together> selectSpotTogetherList(int no) {
		List<Together> together = null;
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			together = session.selectList("together.selectSpotTogetherList",no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return together;
	}//selectTogetherListNo end
	
	
	public static List<Together> selectProTogetherList(int no) {
		List<Together> together = null;
	      SqlSession session = null;
	      
	      try {
	         session = SqlSessionUtil.getSession();
	         together = session.selectList("together.selectProTogetherList", no);
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         session.close();
	      }
	      return together;
	   }//selectProTogetherList end
	
	public static int selectProTogetherCount(int no) {
		int together = 0;
	      SqlSession session = null;
	      
	      try {
	         session = SqlSessionUtil.getSession();
	         together = session.selectOne("together.selectProTogetherCount", no);
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         session.close();
	      }
	      return together;
	   }//selectProTogetherCount end
	
}
