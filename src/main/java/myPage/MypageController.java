package myPage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/myPage")
public class MypageController {
	
	//일반인
	@RequestMapping("/memberMypage.do")
	public String memberMypage() {
		return "memberMypage";
	}
					  
	@RequestMapping("/memberMypageInfomodify.do")
	public String memberMypageInfomodify() {
		return "memberMypageInfomodify";
	}
	@RequestMapping("/memberMypagePay.do")
	public String memberMypagePay() {
		return "memberMypagePay";
	}
	
	@RequestMapping("/memberMypageProject.do")
	public String memberMypageProject() {
		return "memberMypageProject";
	}
	@RequestMapping("/memberMypageRequest.do")
	public String memberMypageRequest() {
		return "memberMypageRequest";
	}
	@RequestMapping("/memberMypageSelectList.do")
	public String memberMypageSelectList() {
		return "memberMypageSelectList";
	}
	
	//전문가
	@RequestMapping("/proMemberMypage.do")
	public String proMemberMypage() {
		return "proMemberMypage";
	}
					  
	@RequestMapping("/proMypageInfomodify.do")
	public String proMypageInfomodify() {
		return "proMypageInfomodify";
	}
	@RequestMapping("/proMypageIncome.do")
	public String proMypageIncome() {
		return "proMypageIncome";
	}
	
	@RequestMapping("/proMypageProject.do")
	public String proMypageProject() {
		return "proMypageProject";
	}
	@RequestMapping("/proMypageRequest.do")
	public String proMypageRequest() {
		return "proMypageRequest";
	}
	@RequestMapping("/proMypagePortfolio.do")
	public String proMypagePortfolio() {
		return "proMypagePortfolio";
	}
	
}
