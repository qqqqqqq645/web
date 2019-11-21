package db.access;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Timestamp;

public class DbAccess {
	Class.forName("com.mysql.jdbc.Driver");//해당메모리에 문자열을로딩 8은 com.mysql.cj.jdbc.Driver
	Connection conn = null;
	PreparedStatement pstmt = null;
	try {
		//String jdbcDriver = "jdbc:mysql://localhost:3306/studyjspc";
		String jdbcDriver = "jdbc:mysql://192.168.55.144:3306/web_db";
		String dbUser = "exme";
		String dbPass = "1q2w3e";
		conn = DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
	}
		//위문장은 트라이에안너허도됨
		/*
		1.커넥터(드라이버) 로딩 mysql 드라이버로딩은 별도의작업
		2.mysql서버에 연결(서버,유저(id),비밀번호) 234는순서대로
		3.쿼리실행을 위한 객체 생성
		4.3번의 객체를 이용해서 쿼리사용
		5.close
		*/
		
		//연결하려는 db서버,유저,비번
		
	finally {
	
	}
	public void sendDb(String []args) {
		try {
		pstmt = conn.prepareStatement("insert into members values(?,?,?,?,?);");
		pstmt.setString(1,args[0]);
		pstmt.setString(2,args[1]);
		pstmt.setString(3,args[2]);
		pstmt.setTimestamp(4,new Timestamp(System.currentTimeMillis()));
		pstmt.setString(5,args[3]);
		pstmt.executeUpdate();
		} finally {
		pstmt.close();
		conn.close();
		}
	}
}