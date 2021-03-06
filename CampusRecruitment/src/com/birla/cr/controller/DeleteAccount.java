package com.birla.cr.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.birla.cr.dao.Dao;

/**
 * Servlet implementation class DeleteAccount
 */
@WebServlet("/DeleteAccount")
public class DeleteAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteAccount() {
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
		String uname=request.getParameter("uname");
		String urole=request.getParameter("urole");
		Dao d=new Dao();
		String status=null;
		if(urole.equals("student")) {
			status=d.deleteStudent(uname);
		}else if(urole.equals("coordinator")) {
			status=d.deleteCoordinator(uname);
		}else {
			
		}
		
		if(status.equals("success")) {
			response.sendRedirect("coordinatorRequest.jsp?type=delete&deletestatus=success");
		}else {
			response.sendRedirect("coordinatorRequest.jsp?type=delete&deletestatus=fail");
		}
		
	}

}
