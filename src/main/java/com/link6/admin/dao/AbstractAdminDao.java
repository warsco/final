package com.link6.admin.dao;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.link6.admin.dto.AdminDto;

public class AbstractAdminDao  extends SqlSessionDaoSupport{
	
	
	public Object selectPagingList(String queryId, Object params){
		return getSqlSession().selectList(queryId, params);
	}
	
	public Object catList(String queryId){
		return getSqlSession().selectList(queryId);
	}
	
	public Object subCatList(String queryId, Object params){
		return getSqlSession().selectList(queryId, params);
	}
	
	int modifyCat(String queryId, Object params){
		return getSqlSession().insert(queryId, params);
	}
	
	int modifySubCat(String queryId, Object params){
		return getSqlSession().insert(queryId, params);
	}
	
	int addCat(String queryId, Object params){
		return getSqlSession().insert(queryId, params);
	}
	
	int delCat(String queryId, Object params){
		return getSqlSession().insert(queryId, params);
	}

	int listCount(String queryId) {
		return getSqlSession().selectOne(queryId);
	}
	
	int searchListCount(String queryId,Object params) {
		return getSqlSession().selectOne(queryId,params);
	}
	
	int normalMember(String queryId) {
		return getSqlSession().selectOne(queryId);
	}
	int specialMember(String queryId) {
		return getSqlSession().selectOne(queryId);
	}
	int allMember(String queryId) {
		return getSqlSession().selectOne(queryId);
	}
	
	AdminDto memberInfo(String queryId, Object params) {
		return getSqlSession().selectOne(queryId,params);
	}

}
