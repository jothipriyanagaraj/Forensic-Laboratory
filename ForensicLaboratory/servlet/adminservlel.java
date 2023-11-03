package servlet;

import impli.Regimple;
import inter.Reginter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Adminbean;

/**
 * Servlet implementation class adminservlel
 */
@WebServlet("/adminservlel")
public class adminservlel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminservlel() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	String name=request.getParameter("username");
	System.out.println("username"+name);
	String file=request.getParameter("filename");
	System.out.println("filename"+file);
	String key=request.getParameter("key");
	System.out.println("key"+key);
	
	Adminbean abb=new Adminbean();
abb.setUsername(name);
abb.setFilename(file);
abb.setKey(key);



Reginter rrr=new Regimple();
int  xx=rrr.adminpage(abb);

System.out.println("vxcvcx"+xx);
if(xx==1){
	response.sendRedirect("Admin_main_page.jsp");

}
	else{
		response.sendRedirect("Admin_main_page.jsp");
	}
	}

	
	}

