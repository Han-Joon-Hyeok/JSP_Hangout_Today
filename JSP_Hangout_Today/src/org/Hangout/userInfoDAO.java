package org.Hangout;

//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
import java.sql.*;

import org.Hangout.userInfoDTO;

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

		String DB_URL = "jdbc:mysql://localhost:3306/mydb?useSSL=false";
		String user = "root";
		String pwd = "gofhdsla1@";

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
	public String[] login(String uid, String pwd) throws ClassNotFoundException, SQLException {
		
		String[] Result = new String[4];
		String name;
		String addr;
		String category;
		
		Result[0] ="false";
		
		sql = "select * from hangout_user where uid = ? and pwd = ?";
		
		conn = getConn();
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, uid);
		psmt.setString(2, pwd);
		rs= psmt.executeQuery();
		if(rs.next()) {
			Result[0] = "true";
			name = rs.getString("name");
			addr = rs.getString("addr");
			category = rs.getString("category");
			
			Result[1] = name;
			Result[2] = addr;
			Result[3] = category;
			
			
		}
		close();
		
		return Result;		
	}
	
	// UID 중복확인
	public boolean confirmID(String uid) throws ClassNotFoundException, SQLException {
		
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
	
	// Email 중복확인
	
	public boolean confirmEmail(String email) throws ClassNotFoundException, SQLException {
		
		boolean result = false;
		String sql = "select email from hangout_user where email = ?";
		
		conn = getConn();
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, email);
		rs = psmt.executeQuery();
		if( rs.next()) {
			result = true;
		}

		close();
		
		return result;
	}
	
	
	// ID 찾기
	public String[] findUId(String email) throws ClassNotFoundException, SQLException {
		
		String[] Result = new String[2];
		Result[0] = "false";
		String UId;
		
		sql = "select uid from hangout_user where email = ?";
		
		conn = getConn();
		psmt =conn.prepareStatement(sql);
		psmt.setString(1, email);
		rs = psmt.executeQuery();
		
		if(rs.next()) {
			Result[0] = "true";
			UId = rs.getString("uid");
			Result[1] = UId;
		}
		
		rs.close();
		psmt.close();
				
		return Result;
	}
	
	// 비밀번호 찾기
	public String[] findPwd(String id, String email) throws ClassNotFoundException, SQLException {
		
		String[] Result = new String[2];
		Result[0] = "false";
		
		sql = "select pwd from hangout_user where uid = ? and email = ?";
		
		conn = getConn();
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, id);
		psmt.setString(2, email);
		rs = psmt.executeQuery();
		
		if(rs.next()) {
			Result[0] = "true";
			Result[1] = rs.getString("pwd");
		}
		
		rs.close();
		psmt.close();
		conn.close();
		
		return Result;
		
	}
	
	// 정보수정 페이지 DB 연동
		public ResultSet viewInfo(String uid) throws ClassNotFoundException, SQLException {
			sql = "select * from hangout_user where uid = ?";
			
			conn = getConn();
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, uid);
			rs = psmt.executeQuery();
			
			return rs;
	
		}
		
	// 마이페이지 정보 수정 반영
		public void editInfo(userInfoDTO dto) throws ClassNotFoundException, SQLException {
			
			sql = "update hangout_user set name = ?, pwd = ? , addr = ? , category = ? where uid = ?";
			
			conn = getConn();
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getName());
			psmt.setString(2, dto.getPwd());
			psmt.setString(3, dto.getAddr());
			psmt.setString(4, dto.getCategory());
			psmt.setString(5, dto.getUid());
			psmt.executeUpdate();
			
			psmt.close();
			conn.close();
		
		}

		
	
	
}
