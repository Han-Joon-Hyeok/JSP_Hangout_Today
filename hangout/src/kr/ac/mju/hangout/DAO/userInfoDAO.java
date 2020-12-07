package kr.ac.mju.hangout.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import kr.ac.mju.hangout.DTO.userInfoDTO;

public class userInfoDAO {

	private Connection conn = null;
	private PreparedStatement psmt = null;
	private ResultSet rs = null;
	
	private String sql = "";
	
	//
	private static userInfoDAO dao = new userInfoDAO();

	public static userInfoDAO getInstance() {
		return dao;
	}
	
	// DB작업 이후 연결 해제
	public void close() throws SQLException {
		rs.close();
		psmt.close();
		conn.close();
	}
	
	// DB connection 연결
	public Connection getConn() throws ClassNotFoundException, SQLException {

		String DB_URL = "jdbc:mysql://localhost:3306/teamproject?useSSL=false";
		String user = "root";
		 String pwd = "1234";

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(DB_URL, user, pwd);

		return conn;
	}
	
	// 회원정보 DB 입력
	public void addUser(userInfoDTO dto) throws ClassNotFoundException, SQLException {
		
		sql = "insert into hangout_user values (?,?,?,?,?,?,?,?)";
		
		conn = getConn();
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, dto.getUid());
		psmt.setString(2, dto.getPwd());
		psmt.setString(3, dto.getName());
		psmt.setString(4, dto.getSex());
		psmt.setString(5, dto.getBday());
		psmt.setString(6, dto.getEmail());
		psmt.setString(7, dto.getAddr());
		psmt.setString(8, dto.getCategory());
		
		psmt.executeUpdate();
		psmt.close();
		
		conn.close();
	}

	// 로그인
	public boolean login(String uid, String pwd) throws ClassNotFoundException, SQLException {
		
		boolean result = false;
		
		sql = "select * from hangout_user where uid = ? and pwd = ?";
		
		conn = getConn();
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, uid);
		psmt.setString(2, pwd);
		rs= psmt.executeQuery();
		if(rs.next()) {
			result = true;
		}
		close();
		
		return result;		
	}
	
	// UID 중복확인
	public boolean confrimID(String uid) throws ClassNotFoundException, SQLException {
		
		boolean result = false;
		String sql = "select uid from hangout_user where uid = ?";
		
		conn = getConn();
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, uid);
		rs = psmt.executeQuery();
		if( rs.next()) {
			result = true;
		}

		close();
		
		return result;
	
	}
	
	// ID 찾기
	public boolean findUId(String email) throws ClassNotFoundException, SQLException {
		
		boolean result = false;
		sql = "select uid from hangout_user where email = ?";
		psmt.setString(1, email);
		
		conn = getConn();
		psmt =conn.prepareStatement(sql);
		psmt.setString(1, email);
		rs = psmt.executeQuery();
		
		if(rs.next()) result = true;
		
		rs.close();
		psmt.close();
		
		
		return result;
	}
	
	// 비밀번호 찾기
	public boolean findPwd(String uid, String email) throws ClassNotFoundException, SQLException {
		
		boolean result = false;
		sql = "select pwd from hangout_user where uid = ? and email = ?";
		
		conn = getConn();
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, uid);
		psmt.setString(2, email);
		rs = psmt.executeQuery();
		
		if(rs.next()) result = true;
		
		rs.close();
		psmt.close();
		conn.close();
		
		return result;
		
	}
	
	
}
