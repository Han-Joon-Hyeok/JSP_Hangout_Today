package org.Hangout;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.Hangout.bbsDTO;

public class bbsDAO {
	private Connection conn = null;
	private PreparedStatement psmt = null;
	private ResultSet rs = null;
	
	private String sql = "";
	
	private static bbsDAO dao = new bbsDAO();
	
	public static bbsDAO getInstance() {
		return dao;
	}
	
	public void close() throws SQLException {
		rs.close();
		psmt.close();
		conn.close();
	}	
	public Connection getConn() throws ClassNotFoundException, SQLException {
		String DB_URL = "jdbc:mysql://localhost:3306/mydb?useSSL=false";
		String user = "root";
		 String pwd = "gofhdsla1@";

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(DB_URL, user, pwd);

		return conn;
	}
	
	public void addReview(bbsDTO dto) throws ClassNotFoundException, SQLException {
		
		sql = "insert into review(uid, title, uaddr, postdate,txt) values (?,?,?,?,?)";
		
		conn = getConn();
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, dto.getUid());
		psmt.setString(2, dto.getTitle());
		psmt.setString(3, dto.getAddr());
		psmt.setString(4, dto.getPostdate());
		psmt.setString(5, dto.getTxt());
		psmt.executeUpdate();
		
		psmt.close();
		conn.close();
		
		}
	public void addReply(bbsDTO dto) throws ClassNotFoundException, SQLException {
		
		sql = "insert into reply(uid, reviewid, txt, postdate) values (?,?,?,?)";
		
		conn = getConn();
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, dto.getUid());
		psmt.setInt(2, dto.getReviewId());
		psmt.setString(3, dto.getTxt());
		psmt.setString(4, dto.getPostdate());
		psmt.executeUpdate();
		
		psmt.close();
		conn.close();
		
		}
	
	public ResultSet showReview() throws ClassNotFoundException, SQLException {
		
		sql = "select reviewid, name, uaddr, postdate, title, txt from review, hangout_user where review.uid = hangout_user.uid";
		
		conn = getConn();
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		
		return rs;
		
	}
	public ResultSet showReply(int reviewID) throws ClassNotFoundException, SQLException {
		
		sql = "select name, reply.txt, reply.postdate from hangout_user, review, reply where reply.reviewid = ? and hangout_user.uid = reply.uid ";
		
		conn = getConn();
		psmt = conn.prepareStatement(sql);
		psmt.setInt(1, reviewID);
		rs = psmt.executeQuery();
		
		return rs;
		
	}
	
}
