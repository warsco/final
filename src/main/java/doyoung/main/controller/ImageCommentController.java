package doyoung.main.controller;

import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import doyoung.command.ImageComment;
import doyoung.main.service.I_CommentService;
import net.sf.json.JSONObject;

@Controller
@RequestMapping("/i_board/add.do")
public class ImageCommentController {
	  
	private I_CommentService service2;
	
	public void setService2(I_CommentService service2) {
		this.service2 = service2;
	}  


	@RequestMapping(method = RequestMethod.POST ,produces="text/plain; charset=UTF-8")
	@ResponseBody
	public String select(HttpServletResponse resp,ImageComment command) throws Exception{
		resp.setContentType("text/html; charset=UTF-8");
		JSONObject jso = new JSONObject();
		service2.insertComment(command);
		int commentCount = service2.commentCount(command.getPortfolioNo());
		long time =System.currentTimeMillis();
		SimpleDateFormat format = new SimpleDateFormat("yy mm dd hh:mm");
		jso.put("commen", command);  
		jso.put("commentCount", commentCount);  
		return jso.toString();
	} 
}
	