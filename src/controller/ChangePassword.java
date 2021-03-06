package controller;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.lf5.viewer.LogFactor5InputDialog;

import model.UserLogin;
import model.UserLoginDAO;

/**
 * Servlet implementation class ChangePassword
 */
@WebServlet({ "/ChangePassword", "/change" })
public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePassword() {
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
      String password=request.getParameter("password");
      HttpSession session = request.getSession(false);
      UserLogin user = (UserLogin)session.getAttribute("user");
      String pass=null;
      try {
		pass=UserLoginDAO.sha1(password);
	} catch (NoSuchAlgorithmException e) {
		e.printStackTrace();
	}
      new UserLoginDAO().changePasswordById(user.getId(), pass);
      request.setAttribute("changePassword", "Password Changed successfully!!!!");
      request.getRequestDispatcher("student_dashboard2.jsp").forward(request, response);
      System.out.println("password changed succefully");
	}

}
