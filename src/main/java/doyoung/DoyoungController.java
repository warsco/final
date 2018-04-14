package doyoung;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/doyoung")
public class DoyoungController {

	@RequestMapping("/boardDel.do")
	public String boardDel() {
		return "boardDel";
	}
	@RequestMapping("/boardList.do")
	public String boardList() {
		return "boardList";
	}
	@RequestMapping("/boardModiForm.do")
	public String boardModiForm() {
		return "boardModiForm";
	}
	@RequestMapping("/boardView.do")
	public String boardView() {
		return "boardView";
	}
	@RequestMapping("/boardWriteForm.do")
	public String boardWriteForm() {
		return "boardWriteForm";
	}
	@RequestMapping("/imageAdd.do")
	public String imageAdd() {
		return "imageAdd";
	}
	@RequestMapping("/imageList.do")
	public String imageList() {
		return "imageList";
	}
	@RequestMapping("/imageList2.do")
	public String imageList2() {
		return "imageList2";
	}
	@RequestMapping("/loginForm.do")
	public String loginForm() {
		return "loginForm";
	}
	@RequestMapping("/loginSuccess.do")
	public String loginSuccess() {
		return "loginSuccess";
	}
	@RequestMapping("/registMember.do")
	public String registMember() {
		return "registMember";
	}
	@RequestMapping("/registMemberForm.do")
	public String registMemberForm() {
		return "registMemberForm";
	}
}
