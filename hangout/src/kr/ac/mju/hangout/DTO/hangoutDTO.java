package kr.ac.mju.hangout.DTO;

public class hangoutDTO {

	private String title;
	private String txt;
	private String uid;
	private String category;
	private int personnel;
	private String hdate;
	private String pdate;
	
	private hangoutDTO dto = new hangoutDTO();
	
	public hangoutDTO getInstance() {
		return dto;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTxt() {
		return txt;
	}
	public void setTxt(String txt) {
		this.txt = txt;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getPersonnel() {
		return personnel;
	}
	public void setPersonnel(int personnel) {
		this.personnel = personnel;
	}
	public String getHdate() {
		return hdate;
	}
	public void setHdate(String hdate) {
		this.hdate = hdate;
	}
	public String getPdate() {
		return pdate;
	}
	public void setPdate(String pdate) {
		this.pdate = pdate;
	}

}
