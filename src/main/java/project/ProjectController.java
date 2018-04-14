package project;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/project")
public class ProjectController {

	
	@RequestMapping("/detailProject.do")
	public String detailProject () {
		return "detailProject";
	}
	
	@RequestMapping("/detailReservation.do")
	public String detailReservation () {
		return "detailReservation";
	}
	@RequestMapping("/expertRegister.do")
	public String expertRegister () {
		return "expertRegister";
	}
	@RequestMapping("/reservation.do")
	public String reservation () {
		return "reservation";
	}
	@RequestMapping("/selectClient.do")
	public String selectClient () {
		return "selectClient";
	}
	@RequestMapping("/selectExpert.do")
	public String selectExpert () {
		return "selectExpert";
	}
}
