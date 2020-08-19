package com.birla.cr.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.birla.cr.model.SqlQuery;

public class Dao {
	
	private static String URL="jdbc:oracle:thin:@localhost:1521:xe";
	private static String DRIVER="oracle.jdbc.driver.OracleDriver";
	private static String USER="system";
	private static String PASSWORD="vandana@11";
	static Connection con=null;

	static {
		try {
		Class.forName(DRIVER);
		con = DriverManager.getConnection(URL,USER,PASSWORD);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public String verifyEmailExist(String email) {
		try {
		PreparedStatement verify_ps=con.prepareStatement(SqlQuery.verifyEmailExist);
		verify_ps.setString(1, email);
		ResultSet rs = verify_ps.executeQuery();
		rs.next();
		int count = rs.getInt(1);
		if(count > 0) {
			return "success";
		}else {
			return "fail";
		}		
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public String studentSignup(String[] signupArr,String[] profileArr) {
		try {
		PreparedStatement signup_ps=con.prepareStatement(SqlQuery.signupQuery);
		PreparedStatement profile_ps=con.prepareStatement(SqlQuery.addStudentProfile);
		signup_ps.setString(1, signupArr[0]);
		signup_ps.setString(2, signupArr[1]);
		signup_ps.setString(3, signupArr[2]);
		signup_ps.setString(4, signupArr[3]);
		
		profile_ps.setString(1, profileArr[0]);
		profile_ps.setString(2, profileArr[1]);
		profile_ps.setString(3, profileArr[2]);
		profile_ps.setString(4, profileArr[3]);
		profile_ps.setString(5, profileArr[4]);
		profile_ps.setString(6, profileArr[5]);
		profile_ps.setString(7, profileArr[6]);
		profile_ps.setString(8, profileArr[7]);
		profile_ps.setString(9, profileArr[8]);
		profile_ps.setString(10, profileArr[9]);
		profile_ps.setString(11, profileArr[10]);
		profile_ps.setString(12, profileArr[11]);
		profile_ps.setString(13, profileArr[12]);
		profile_ps.setString(14, profileArr[13]);
		profile_ps.setString(15, profileArr[14]);
		profile_ps.setString(16, profileArr[15]);
		profile_ps.setString(17, profileArr[16]);
		profile_ps.setString(18, profileArr[17]);
		
		int i = signup_ps.executeUpdate();
		if(i > 0) {
			int j = profile_ps.executeUpdate();
			if(j >0 ) {
				return "success";
			}else {
				return "fail";
			}
		}else {
			return "fail";
		}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public String coordinatorSignup(String signupArr[],String profileArr[]) {
		try {
		PreparedStatement signup_ps=con.prepareStatement(SqlQuery.signupQuery);
		PreparedStatement profile_ps=con.prepareStatement(SqlQuery.addCoordinatorProfile);
		
		signup_ps.setString(1, signupArr[0]);
		signup_ps.setString(2, signupArr[1]);
		signup_ps.setString(3, signupArr[2]);
		signup_ps.setString(4, signupArr[3]);
		
		profile_ps.setString(1, profileArr[0]);
		profile_ps.setString(2, profileArr[1]);
		profile_ps.setString(3, profileArr[2]);
		profile_ps.setString(4, profileArr[3]);
		profile_ps.setString(5, profileArr[4]);
		profile_ps.setString(6, profileArr[5]);
		profile_ps.setString(7, profileArr[6]);
		profile_ps.setString(8, profileArr[7]);
		profile_ps.setString(9, profileArr[8]);
		profile_ps.setString(10, profileArr[9]);
		profile_ps.setString(11, profileArr[10]);
		profile_ps.setString(12, profileArr[11]);
		profile_ps.setString(13, profileArr[12]);
		int i = signup_ps.executeUpdate();
		if(i > 0) {
			int j = profile_ps.executeUpdate();
			if(j >0 ) {
				return "success";
			}else {
				return "fail";
			}
		}else {
			return "fail";
		}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public String verifyPassword(String email , String password , String role) {
		try {	
		PreparedStatement verify_ps=con.prepareStatement(SqlQuery.verifyPassword);
		verify_ps.setString(1, email);
		verify_ps.setString(2, role);
		ResultSet rs = verify_ps.executeQuery();
		String table_password = null;
		while(rs.next()) {
			 table_password = rs.getString(1);
		}
		if(table_password == null) {
			return "notexist";
		}else {
			if(table_password.equals(password)) {
				return "success";
			}else {
				return "fail";
			}
		}	

		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public String verifyEmail(String email) {
		try {	
		PreparedStatement verify_ps=con.prepareStatement(SqlQuery.verifyEmail);
		verify_ps.setString(1, email);
		ResultSet rs = verify_ps.executeQuery();
		String email_status = null;
		while(rs.next()) {
			email_status = rs.getString(1);
		}
		if(email_status == null) {
			return "notexist";
		}else {
			if(email_status.equals("Y")) {
				return "success";
			}else {
				return "fail";
			}
		}	

		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public String[] getStudentProfile(String email) {
		
		String  profileArr[] = new String[18];
		try {	
		PreparedStatement profile_ps=con.prepareStatement(SqlQuery.getStudentProfile);
		profile_ps.setString(1, email);
		ResultSet rs = profile_ps.executeQuery();
		
		while(rs.next()) {
			for(int index=1;index<=18;index++)
			profileArr[index-1]=rs.getString(index);
		}
		return profileArr;
		}catch(Exception e) {
		e.printStackTrace();	
		}
		return profileArr;
	}
	
	public String[] getCoordinatorProfile(String email) {
		String  profileArr[] = new String[13];
		try {	
		PreparedStatement profile_ps=con.prepareStatement(SqlQuery.getCoordinatorProfile);
		profile_ps.setString(1, email);
		ResultSet rs = profile_ps.executeQuery();
		
		while(rs.next()) {
			for(int index=1;index<=13;index++)
			profileArr[index-1]=rs.getString(index);
		}
		return profileArr;
		}catch(Exception e) {
		e.printStackTrace();	
		}
		return profileArr;
	}

	
public ResultSet getStudentRequest() {
		try {	
		PreparedStatement request_ps=con.prepareStatement(SqlQuery.getStudentRequest);
		ResultSet rs = request_ps.executeQuery();
		return rs;
		}catch(Exception e) {
		e.printStackTrace();	
		}
		return null;
	}
	
	public ResultSet getCordinatorRequest() {
		try {	
		PreparedStatement request_ps=con.prepareStatement(SqlQuery.getCoordinatorRequest);
		ResultSet rs = request_ps.executeQuery();
		return rs;
		}catch(Exception e) {
		e.printStackTrace();	
		}
		return null;
	}
	
	public String verifyStudent(String email) {
		try {	
		PreparedStatement verify_ps=con.prepareStatement(SqlQuery.verifyStudent);
		verify_ps.setString(1, email);
		int i=verify_ps.executeUpdate();
		if(i>0) {
			return "success";
		}else {
			return "fail";
		}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "fail";
	}
	
	public String verifyCoordinator(String email) {
		try {	
		PreparedStatement verify_ps=con.prepareStatement(SqlQuery.verifyCoordinator);
		verify_ps.setString(1, email);
		int i=verify_ps.executeUpdate();
		if(i>0) {
			return "success";
		}else {
			return "fail";
		}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "fail";
	}
	
	public String deleteStudent(String email) {
		try {	
		PreparedStatement verify_ps=con.prepareStatement(SqlQuery.deleteStudent);
		verify_ps.setString(1, email);
		int i=verify_ps.executeUpdate();
		if(i>0) {
			return "success";
		}else {
			return "fail";
		}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "fail";
	}
	
	public String deleteCoordinator(String email) {
		try {	
		PreparedStatement verify_ps=con.prepareStatement(SqlQuery.deleteCoordinator);
		verify_ps.setString(1, email);
		int i=verify_ps.executeUpdate();
		if(i>0) {
			return "success";
		}else {
			return "fail";
		}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "fail";
	}
	
	public int getPostId() {
		int i=0;
		try {	
		PreparedStatement verify_ps=con.prepareStatement(SqlQuery.getPostId);
		ResultSet rs=verify_ps.executeQuery();
		rs.next();
		 i= Integer.parseInt(rs.getString(1));
		return i;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return i;
	}
	
	public String addPost(int id,String title,String college,String sdate,String edate,String course,String branch,String address,String image) {
		try {	
		PreparedStatement add_post=con.prepareStatement(SqlQuery.addPost);
		add_post.setInt(1, id);
		add_post.setString(2, title);add_post.setString(3, college);
		add_post.setString(4, sdate);add_post.setString(5, edate);
		add_post.setString(6, course);add_post.setString(7, branch);
		add_post.setString(8, address);add_post.setString(9, image);
		int i=add_post.executeUpdate();
		if(i>0) {
			return "success";
		}else {
			return "fail";
		}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "fail";
	}
}
