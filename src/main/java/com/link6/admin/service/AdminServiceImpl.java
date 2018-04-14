package com.link6.admin.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.link6.admin.dao.AdminDao;
import com.link6.admin.dto.AdminDto;

@Service("adminService")
public class AdminServiceImpl implements AdminService{
	
	@Resource(name="adminDao")
	private AdminDao adminDao;

	@Override
	public List<Map<String, Object>> memberList(Map<String, Object> paramMap) throws Exception{
		return adminDao.memberList(paramMap);
	}
	@Override
	public List<Map<String, Object>> searchMemberList(Map<String, Object> paramMap) throws Exception{
		return adminDao.searchMemberList(paramMap);
	}
	@Override
	public List<Map<String, Object>> catList(Map<String, Object> paramMap) throws Exception{
		return adminDao.catList(paramMap);
	}
	
	@Override
	public List<Map<String, Object>> subCatList(Map<String, Object> paramMap) throws Exception{
		return adminDao.subCatList(paramMap);
	}
	
	@Override
	public int memberListCount() throws Exception{
		return adminDao.count();
	}
	
	@Override
	public int searchMemberListCount(Map<String, Object> paramMap) throws Exception{
		return adminDao.searchCount(paramMap);
	}
	
	@Override
	public int normalMember() throws Exception{
		return adminDao.normalMember();
	}
	@Override
	public int specialMember() throws Exception{
		return adminDao.specialMember();
	}
	@Override
	public int allMember() throws Exception{
		return adminDao.allMember();
	}
	
	@Override
	public AdminDto memberInfo(Map<String, Object> paramMap)throws Exception{
		return adminDao.memberInfo(paramMap);
	}
	@Override
	public int modifyCat(Map<String, Object> paramMap) throws Exception{
		return adminDao.modifyCat(paramMap);
	}
	@Override
	public int modifySubCat(Map<String, Object> paramMap) throws Exception{
		return adminDao.modifySubCat(paramMap);
	}
	@Override
	public int addCat(Map<String, Object> paramMap) throws Exception{
		return adminDao.addCat(paramMap);
	}
	@Override
	public int delCat(Map<String, Object> paramMap) throws Exception{
		return adminDao.delCat(paramMap);
	}
	
	
}