package kr.ac.mju.hangout.DTO;

import java.text.ParseException;

public class userInfoDTO {

	private String uid;
	private String pwd;
	private String name;
	private String sex;
	private String bday;
	private String email;
	private String category;
	private String addr;

	private static userInfoDTO  dto = new userInfoDTO();
	
	public static userInfoDTO getInstance() {
		return dto;
	}
	
	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}
	
	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBday() {
		return bday;
	}
	
	public void setBday(String date) throws ParseException {
		
		this.bday = date;
		//SimpleDateFormat toDate = new SimpleDateFormat("yyyy-mm-dd");
		
	//	this.bday = toDate.parse(date);
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

}
