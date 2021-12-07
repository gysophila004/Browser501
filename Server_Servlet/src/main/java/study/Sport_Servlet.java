package study;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/study/02/Sports")

public class Sport_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Sport_Servlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		String[] sports = req.getParameterValues("sports");
		String gender = req.getParameter("gender");

		PrintWriter out = resp.getWriter();
		out.println("<html><body>");
		for(String s : sports) {
			out.println("좋아하는 운동: " + s +"<br>");
		}
		out.println("annotation방식");
		out.println("</body><html>");

		doGet(req, resp);
	}

}
