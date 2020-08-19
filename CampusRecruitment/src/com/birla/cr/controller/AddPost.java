package com.birla.cr.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.birla.cr.dao.Dao;
import com.birla.cr.model.Config;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class AddPost
 */
@WebServlet("/AddPost")
public class AddPost extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPost() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		  String title=request.getParameter("postTitle");
		  String college=request.getParameter("postCollege");
		  String sdate=request.getParameter("postStartDate");
		  String edate=request.getParameter("postEndDate");
		  String course=request.getParameter("postCourse");
		  String branch=request.getParameter("postBranch");
		  String address=request.getParameter("address");
		  String image = request.getParameter("postImage");
		  response.setContentType("text/html");  
		  PrintWriter out = response.getWriter();  
		            
		  MultipartRequest m=new MultipartRequest(request,Config.imagePath); 
		  Dao d=new Dao();
		  int id=d.getPostId();
		  System.out.println(college);
		  String status=d.addPost(id, title, college, sdate, edate, course, branch, address, image);
		  if(status.equals("success")) {
			  response.sendRedirect("addPost.jsp?err=success");
		  }else {
			  response.sendRedirect("addPost.jsp?err=fail");
		  }
		  
	}

}
