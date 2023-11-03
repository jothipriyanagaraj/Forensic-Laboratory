package servlet;

import impli.Regimple;
import inter.Reginter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Sharebean;

/**
 * Servlet implementation class Share
 */
@WebServlet("/Share")
public class Share extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Share() {
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
		String file=request.getParameter("username");
		
		String m=request.getParameter("mes");
		String p=request.getParameter("pat");

		
		String em=request.getParameter("emessage");
		
		System.out.println("file"+file);
		String size=request.getParameter("filename");
		System.out.println("size"+size);
		String encrypt=request.getParameter("key");
		System.out.println("encrypt"+encrypt);
		
		Sharebean sbb=new Sharebean();
		sbb.setFile(file);
		sbb.setPat(p);
		sbb.setPres(m);
		sbb.setEmeesage(em);

		sbb.setSize(size);
		sbb.setEncrypt(encrypt);
		
		
		Reginter  u=new  Regimple();
		
		int i=u.sharepage(sbb);
		
		if(i==1)
		{
			
			
			
	response.sendRedirect("Doctormain.jsp");		
		}
		else
			{
			
			response.sendRedirect("error.jsp");
			
		}
		
	}

}
