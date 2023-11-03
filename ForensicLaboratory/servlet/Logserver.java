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

import bean.Logbean;

/**
 * Servlet implementation class Logserver
 */
@WebServlet("/Logserver")
public class Logserver extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Logserver() {
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
		
		
		
		String name=request.getParameter("Name");
		System.out.println("Name"+name);
		
		
		

		HttpSession ses1= request.getSession(true);
        ses1.setAttribute("mail", name);
		
		
		
		String pswd=request.getParameter("password");
		System.out.println("password"+pswd);
		
		
		Logbean ll=new Logbean();
		ll.setName(name);
		ll.setPassword(pswd);
		
		Reginter ss=new Regimple();
		boolean j=ss.log(ll);
		if(j==true){
			response.sendRedirect("Doctormain.jsp");
		}
		
		else{
			response.sendRedirect("error");
		}
	}

}
