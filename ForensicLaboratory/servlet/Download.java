package servlet;



import impli.Regimple;
import inter.Reginter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JDialog;
import javax.swing.JOptionPane;



/**
 * Servlet implementation class Download
 */
@WebServlet("/Download")
public class Download extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Download() {
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
System.out.println("Welcome download page");
		
		
		
		String filename=request.getParameter("filename");
		
		System.out.println("filename---"+filename);
		
		String filekey=request.getParameter("key");
		
		System.out.println("Filekey-----:"+filekey);
		
		Reginter i1=new Regimple();
		
		String filekey1=i1.getpublickey(filename);
		
		System.out.println(filekey1);
		
		JOptionPane jpane=new JOptionPane("Enter secret Key");
		
		JDialog jdialogue=jpane.createDialog("Alert");
		
		jdialogue.setAlwaysOnTop(true);
		
		jdialogue.show();
		
		String typingPrivatekey=JOptionPane.showInputDialog("Enter your Secret Key");
		
		if(filekey1.equalsIgnoreCase(typingPrivatekey)) {
			
			System.out.println("matched");
			PrintWriter out=null;
		try 
			{

			 out=response.getWriter();
			String filepath="D:\\Workspace\\hospitalmanagement\\WebContent\\Local\\";
			
			
		
			
					
					  response.setContentType("APPLICATION/OCTET-STREAM");   
					  response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");   
					  
					  java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath+filename);  
					            
					  int i;   
					  while ((i=fileInputStream.read()) != -1) 
					  {  
					    out.write(i);   
					  }   
					  fileInputStream.close(); 
			}
		catch (Exception e) 
			{
				
				e.printStackTrace();
			}
		}
		else
		{
			System.out.println("Failed");
			
			JOptionPane.showMessageDialog(null,"Sorry Your Key is Wrong");
			
			response.sendRedirect("Error.jsp");
		}
			}
	}

