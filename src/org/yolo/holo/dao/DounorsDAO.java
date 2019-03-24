package org.yolo.holo.dao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;

import org.yolo.holo.util.SqlSessionUtil;
import org.yolo.holo.vo.Dounor;
import org.yolo.holo.vo.DounorSave;

public class DounorsDAO {

	public static Dounor selectDounorProfile(int no) {
		Dounor dounor = null;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			dounor = session.selectOne("dounor.selectDounorProfile",no);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		
		return dounor;
	}//selectDounorProfile end
	
	public static Dounor selectLogin(Dounor dounor) {
		
		Dounor loginDounor = null;
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			loginDounor = session.selectOne("dounor.selectLogin", dounor);
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		} // try ~ catch ~ finally end
		
		return loginDounor;
	}
	
	public static int selectCheckId(String id) {
		int cnt = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			cnt = session.selectOne("dounor.selectCheckId",id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		} //try ~ catch ~ finally end
		return cnt;
	}//selectCheckId() end
	
	public static int selectNickname(String nickname) {
		int cnt = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			cnt = session.selectOne("dounor.selectNickname",nickname);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		} //try ~ catch ~ finally end
		return cnt;
	}//selectNickname() end
	
	public static int insert(Dounor dounor) {
		int result = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			result = session.insert("dounor.insert",dounor);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		} //try ~ catch ~ finally end
		return result;
	}//insert() end 
	
	//프로필 도넛 update Pink
	public static int updatePink(int no) {
		int color = 0;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			color = session.update("dounor.updatePink",no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		} //try ~ catch ~ finally end
		return color;
	}//updatePink() end 
	
	//프로필 도넛 update Green
		public static int updateGreen(int no) {
			int color = 0;
			SqlSession session = null;
			try {
				session = SqlSessionUtil.getSession();
				color = session.update("dounor.updateGreen",no);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				session.close();
			} //try ~ catch ~ finally end
			return color;
		}//updateGreen() end 
		
		//프로필 도넛 update Red
		public static int updateRed(int no) {
			int color = 0;
			SqlSession session = null;
			try {
				session = SqlSessionUtil.getSession();
				color = session.update("dounor.updateRed",no);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				session.close();
			} //try ~ catch ~ finally end
			return color;
		}//updateRed() end 
		
		//프로필 도넛 update Chco
		public static int updateChco(int no) {
			int color = 0;
			SqlSession session = null;
			try {
				session = SqlSessionUtil.getSession();
				color = session.update("dounor.updateChco",no);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				session.close();
			} //try ~ catch ~ finally end
			return color;
		}//updateChco() end 
		
		//프로필 도넛 update Orange
		public static int updateOrange(int no) {
			int color = 0;
			SqlSession session = null;
			try {
				session = SqlSessionUtil.getSession();
				color = session.update("dounor.updateOrange",no);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				session.close();
			} //try ~ catch ~ finally end
			return color;
		}//updateOrange() end 
		
		//프로필 도넛 update Blue
		public static int updateBlue(int no) {
			int color = 0;
			SqlSession session = null;
			try {
				session = SqlSessionUtil.getSession();
				color = session.update("dounor.updateBlue",no);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				session.close();
			} //try ~ catch ~ finally end
			return color;
		}//updateBlue() end 
		
		//프로필 도넛 update White
		public static int updateWhite(int no) {
			int color = 0;
			SqlSession session = null;
			try {
				session = SqlSessionUtil.getSession();
				color = session.update("dounor.updateWhite",no);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				session.close();
			} //try ~ catch ~ finally end
			return color;
		}//updateWhite() end 
		
		//프로필 도넛 update Yellow
		public static int updateYellow(int no) {
			int color = 0;
			SqlSession session = null;
			try {
				session = SqlSessionUtil.getSession();
				color = session.update("dounor.updateYellow",no);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				session.close();
			} //try ~ catch ~ finally end
			return color;
		}//updateYellow() end 
}
