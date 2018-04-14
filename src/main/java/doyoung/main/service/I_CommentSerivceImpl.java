package doyoung.main.service;

import java.util.List;

import doyoung.command.ImageComment;
import doyoung.main.dao.I_CommentDAO;

public class I_CommentSerivceImpl implements I_CommentService{
	
	private I_CommentDAO dao;
	public void setDao(I_CommentDAO dao) {
		this.dao = dao;
	}

	public ImageComment insertComment(ImageComment comment) {
		 dao.insertComment("i_comment.insertComment", comment);
		 return comment;
	}  
	public List<ImageComment> getComment(int num){
		return dao.getComment("i_comment.getComment",num);
	}
	public int commentCount(int num) {  
		return dao.commentCount("i_comment.commentCount",num);
	}
	
	public ImageComment selectOne(int num) {
		return dao.selectOne("i_comment.selectOne", num);
	}
}
