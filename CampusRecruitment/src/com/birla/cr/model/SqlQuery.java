package com.birla.cr.model;

public class SqlQuery {
	
	public static String verifyEmailExist="select count(u_name) from cr_users where u_name=?";
	public static String verifyEmail="select U_REGISTER from cr_users where u_name=?";	
	public static String signupQuery="insert into cr_users values(?,?,?,?)";
	public static String addStudentProfile="insert into cr_candidate_profile values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	public static String addCoordinatorProfile="insert into cr_coordinator_profile values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
	public static String verifyPassword="select u_password from cr_users where u_name=? and u_role=?";
	public static String getStudentProfile="select * from cr_candidate_profile where c_uname=?";
	public static String getCoordinatorProfile="select * from cr_coordinator_profile where c_uname=?";
	public static String getStudentRequest="select * from cr_users inner join cr_candidate_profile on cr_users.u_name = cr_candidate_profile.c_uname where cr_users.u_role='student'";
	public static String getCoordinatorRequest="select * from cr_users inner join cr_coordinator_profile on cr_users.u_name = cr_coordinator_profile.c_uname where cr_users.u_role='coordinator'";
	public static String verifyStudent="update cr_users set U_REGISTER='Y' where u_name=? and u_role='student'";	
	public static String verifyCoordinator="update cr_users set U_REGISTER='Y' where u_name=? and u_role='coordinator'";
	public static String deleteStudent="update cr_users set U_REGISTER='N' where u_name=? and u_role='student'";	
	public static String deleteCoordinator="update cr_users set U_REGISTER='N' where u_name=? and u_role='coordinator'";
	public static String getPostId="select post_id_seq.nextval post_id from dual"; 
	public static String addPost="insert into cr_post values(?,?,?,?,?,?,?,?,?)"; 
}
