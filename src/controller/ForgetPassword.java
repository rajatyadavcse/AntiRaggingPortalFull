package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.anti.ragging.ComplainIdGenerator;
import com.anti.ragging.MailAcknowledgement;

import model.ForgetPasswordDAO;

/**
 * Servlet implementation class ForgetPassword
 */
@WebServlet("/ForgetPassword")
public class ForgetPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgetPassword() {
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
		int token=new ComplainIdGenerator().generateComplainId();
		String email=request.getParameter("email");
		request.getSession().setAttribute("token", token);
		request.getSession().setAttribute("email", email);
		model.ForgetPassword p=new model.ForgetPassword();
		p.setEmail(email);
		p.setToken(token);
		new ForgetPasswordDAO().addForgetPassword(p);
		String msg="http://localhost:8080/Anti_Ragging/resetPassword.jsp?token="+token;
		MailAcknowledgement.sendMail(email, msg);
		response.sendRedirect("index.jsp");
	}

}
