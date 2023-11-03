package servlet;

import impli.Regimple;
import inter.Reginter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Patientlogbean;

/**
 * Servlet implementation class Patientlogin
 */
@WebServlet("/Patientlogin")
public class Patientlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Patientlogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("patientname");
		
		HttpSession ses=request.getSession(true);

		ses.setAttribute("user", name);

		
		
		System.out.println("patientid"+name);
		String pswd=request.getParameter("Password");
		System.out.println("password"+pswd);
		
		Patientlogbean pr=new Patientlogbean();
		pr.setYourname(name);
		pr.setPassword(pswd);
		
		Reginter i=new Regimple();
		boolean j=i.Patientlog(pr);
		
		if(j==true){
			response.sendRedirect("patientmain.jsp");
		}
		else{
			response.sendRedirect("error");
			
		}
			}
}
