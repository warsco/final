package doyoung.main.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import doyoung.command.ImageCommand;
import doyoung.command.ImageComment;

public class I_BoardDAO extends SqlSessionDaoSupport{

	public List<ImageCommand> getListData(String sqlName){
		List<ImageCommand> list = getSqlSession().selectList(sqlName);
		return list;
	}
	
	public int insertImage(String sqlName,ImageCommand command) {
		return getSqlSession().insert(sqlName,command);
	}
	
	public ImageCommand listOne(String sqlName , int num) {
		return  getSqlSession().selectOne(sqlName,num);
	}
	
	public  int readCount(String sqlName, int num) {
		return getSqlSession().update(sqlName,num);
	} 
	
	public ImageComment selectOne (String sqlName , int num) {
		return getSqlSession().selectOne(sqlName,num);
	}

}
