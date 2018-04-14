package register.controller;

import java.sql.Timestamp;

public class MemberCommand {
	private String memberNo;
	private String memberType;
	private String age;
	private String job;
	private String zipcode;
	private String height;
	private String weight;
	private String memberName;
	private String birthday;
	private String blacklist;
	private Timestamp re_date;
	private String phone; 
	private String passwd;
	private String gender;
	private String email;
	private String bday_month;
	private String bday_name;
	private String bday_year;
	
	public String getBday_year() {
		return bday_year;
	}
	public void setBday_year(String bday_year) {
		this.bday_year = bday_year;
	}
	public String getBday_month() {
		return bday_month;
	}
	public void setBday_month(String bday_month) {
		this.bday_month = bday_month;
	}
	public String getBday_name() {
		return bday_name;
	}
	public void setBday_name(String bday_name) {
		this.bday_name = bday_name;
	}
	public String getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}
	public String getMemberType() {
		return memberType;
	}
	public void setMemberType(String memberType) {
		this.memberType = memberType;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getHeight() {
		return height;
	}
	public void setHeight(String height) {
		this.height = height;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getBlacklist() {
		return blacklist;
	}
	public void setBlacklist(String blacklist) {
		this.blacklist = blacklist;
	}
	public Timestamp getRe_date() {
		return re_date;
	}
	public void setRe_date(Timestamp re_date) {
		this.re_date = re_date;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public MemberCommand() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MemberCommand(String memberNo, String memberType, String age, String job, String zipcode, String height,
			String weight, String memberName, String birthday, String blacklist, Timestamp re_date, String phone,
			String passwd, String gender, String email) {
		super();
		this.memberNo = memberNo;
		this.memberType = memberType;
		this.age = age;
		this.job = job;
		this.zipcode = zipcode;
		this.height = height;
		this.weight = weight;
		this.memberName = memberName;
		this.birthday = birthday;
		this.blacklist = blacklist;
		this.re_date = re_date;
		this.phone = phone;
		this.passwd = passwd;
		this.gender = gender;
		this.email = email;
	}

}
