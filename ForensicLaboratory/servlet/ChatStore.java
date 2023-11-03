package servlet;

import impli.Regimple;
import inter.Reginter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Chat_store_bean;

/**
 * Servlet implementation class ChatStore
 */
@WebServlet("/ChatStore")
public class ChatStore extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChatStore() {
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
String name=request.getParameter("Receiver");
String usr=request.getParameter("user"); 
String mes=request.getParameter("message");
System.out.println("nameeeeeeeeee"+name);
System.out.println("mmmmmmmmmmmmmeeesssssssssssss"+mes);
Chat_store_bean cb=new Chat_store_bean();
cb.setName(name);
cb.setMessage(mes);
cb.setUser(usr);


Reginter ri=new Regimple();
int k=ri.chatstorage(cb);
if(k==1){
	response.sendRedirect("successs.jsp");
}
else{
	response.sendRedirect("error.jsp");
}
	}

}
