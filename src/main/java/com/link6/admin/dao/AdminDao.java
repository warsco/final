package com.link6.admin.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import com.link6.admin.dto.AdminDto;

@Repository("adminDao")
public class AdminDao extends AbstractAdminDao{
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> memberList(Map<String, Object> paramMap) throws Exception{
		
		Map<String,Object> map = (Map<String,Object>)paramMap;
		
		String strPageIndex = (String)map.get("PAGE_INDEX");
		String strPageRow = (String)map.get("PAGE_ROW");
		int nPageIndex = 0;
		int nPageRow = 10;
		
		if(StringUtils.isEmpty(strPageIndex) == false){
			nPageIndex = Integer.parseInt(strPageIndex)-1;
		}
		if(StringUtils.isEmpty(strPageRow) == false){
			nPageRow = Integer.parseInt(strPageRow);
		}
				
		map.put("START", (nPageIndex * nPageRow) + 1);
		map.put("END", (nPageIndex * nPageRow) + nPageRow);

			return (List<Map<String, Object>>)selectPagingList("admin.memberList", paramMap);
	}
	
	
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> searchMemberList(Map<String, Object> paramMap) throws Exception{
		
		Map<String,Object> map = (Map<String,Object>)paramMap;
		
		String strPageIndex = (String)map.get("PAGE_INDEX");
		String strPageRow = (String)map.get("PAGE_ROW");
		int nPageIndex = 0;
		int nPageRow = 10;
		
		if(StringUtils.isEmpty(strPageIndex) == false){
			nPageIndex = Integer.parseInt(strPageIndex)-1;
		}
		if(StringUtils.isEmpty(strPageRow) == false){
			nPageRow = Integer.parseInt(strPageRow);
		}
		
		map.put("START", (nPageIndex * nPageRow) + 1);
		map.put("END", (nPageIndex * nPageRow) + nPageRow);
		
		return (List<Map<String, Object>>)selectPagingList("admin.SearchMemberList", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> catList(Map<String, Object> paramMap) throws Exception{
		return (List<Map<String, Object>>)catList("admin.catList");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> subCatList(Map<String, Object> paramMap) throws Exception{
		return (List<Map<String, Object>>)subCatList("admin.subCatList", paramMap);
	}

	public int count() throws Exception{
		return listCount("admin.listCount");
	}
	
	public int searchCount(Map<String, Object> paramMap) throws Exception{
		return searchListCount("searchListCount",paramMap);
	}
	
	public int normalMember() throws Exception{
		return normalMember("normalMember");
	}
	public int specialMember() throws Exception{
		return specialMember("specialMember");
	}
	public int allMember() throws Exception{
		return allMember("allMember");
	}
	
	public AdminDto memberInfo(Map<String, Object> paramMap) throws Exception{
		return memberInfo("memberInfo",paramMap);
	}
	
	public int modifyCat(Map<String, Object> paramMap) throws Exception{
		return modifyCat("modifyCat", paramMap);
	}
	
	public int modifySubCat(Map<String, Object> paramMap) throws Exception{
		return modifySubCat("modifySubCat", paramMap);
	}
	
	public int addCat(Map<String, Object> paramMap) throws Exception{
		return modifySubCat("addCat", paramMap);
	}
	public int delCat(Map<String, Object> paramMap) throws Exception{
		return modifySubCat("delCat", paramMap);
	}
	
}
