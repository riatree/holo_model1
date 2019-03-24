package org.yolo.holo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.yolo.holo.util.SqlSessionUtil;
import org.yolo.holo.vo.Tag;

public class TagsDAO {
	
	public static List<Tag> selectTag(int no) {
		List<Tag> text = null;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			text = session.selectList("tag.selectTag",no);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}//try~catch~finally end
		
		return text;
	}//selectTag end
	
	public static List<Tag> tagList(int no) {
	      List<Tag> tag = null;
	      SqlSession session = null;
	      
	      try {
	         session = SqlSessionUtil.getSession();
	         tag = session.selectList("tag.tagList",no);
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         session.close();
	      }
	      return tag;
	   }//tagList end
	
	public static List<Tag> selectKeyword(String name) {
		List<Tag> tag = null;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			tag = session.selectList("tag.selectKeyword", name);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}//try ~ catch ~ finally end
		return tag;
	}//selectKeyword() end

	
}
