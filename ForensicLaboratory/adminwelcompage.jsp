
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="dbcon.Regdbcon" %>


<!DOCTYPE html>
<html>	
<head>
<title>Remedial Appointment Form with Flat Responsive widget Design :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<meta name="keywords" content="Remedial Appointment Form Bootstrap Responsive Templates, Iphone Compatible Templates, 

Smartphone Compatible Templates, Ipad Compatible Templates, Flat Responsive Templates"/>
<link href="css1/easy-responsive-tabs.css1" rel='stylesheet' type='text/css'/>
<link href="css1/jquery-ui.css1" rel="stylesheet" type="text/css" media="all" />
<link href="css1/style.css" rel='stylesheet' type='text/css' />
<!--webfonts-->
<link href="//fonts1.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
<!--//webfonts-->

</head>
<style>   
.navbar {
    overflow: hidden;
    background-color: #333;
    font-family: Arial, Helvetica, sans-serif;
text-align:center;
}

.navbar a {
    float: left;
    font-size: 16px;
    color: white;
    text-align:center;
    padding: 14px 16px;
    text-decoration: none;
    text-align:center;
    
}

.dropdown {
    float: left;
    overflow: hidden;
    text-align:center;
    
}

.dropdown .dropbtn {
    font-size: 16px;    
    border: none;
    outline: none;
    color: red;
    padding: 14px 16px;
    background-color: inherit;
    font-family: inherit;
    margin: 0;
    text-align:center;
    
}

.navbar a:hover, .dropdown:hover .dropbtn {
    background-color: red;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
    text-align:center;
    
}

.dropdown-content a {
    float: none;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align:center;
}

.dropdown-content a:hover {
    background-color: #ddd;
}

.dropdown:hover .dropdown-content {
    display: block;
}

      
.a{

height:712px;
width:100%;

}

.b{

height:200px;
width:100%;
text-align: center;

}
.b1{

height:150px;
width:100%;


}
.b2{

height:50px;
width:100%;
text-align: center;

}
.b21{

height:50px;
width:20%;
float:left;

}
.b22{

height:50px;
width:60%;
  float:left;

}
.b23{

height:50px;
width:0.5%;
float:left;

}

.c{

height:512px;
width:100%;


}
.c1{
height:500px;
width:33%;
float:left;
}
.c2{
height:500px;
width:33%;
float:left;

}
.c3{
height:500px;
width:33%;
float:left;

}


table, th, td {
    border-collapse: collapse;
    border:3px solid blue;
}
th, td {
    padding: 10px;
    text-align: left;    
}










</style>
<body>

				
				
		
						<div class="a">
						
						
						<div class="b">
						
						
						
						<div class="b1">
						<marquee><h1>ONLINE HOSPITAL MANAGEMENT</h1></marquee>
						
						</div>
						
						<div class="b2">
						<div class="b21">
						
						</div>
						<div class="b22">
						
							<div class="navbar">

  <a href="patient_mainpage.jsp">Home</a>
    <a href="search.jsp">search</a>
           
       
   <a href="doctor_notification.jsp">Admin accept for request()</a>
  <a href="Doclogjsp.jsp">Logout</a>
   <a href="accepted.jsp">inbox</a>
  

			
						
						</div>
						
						
						
								</div>
						
						

						
						</div>
						
						
						</div>
						
						<div class="c">
						<div class="c1">
						
						</div>
						<div class="c2">
						 <table  align="center" style="margin-top: 100px; width:50%;color:white">
			<tr>
<th  align="center">To</th>
<th  align="center">Message</th>
<th  align="center">Status</th>



	
	</tr>
   
   
  
		  <%
		  
   
 
   String to="";
   String mes="";
 
   
   
	Connection con=null;

   
   
   con=Regdbcon.CreateConnection();
	PreparedStatement ps1=con.prepareStatement("SELECT * FROM `doctorreg`.`message`");
   
	ResultSet rs=ps1.executeQuery();

	while(rs.next()){
		
		to=rs.getString(1);
		mes=rs.getString(2);
	
	%>
		
		
	<tr>
		<td align="left"><%=to%></td>
<td align="left"><%=mes%></td>




<td align="left"><a href="File_upload.jsp"><button>Reply</button></a></td>


	
		</tr>
		
		
		
	<%} %>
	
	
		


	
		
		
		
	
	
	
	
	

	
	</table>
	   
						</div>
						<div class="c3">
						
						</div>
						</div>
								
								
											
						
					
					     </div>

		
	
 	
</body>
</html>