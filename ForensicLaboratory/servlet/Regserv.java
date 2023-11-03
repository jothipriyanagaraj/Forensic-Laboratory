package servlet;

import impli.Regimple;
import inter.Reginter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Regbean;

/**
 * Servlet implementation class Regserv
 */
@WebServlet("/Regserv")
public class Regserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Regserv() {
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
	System.out.println("name"+name);
	String pswd=request.getParameter("password");
	System.out.println("password"+pswd);
	String cnfmpswd=request.getParameter("conformpassword");
	System.out.println("comfirmpassword"+pswd);
	String spclztin=request.getParameter("from");
	System.out.println("Specialization"+spclztin);
	String area=request.getParameter("from1");
	System.out.println("Which Area "+area);
	String datenumber=request.getParameter("date");
	System.out.println("date number"+datenumber);
	String num=request.getParameter("Number");
	System.out.println("Number"+num);
	
	
	
	Regbean bb=new Regbean();
	 bb.setName(name);
	 bb.setPassword(pswd);
	 bb.setConfirmpassword(cnfmpswd);
	 bb.setSpecialization(spclztin);
	 bb.setWhichArea(area);
	 bb.setDate(datenumber);
	 bb.setNumber(num);
	 
	 
	 
	 Reginter rr=new Regimple();
	 int j=rr.regist(bb);
	 if(j==1){
		 response.sendRedirect("Doclogjsp.jsp");
	 }
	 else{
		 response.sendRedirect("error");
	 }
	 
	 
	
	}
		
}
