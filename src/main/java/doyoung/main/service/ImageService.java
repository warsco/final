package doyoung.main.service;

import java.util.List;

import doyoung.command.ImageCommand;

public interface ImageService {
	
	public List<ImageCommand> getListData();
	public int insertImage(ImageCommand command) ;
	public ImageCommand listone(int num);
	public int readCount(int num);
	
}

