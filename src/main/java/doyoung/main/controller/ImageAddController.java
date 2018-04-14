package doyoung.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import doyoung.command.FileCollecter;
import doyoung.command.ImageCommand;
import doyoung.main.service.ImageService; 

@Controller
@RequestMapping("/tiles/image/add.do")
public class ImageAddController {
	
   private ImageService service;
   public void setService(ImageService service) {
		this.service = service;
	}

@RequestMapping(method = RequestMethod.GET)
   public String form() {
      return "imageAddd";
   }  
   

/* portfolioNo,title,path,memberNo,goodCount,fieldNo,port_time,contents,readCount*/
/* 가져오는 값 :	*/

   @RequestMapping(method =RequestMethod.POST)
   public String submit(ImageCommand command , MultipartHttpServletRequest request) {
	   
	  command.setMemberNo("1");
      MultipartFile report =request.getFile("report");
      FileCollecter c = new FileCollecter(command,report);
      System.out.println("filePath 냥냥 :"+c.getCommand().getPath());
      System.out.println(c.getCommand());
      c.getCommand().setFieldNo(command.getFieldNo());
      service.insertImage(c.getCommand());
      printInfo(command.getTitle(),report);
      return  "redirect:/tiles/image/list.do";
   } 
   
   private void printInfo(String studentNumber , MultipartFile report) {
      System.out.println(studentNumber +" 가 업로드 한 파일:" +report.getOriginalFilename());
   }

}