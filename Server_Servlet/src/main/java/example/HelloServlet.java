package example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Hello") //http://localhost:8080/Server_Servlet/ > Hello < ?id=hong 같은 식으로 테스트 가능
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//결과: 안녕하세요. (hong)님
		//	http://localhost:8080/Server_Servlet/Hello
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();

		
		String id = request.getParameter("id");
		out.println("안녕하세요." + id + "님");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
