package servlet;

import impli.Regimple;
import inter.Reginter;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dbcon.Regdbcon;

import bean.Searchbean;

/**
 * Servlet implementation class Searchservlet
 */
@WebServlet("/Searchservlet")
public class Searchservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Searchservlet() {
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
		String query=request.getParameter("search");
		java.sql.ResultSet rs;
	try {
		Connection con;
		con =Regdbcon.CreateConnection();

PreparedStatement ps=con.prepareStatement("SELECT * FROM `doctorreg`.`register` where email='"+query+"';");
rs=ps.executeQuery();
String result="";
while(rs.next()){
		 result=rs.getString(1);	
		 System.out.println("resultttt"+result);
		
}
if(result!=null){
	response.sendRedirect("search_tableshows.jsp?name="+result);

}
else{
	response.sendRedirect("error.jsp");

}
			
		




} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}


	}

}
