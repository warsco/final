package login.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView; 

import register.controller.MemberCommand;

@Controller
@RequestMapping("/login")
public class LoginController {

	private LoginDAO dao;
	@Autowired 
	public void setDao(LoginDAO dao) {
		this.dao = dao; 
	}

	//로그인 시도 
	@RequestMapping(value="/loginTry.do",method=RequestMethod.POST)
	public ModelAndView loginSucess(MemberCommand command,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		String passwd = command.getPasswd();
		command = dao.loginId(command);
		
		//해당 아이디가 있으면 true 
		if(command != null) {
			String dbpasswd = command.getPasswd();
			
			//해당 db비밀번호와 폼에서 입력한 비밀번호랑 같으면 true
			if(dbpasswd.equals(passwd)) {
				dao.loginInfo(command);
				session.setAttribute("MemberSession", command);
				mav.setViewName("memberMypage");
			}else {
				mav.setViewName("register");
				return mav;
			}
		}else {
			mav.setViewName("register");
			return mav;
		}
		
		System.out.println(command.getMemberNo());
		System.out.println(command.getEmail());
		return mav;
	}
	
	//로그아웃
	@RequestMapping(value="/logout.do",method=RequestMethod.GET)
	public String logout(MemberCommand command,HttpSession session) {
		session.removeAttribute("MemberSession");
		return "register";
	}
	
	
	
}