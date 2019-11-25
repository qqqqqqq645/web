package db.access;

import java.sql.*;
import java.util.Calendar;
import java.util.GregorianCalendar;;

public class MemberMgr {
	private DBConnectionMgr pool = null;

	public MemberMgr() {
		try {
			pool = DBConnectionMgr.getInstance();
		} catch (Exception e) {
			System.out.println("Error !!");
		}
	}
	
	public boolean memberInsert(MemberBean memberBean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		boolean result = false;
		int i = 1; //parameterIndex
		Calendar signupMoment = new GregorianCalendar();
		try {
			con = pool.getConnection();
			String strQuery = "insert into member values(?,?,?,?, ? ,?)";
			pstmt = con.prepareStatement(strQuery);
			pstmt.setString(i++,memberBean.getId());
			pstmt.setString(i++,memberBean.getPasswd());
			pstmt.setString(i++,memberBean.getName());
			//pstmt.setDate(i++,new java.sql.Date( signupMoment.DATE),signupMoment);
			pstmt.setDate(i++, new java.sql.Date(signupMoment.getTimeInMillis()),signupMoment);
			//pstmt.setString(i++, "NOW()");
		//	pstmt.setDate(parameterIndex, x, cal);
		//	pstmt.setTime(i, new java.sql.Time(signupMoment.getTimeInMillis()),signupMoment);
			pstmt.setString(i++,memberBean.getEmail());
			pstmt.setInt(i++,0); //슈퍼유저 회원가입으로 생성 금지
			
			int count = pstmt.executeUpdate();
			if(count ==1)
				result = true;
		} catch (Exception e) {
			System.out.println("Exception" + e);
		} finally {
			pool.freeConnection(con,pstmt);
		}
		return result;
	}
}
