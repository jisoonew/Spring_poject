package loginAndjoin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class userLoginServlet
 */
@WebServlet("/userLogin")
public class userLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				request.setCharacterEncoding("UTF-8");
				response.setContentType("text/html;charset=UTF-8");
				String id = request.getParameter("id");
				String password = request.getParameter("password");
				if(id == null || id.equals("") || password == null || password.equals("")) {
					request.getSession().setAttribute("messageType", "오류 메시지");
					request.getSession().setAttribute("messageContent", "모든 내용을 입력하시오.");
					response.sendRedirect("login.jsp");
					return;
				}
				
				int result = new LoginAndJoinDAO().login(id, password);
				if(result == 1) {
					request.getSession().setAttribute("id", id);
					request.getSession().setAttribute("messageType", "성공 메시지");
					request.getSession().setAttribute("messageContent", "로그인에 성공했습니다.");
					response.sendRedirect("mainHome_login.jsp");
					return;
				} else if(result == 2){
					request.getSession().setAttribute("messageType", "오류 메시지");
					request.getSession().setAttribute("messageContent", "비밀번호를 다시 확인하세요.");
					response.sendRedirect("login.jsp");
					return;
				}
				else if(result == 0){
					request.getSession().setAttribute("messageType", "오류 메시지");
					request.getSession().setAttribute("messageContent", "아이디를 다시 확인하세요.");
					response.sendRedirect("login.jsp");
					return;
				}
				
				else if(result == -1){
					request.getSession().setAttribute("messageType", "오류 메시지");
					request.getSession().setAttribute("messageContent", "DB 오류 발생.");
					response.sendRedirect("login.jsp");
					return;
				}
			}
	}

