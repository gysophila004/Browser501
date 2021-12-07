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
//@WebServlet("/Simple")	//annotation
//@WebServlet("/SimpleController")

public class SimpleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		
		String type = request.getParameter("type");
		Object result = null;
		if(type.equals("date")) {
			result = new Date();					
//			result = new java.util.Date();					
		} else if(type.equals("greeting") || type == null){
			result = "안녕하세요";
		} else	{
			result = "Invalid type";
		}
				
		// attribute, parameter를 view로 전달 가능
		request.setAttribute("result", result);
																				// parameter로 test를 따로 전달
		RequestDispatcher d = request.getRequestDispatcher("ch18/simpleView.jsp?test=test");
		d.forward(request, response);

		

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


	}

}
