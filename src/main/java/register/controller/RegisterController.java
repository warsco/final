package register.controller;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/register")
public class RegisterController {
	
	private RegisterDAO dao;
	@Autowired
	public void setDao(RegisterDAO dao) {
		this.dao = dao;
	}
	
	// 기본 페이지폼 이동
	@RequestMapping(value="/regiNormal.do",method=RequestMethod.GET)
	public String regiNormal() {
		return "regiNormal";
	}
	@RequestMapping("/regiPro.do") 
	public String regiPro() {
		return "regiPro";
	}
	@RequestMapping("/register.do")
	public String register() {
		return "register";
	}	
	
	// 회원가입
	@RequestMapping(value="/registerSignUp.do",method=RequestMethod.POST)
	public ModelAndView regiNormalSignUp(MemberCommand command) {
		ModelAndView mav = new ModelAndView("register");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
		String currentYear = sdf.format(new Date(System.currentTimeMillis()));
		String age = Integer.toString((Integer.parseInt(currentYear) - Integer.parseInt(command.getBday_year()))+1);
		
		command.setRe_date(new Timestamp(System.currentTimeMillis()));
		command.setBirthday(command.getBday_year()+command.getBday_month()+command.getBday_name());
		command.setAge(age);
		dao.registerSignUp(command);
		return mav;
	}
	
}
