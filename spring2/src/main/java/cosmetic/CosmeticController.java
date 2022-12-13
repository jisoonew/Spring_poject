package cosmetic;

import java.io.IOException;
import java.lang.reflect.Method;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;


@WebServlet("/cosmetic.nhn")
@MultipartConfig(maxFileSize=1024*1024*2, location="c:/Temp/img")
public class CosmeticController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private CosmeticDAO dao;
	private ServletContext ctx;
	
	private final String START_PAGE = "cosmetic/CosmeticList.jsp";
	
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		dao = new CosmeticDAO();
		ctx = getServletContext();		
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String action = request.getParameter("action");
		
		dao = new CosmeticDAO();
		
		Method m;
		String view = null;
		
		if (action == null) {
			action = "listCosmetic";
		}
		
		try {
			m = this.getClass().getMethod(action, HttpServletRequest.class);
			view = (String)m.invoke(this, request);
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
			ctx.log("요청 action 없음!!");
			request.setAttribute("error", "action 파라미터가 잘못 되었습니다!!");

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(view.startsWith("redirect:/")) {
			String rview = view.substring("redirect:/".length());
			response.sendRedirect(rview);
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);	
		}
	}
    

	public String deleteCosmetic(HttpServletRequest request) {
    	int aid = Integer.parseInt(request.getParameter("cosmetic_id"));
		try {
			dao.delCosmetic(aid);
		} catch (SQLException e) {
			e.printStackTrace();
			ctx.log("화장품 삭제 과정에서 문제 발생!!");
			request.setAttribute("error", "화장품 정보가 정상적으로 삭제되지 않았습니다!!");
			return listCosmetic(request);
		}
		return "redirect:/cosmetic.nhn?action=listCosmetic";
	}

	public String listCosmetic(HttpServletRequest request) {
    	List<Cosmetic> cosmetic11;
		try {
			cosmetic11 = dao.getAll();
	    	request.setAttribute("cosmeticlist", cosmetic11);
		} catch (Exception e) {
			e.printStackTrace();
			ctx.log("화장품 목록 생성 과정에서 문제 발생!!");
			request.setAttribute("error", "화장품 목록이 정상적으로 처리되지 않았습니다!!");
		}
    	return "allPro.jsp";
    }
    
    public String getCosmetic(HttpServletRequest request) {
        int cosmetic_id = Integer.parseInt(request.getParameter("cosmetic_id"));
        try {
			Cosmetic n = dao.getCosmetic(cosmetic_id);
			request.setAttribute("cosmetic", n);
		} catch (SQLException e) {
			e.printStackTrace();
			ctx.log("화장품 정보를 가져오는 과정에서 문제 발생!!");
			request.setAttribute("error", "화장품 정보를 정상적으로 가져오지 못했습니다!!");
		}

    	return "cosmetic/CosmeticView.jsp";
    }
        
	private String getFilename(Part part) {
        String fileName = null;   
        String header = part.getHeader("content-disposition");
        System.out.println("Header => "+header);

        int start = header.indexOf("filename=");
        fileName = header.substring(start+10,header.length()-1);        
        ctx.log("파일명:"+fileName);        
        return fileName; 
	}
}