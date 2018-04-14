package doyoung.main.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import doyoung.command.ImageComment;

public class I_CommentDAO extends SqlSessionDaoSupport{
	
		public int insertComment(String sqlName , ImageComment comment) {
				return getSqlSession().insert(sqlName,comment);
		}
		
		public List<ImageComment> getComment(String sqlName,int num){
			return getSqlSession().selectList(sqlName, num);
		}
		
		public ImageComment selectOne(String sqlName , int num) {
			return getSqlSession().selectOne(sqlName,num);
		}
		
		public int commentCount(String sqlName , int num) {
			return getSqlSession().selectOne(sqlName,num);
		}
}
