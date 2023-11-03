package servlet;


import impli.Regimple;
import inter.Reginter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Requestbean;



/**
 * Servlet implementation class requestservlet
 */
@WebServlet("/requestservlet")
public class Requestservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Requestservlet() {
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
String name=request.getParameter("filename");
System.out.println("Filename"+name);

String user=request.getParameter("patientid");
System.out.println("patientid"+user);


String key=request.getParameter("key");
System.out.println("Username"+key);

	
	Requestbean rbb=new Requestbean();
	rbb.setFilename(name);
	rbb.setPatientid(user);
	rbb.setStatus("request");
	rbb.setKey(key);
	Reginter intf=new Regimple();
	int x=intf.Request(rbb);
	if(x==1)
	{
		response.sendRedirect("file_share_to_admin.jsp");
	}
	else
	{
		response.sendRedirect("Error.jsp");
	}

	}

}
