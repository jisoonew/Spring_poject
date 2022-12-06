package loginAndjoin;

import java.io.IOException;


import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Servlet implementation class LoginAndJoinController
 */
@WebServlet("/LoginAndJoincontrol")
public class LoginAndJoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;

 
	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String id = request.getParameter("id");
		String email_address = request.getParameter("email_address");
		String password = request.getParameter("password1");
		String check_password = request.getParameter("password2");
		
		if(id == null || id.equals("") || email_address == null || email_address.equals("")
				|| password == null || password.equals("") || check_password == null || check_password.equals("")) {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "모든 내용을 입력하시오.");
			response.sendRedirect("join.jsp");
			return;
		}
		if(!password.equals(check_password)) {
		request.getSession().setAttribute("messageType", "오류 메시지");
		request.getSession().setAttribute("messageContent", "비밀번호가 서로 일치하지 않습니다!");
		response.sendRedirect("join.jsp");
		return;
		}
		
		int result = new LoginAndJoinDAO().register(id, email_address, password);
	
		if(result == 1) {
			request.getSession().setAttribute("messageType", "성공 메시지");
			request.getSession().setAttribute("messageContent", "회원가입에 성공했습니다.");
			response.sendRedirect("join.jsp");
			return;
		} else {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "이미 존재하는 회원입니다.");
			response.sendRedirect("join.jsp");
			return;
		}
	}
}
