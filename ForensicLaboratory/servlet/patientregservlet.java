package servlet;

import impli.Regimple;
import inter.Reginter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Patientregbean;

/**
 * Servlet implementation class patientregservlet
 */
@WebServlet("/patientregservlet")
public class patientregservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public patientregservlet() {
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
		String name=request.getParameter("Your name");
		System.out.println("Your name"+name);
		String pswd=request.getParameter("Password");
		System.out.println("Password"+pswd);
		String cnfmpswd=request.getParameter("confirmpassword");
		System.out.println("confirmpassword"+cnfmpswd);
		String mail=request.getParameter("Email");
		System.out.println("Email"+mail);
		String number =request.getParameter("Phone number");
		System.out.println("Phone number"+number);
		String gender=request.getParameter("gender");
		System.out.println("gender"+gender);
		String option=request.getParameter("ch");
		System.out.println("category2"+option);
		String date=request.getParameter("Text");
		System.out.println("date"+date);
		
		String id=request.getParameter("patientid");
		System.out.println("patientid"+id);
		
		Patientregbean prb=new Patientregbean();
		prb.setName(name);
		prb.setPswd(pswd);
		prb.setCnfmpswd(cnfmpswd);
		prb.setMail(mail);
		prb.setNumber(number);
		prb.setGender(gender);
		prb.setOption(option);
		prb.setDate(date);
		prb.setPatientid(id);
		
		
		Reginter pr=new Regimple();
		int j=pr.patientregister(prb);
		if(j==1){
			response.sendRedirect("Patientlog.jsp");
		}
		else{
			response.sendRedirect("error");
			
			
		}
		
	}

}
