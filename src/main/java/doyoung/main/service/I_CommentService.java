package doyoung.main.service;

import java.util.List;

import doyoung.command.ImageComment;

public interface I_CommentService {
	
	public ImageComment insertComment(ImageComment comment);
	public List<ImageComment> getComment(int num);
	public int commentCount(int num);
	public ImageComment selectOne(int num);
}
