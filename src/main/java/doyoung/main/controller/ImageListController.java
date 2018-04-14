package doyoung.main.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import doyoung.command.ImageCommand;
import doyoung.command.ImageComment;
import doyoung.main.service.I_CommentService;
import doyoung.main.service.ImageService;
import net.sf.json.JSONObject;

@Controller
@RequestMapping("/tiles/image/list.do")
public class ImageListController {
	  
	private I_CommentService service2;
	
	public void setService2(I_CommentService service2) {
		this.service2 = service2;
	}
	
	private ImageService service;
	   public void setService(ImageService service) {
			this.service = service;
		}	
	@RequestMapping(method = RequestMethod.GET)
	public String form(Model model) {
		model.addAttribute("command",service.getListData());
		return "imageList";
	}
	
	
	
	@RequestMapping(method = RequestMethod.POST ,produces="text/plain; charset=UTF-8")
	@ResponseBody
	public String select(HttpServletResponse resp, int params) throws Exception{
		System.out.println(params);
		ImageCommand command = service.listone(params);
		service.readCount(params);
		List<ImageComment> comment = service2.getComment(params);
		int commentCount = service2.commentCount(params);
		System.out.println(commentCount);
		resp.setContentType("text/html; charset=UTF-8");
		JSONObject jso = new JSONObject();
		SimpleDateFormat format = new SimpleDateFormat(" yyyy년  MM 월 dd 일 ");
		jso.put("commentCount", commentCount);
		jso.put("size", comment.size());
		jso.put("content", command);  
		jso.put("comment", comment);
		jso.put("time", format.format(command.getPort_time()));
		
		return jso.toString();
	}
}
	