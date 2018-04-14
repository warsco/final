package doyoung.command;

import java.sql.Timestamp;

public class ImageComment {
	
	
	private int commentNo;
	private int portfolioNo;
	private String content;
	private Timestamp c_time;
	private int numberNo;
	private int commentCount;
	
	public int getCommentNo() {
		return commentNo;
	}
	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}
	public int getPortfolioNo() {
		return portfolioNo;
	}
	public void setPortfolioNo(int portfolioNo) {
		this.portfolioNo = portfolioNo;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getC_time() {
		return c_time;
	}
	public void setC_time(Timestamp c_time) {
		this.c_time = c_time;
	}
	public int getNumberNo() {
		return numberNo;
	}
	public void setNumberNo(int numberNo) {
		this.numberNo = numberNo;
	}
	public int getCommentCount() {
		return commentCount;
	}
	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}
	
	@Override
	public String toString() {
		return "ImageComment [commentNo=" + commentNo + ", portfolioNo=" + portfolioNo + ", content=" + content
				+ ", c_time=" + c_time + ", numberNo=" + numberNo + ", commentCount=" + commentCount + "]";
	}
	
	

	
	
}
