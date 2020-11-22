package kr.ac.mju.teamproject.dto;

public class userInfoDTO {
	private String userID;
	private String userPWD;
	private String userNAME;
	private String SEX;
	private int AGE;
	private String CATEGORY;
	private String userAddr;

	public static userInfoDTO dto = new userInfoDTO();

	public static userInfoDTO getInstance() {
		return dto;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getUserPWD() {
		return userPWD;
	}

	public void setUserPWD(String userPWD) {
		this.userPWD = userPWD;
	}

	public String getUserNAME() {
		return userNAME;
	}

	public void setUserNAME(String userNAME) {
		this.userNAME = userNAME;
	}

	public String getSEX() {
		return SEX;
	}

	public void setSEX(String SEX) {
		this.SEX = SEX;
	}

	public int getAGE() {
		return AGE;
	}

	public void setAGE(int AGE) {
		this.AGE = AGE;
	}

	public void setCATEGORY(String CATEGORY) {
		this.CATEGORY = CATEGORY;
	}

	public String getCATEGORY() {
		return CATEGORY;
	}

	public String getUserAddr() {
		return userAddr;
	}

	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}

}
