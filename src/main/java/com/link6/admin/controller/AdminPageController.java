package com.link6.admin.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.link6.admin.dto.AdminDto;
import com.link6.admin.service.AdminService;
import com.link6.admin.util.resolver.CommandMap;

@Controller
public class AdminPageController {

	@Resource(name = "adminService")
	private AdminService adminService;

	// 관리자페이지 메인
	@RequestMapping("/admin.do")
	public ModelAndView adminPage(CommandMap paramMap) throws Exception {
		ModelAndView mv = new ModelAndView("admin");

		// 카테고리 대분류 리스트 불러오기
		mv.addObject("catList", adminService.catList(paramMap.getMap()));

		return mv;
	}

	// ajax 회원리스트 불러오기
	@RequestMapping("/selectMemList.do")
	public ModelAndView selectMemList(CommandMap paramMap) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		List<Map<String, Object>> list;
		int total;

		// 모든회원리스트
		if (paramMap.getMap().get("searchKeyword") == null || paramMap.getMap().get("searchKeyword") == "") {
			total = adminService.memberListCount();
			list = adminService.memberList(paramMap.getMap());
			// 검색회원리스트
		} else {
			total = adminService.searchMemberListCount(paramMap.getMap());
			list = adminService.searchMemberList(paramMap.getMap());
		}
		if (list.size() > 0) {
			mv.addObject("TOTAL", total);
		} else {
			mv.addObject("TOTAL", 0);
		}
		mv.addObject("list", list);
		return mv;
	}

	@RequestMapping("/infoModal.do")
	public ModelAndView infoModal(CommandMap paramMap) throws Exception {
		ModelAndView mv = new ModelAndView("infoModal");

		AdminDto memberInfo = adminService.memberInfo(paramMap.getMap());

		mv.addObject("mem", memberInfo);

		return mv;
	}

	// 카테고리 대분류 리스트
	@RequestMapping("/catList.do")
	public ModelAndView catList(CommandMap paramMap) throws Exception {

		ModelAndView mv = new ModelAndView("jsonView");
		List<Map<String, Object>> list;
		list = adminService.catList(paramMap.getMap());
		mv.addObject("catList", list);
		return mv;
	}

	// 카테고리 중분류 리스트
	@RequestMapping("/subCatList.do")
	public ModelAndView subCatList(CommandMap paramMap) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		List<Map<String, Object>> list;
		list = adminService.subCatList(paramMap.getMap());
		mv.addObject("subCatList", list);
		return mv;
	}

	// 카테고리 수정
	@RequestMapping("/modifyCat.do")
	public ModelAndView modifyCat(CommandMap paramMap) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		List<Map<String, Object>> list;

		// 중분류 이름 수정
		if (paramMap.getMap().get("sub_category") != null) {
			adminService.modifySubCat(paramMap.getMap());
			mv.addObject("old_category", paramMap.getMap().get("sub_category"));
			paramMap.put("category", paramMap.getMap().get("category"));
			list = adminService.subCatList(paramMap.getMap());
			mv.addObject("subCatList", list);

		// 대분류 이름 수정
		} else {
			adminService.modifyCat(paramMap.getMap());
			list = adminService.catList(paramMap.getMap());
			mv.addObject("old_category", paramMap.getMap().get("category"));
			mv.addObject("catList", list);
		}
		mv.addObject("new_category", paramMap.getMap().get("new_category"));

		return mv;
	}
	
	// 카테고리 추가
	@RequestMapping("/addCat.do")
	public ModelAndView addCat(CommandMap paramMap) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		List<Map<String, Object>> list;

		//대분류등록
		if(paramMap.getMap().get("sub_category")==null) {
			adminService.addCat(paramMap.getMap());
			list = adminService.catList(paramMap.getMap());
			mv.addObject("catList", list);
		//중분류 등록
		}else {
			adminService.addCat(paramMap.getMap());
			list = adminService.subCatList(paramMap.getMap());
			mv.addObject("subCatList", list);
		}
		return mv;
	}
	
	// 카테고리 추가
	@RequestMapping("/delCat.do")
	public ModelAndView delCat(CommandMap paramMap) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		List<Map<String, Object>> list;
		
		adminService.delCat(paramMap.getMap());
		
		if(paramMap.getMap().get("sub_category")=="" || paramMap.getMap().get("sub_category")==null) {
			list = adminService.catList(paramMap.getMap());
			mv.addObject("catList", list);
		}else {
			list = adminService.subCatList(paramMap.getMap());
			mv.addObject("subCatList", list);
		}
		
		return mv;
	}


}
