package study;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

// @WebServlet("/study/02/Sports_xml")

public class Sport_Servlet_xml extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Sport_Servlet_xml() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		String[] sports = req.getParameterValues("sports");
		String gender = req.getParameter("gender");

		PrintWriter out = resp.getWriter();

		HttpSession session = req.getSession();
		session.setAttribute("spt", sports); 
		session.setAttribute("gnd", gender);

		RequestDispatcher d = req.getRequestDispatcher("sports_mvc2.jsp?id=hong");
		d.forward(req, resp); 	//전송 요청, 한번 전송 후 되돌아오지 않음 (아래에 더이상 내용이 있어도 수행되지 않음)
								//jsp:include의 경우 전송후 되돌아옴
		
		//forward 해서 실행되지 않는 내용 
		out.println("<html><body>");
		for(String s : sports) {
			out.println("좋아하는 운동: " + s+"<br>");
		}
		out.println("성별 : " + gender);
		out.println("xml방식");
		out.println("</body><html>");
		
		// doGet(req, resp);
	}

}
