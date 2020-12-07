package kr.ac.mju.hangout.DTO;

public class bbsDTO {

	private int reviewid;
	private String uid;
	private String name;
	private String title;
	private String addr;
	private String postdate;
	private String txt;
	
	static bbsDTO dto = new bbsDTO();
	
	public static bbsDTO getInstance() {
		return dto;
	}
	
	public void setReviewId(int id) {
		this.reviewid = id;
	}
	
	public int getReviewId() {
		return reviewid;
	}
	
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getPostdate() {
		return postdate;
	}
	public void setPostdate(String postdate) {
		this.postdate = postdate;
	}
	public String getTxt() {
		return txt;
	}
	public void setTxt(String txt) {
		this.txt = txt;
	}
	
	
	
}
