package doyoung.main.service;

import java.util.List;

import doyoung.command.ImageCommand;
import doyoung.main.dao.I_BoardDAO;

public class ImageServiceImpl implements ImageService{
	
	private I_BoardDAO dao;

	public void setDap(I_BoardDAO dao) { 
		this.dao = dao;
	}
	public List<ImageCommand> getListData(){
		return dao.getListData("image.getListData");
	}
	
	public int insertImage(ImageCommand command) {
		return dao.insertImage("image.insertImage", command);
	}
	public ImageCommand listone(int num) {
		return dao.listOne("image.listone", num);
	}
	public int readCount(int num) {
		return dao.readCount("image.readCount", num);
	} 
	


	}

