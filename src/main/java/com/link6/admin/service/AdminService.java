package com.link6.admin.service;

import java.util.List;
import java.util.Map;

import com.link6.admin.dto.AdminDto;

public interface AdminService {
	
	List<Map<String, Object>> memberList(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> searchMemberList(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> catList(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> subCatList(Map<String, Object> map) throws Exception;
	
	int memberListCount() throws Exception;
	
	int modifyCat(Map<String, Object> map) throws Exception;
	int modifySubCat(Map<String, Object> map) throws Exception;
	
	int addCat(Map<String, Object> map) throws Exception;
	int delCat(Map<String, Object> map) throws Exception;
	
	int searchMemberListCount(Map<String, Object> map) throws Exception;
		
	int normalMember() throws Exception;
	
	int specialMember() throws Exception;
	
	int allMember() throws Exception;
	
	AdminDto memberInfo(Map<String, Object> map) throws Exception;
	
	
}
