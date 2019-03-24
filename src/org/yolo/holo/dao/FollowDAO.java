package org.yolo.holo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.yolo.holo.util.SqlSessionUtil;
import org.yolo.holo.vo.Follow;

public class FollowDAO {
	
	public static int selectFollowingNum(int no) {
		int followNum = 0;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			followNum = session.selectOne("follow.selectFollowingNum",no);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		
		return followNum;
	}//selectFollowingNum end
	
	public static List<Follow> selectFollowingList(int no) {
		List<Follow> following = null;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			following = session.selectList("follow.selectFollowingList",no);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		
		return following;
	}//selectFollowingList end
		
	public static int selectFollowerNum(int no) {
		int followNum = 0;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			followNum = session.selectOne("follow.selectFollowerNum",no);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		
		return followNum;
	}//selectFollowerNum end
	
	public static List<Follow> selectFollowerList(int no) {
		List<Follow> follower = null;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			follower = session.selectList("follow.selectFollowerList",no);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		
		return follower;
	}//selectFollowerList end

	public static int selectFollowingNow(Follow follow) {
		int following = 0;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			following = session.selectOne("follow.selectFollowingNow",follow);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		
		return following;
	}//selelctFollowingNow end
	
	public static int selectFollowerNow(Follow follow) {
		int follower = 0;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			follower = session.selectOne("follow.selectFollowerNow",follow);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		
		return follower;
	}//selelctFollowerNow end
	
	public static int insert(Follow follow) {
		int insert = 0;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			insert = session.insert("follow.insert",follow);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		
		return insert;
	}//selelctFollowerNow end
	
	public static int delete(Follow follow) {
		int delete = 0;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			delete = session.delete("follow.delete",follow);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		
		return delete;
	}//selelctFollowerNow end

}
