// MVC : Controller
package loginout;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login/login_mvc2")
public class LoginServlet_MVC2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

//		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		PrintWriter out = response.getWriter();

		if (id.equals("admin") && pwd.equals("1234")) {
			// id, pwd가 맞으면
			HttpSession session = request.getSession();
			session.setAttribute("ids", id); // 변수 값을 저장: 임의의 "ids"에 id값 저장
			session.setAttribute("pws", pwd);

			RequestDispatcher d = request.getRequestDispatcher("loginout/logout_mvc2.jsp");
//			RequestDispatcher d = request.getRequestDispatcher("../login/loginout/logout_mvc2.jsp");
			d.forward(request, response);
		} else {
			// id, pwd가 틀리면
			out.println("<script>");
			out.println("alert('아이디나 비밀번호가 일치하지 않습니다.')");
			out.println("history.back()");
			out.println("</script>");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
