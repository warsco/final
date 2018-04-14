package doyoung.command;

import java.sql.Timestamp;

public class ImageCommand {
	
	private Timestamp port_time;
	private  int as_no;
	private int portfolioNo;
	private String title;
	private String p_size;
	private String path;
	private String memberNo;
	private int goodCount;
	private String fledNo;
	private int grade;
	private String contents;
	private int readCount;
	private String file_name;
	private int fieldNo;
	
	
	public int getFieldNo() {
		return fieldNo;
	}
	public void setFieldNo(int fieldNo) {
		this.fieldNo = fieldNo;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public Timestamp getPort_time() {
		return port_time;
	}
	public void setPort_time(Timestamp port_time) {
		this.port_time = port_time;
	}
	public int getAs_no() {
		return as_no;
	}
	public void setAs_no(int as_no) {
		this.as_no = as_no;
	}
	public int getPortfolioNo() {
		return portfolioNo;
	}
	public void setPortfolioNo(int portfolioNo) {
		this.portfolioNo = portfolioNo;
	}
	@Override
	public String toString() {
		return "ImageCommand [port_time=" + port_time + ", as_no=" + as_no + ", portfolioNo=" + portfolioNo + ", title="
				+ title + ", p_size=" + p_size + ", path=" + path + ", memberNo=" + memberNo + ", goodCount="
				+ goodCount + ", fledNo=" + fledNo + ", grade=" + grade + ", contents=" + contents + ", readCount="
				+ readCount + ", file_name=" + file_name + "]";
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getP_size() {
		return p_size;
	}
	public void setP_size(String p_size) {
		this.p_size = p_size;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}
	public int getGoodCount() {
		return goodCount;
	}
	public void setGoodCount(int goodCount) {
		this.goodCount = goodCount;
	}
	public String getFledNo() {
		return fledNo;
	}
	public void setFledNo(String fledNo) {
		this.fledNo = fledNo;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public int getReadCount() {
		return readCount;
	}
	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}
	
	
	
	
	
	
	
	
/*
PORTFOLIONO NOT NULL NUMBER       
TITLE                VARCHAR2(20) 
P_SIZE               VARCHAR2(20) 
PATH                 VARCHAR2(20) 
MEMBERNO             VARCHAR2(20) 
GOODCOUNT            NUMBER       
FIELDNO              VARCHAR2(20) 
GRADE                NUMBER       
AS_NO                NUMBER       
PORT_TIME            TIMESTAMP(6) 
*/
	
	
	
	
	
	
	
	
	}
