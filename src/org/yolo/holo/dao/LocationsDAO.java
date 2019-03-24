package org.yolo.holo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.yolo.holo.util.SqlSessionUtil;
import org.yolo.holo.vo.Location;

public class LocationsDAO {
	public static Location selectOne (int no) {
		Location location = null;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			location = session.selectOne("location.selectOne", no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		} // try ~ catch ~ finally end 
		return location;
	}//selectOne() end
	
	public static List<Location> selectRegion1() {
		List<Location> location = null;
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			location = session.selectList("location.selectRegion1");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return location;
	}
	
	public static List<Location> selectRegion2() {
		List<Location> location = null;
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			location = session.selectList("location.selectRegion2");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return location;
	}
	
	public static List<Location> selectRegion3() {
		List<Location> location = null;
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			location = session.selectList("location.selectRegion3");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return location;
	}
	
	public static List<Location> selectRegion4() {
		List<Location> location = null;
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			location = session.selectList("location.selectRegion4");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return location;
	}
	
	public static List<Location> selectRegion5() {
		List<Location> location = null;
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			location = session.selectList("location.selectRegion5");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return location;
	}
	
	
}
