package ch18.mvc.simple;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//http://localhost:8080/Server_servlet 뒤의 주소 입력하면 OK
@WebServlet("/Simple_ann")	//annotation
//@WebServlet("/SimpleController")

public class SimpleController_ann extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		String type = request.getParameter("type");
		Object result = null;
		if(type.equals("date")) {
			result = new Date();					
//			result = new java.util.Date();					
		} else {
			result = "Invalid type";
		}
				
		
		request.setAttribute("result", result);
		RequestDispatcher d = request.getRequestDispatcher("ch18/simpleView_ann.jsp");
		d.forward(request, response);

		

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


	}

}
