package com.edu.dao;

import java.sql.*;

import com.edu.beans.Member;

public class MemberDAO {
	public Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		
		return con;
	}
	
	public void insertMember(Member member) {
		Connection con = this.getConnection();
		
		try {
			PreparedStatement pstmt = con.prepareStatement("insert into member values(?, ?, ?, ?)");
			
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPasswd());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getMail());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
