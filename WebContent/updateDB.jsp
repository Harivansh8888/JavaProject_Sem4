<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.sql.*"%>  <%--import database package --%>
    <%@ page import="java.io.*" %>
    <%@page import="java.sql.DriverManager" %>
    <%@page import="java.sql.Connection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update ToDo</title>
</head>
<body>

 <%! //DECLARATION TAG
   
   Connection con =null;     
   PreparedStatement pst =null;
   Statement st =null;
   ResultSet rs = null;
   
   //Login to database details   
   String url ="jdbc:mysql://localhost:3306/aliens";
   String uname="root";
   String pass="3780";

         
  %>

<%
  //getting parameters 
  String todo = request.getParameter("todo"); 
  String attribute = request.getParameter("attribute");
  String value = request.getParameter("attValue");
  //out.print(todo);
  
  //SQL Queries to be implemented
  String query1="update todolist set "+attribute+" = ? where ToDo =?"; //insert values
  String query2="select * from todolist"; //showing values 
  
  
  //Initializations =
  
  //1.General initializations
  Class.forName("com.mysql.jdbc.Driver"); //class forname
  con = DriverManager.getConnection(url, uname, pass);
  
  //Query1 initializations / Parameters
  pst = con.prepareStatement(query1);
  pst.setString(2, todo);
  pst.setString(1, value);
  
  
  
  int count = pst.executeUpdate();
  
  //Query2 initializations
  st = con.createStatement();
  rs =st.executeQuery(query2);
  
 

%>

   ToDo's Are :
   <br>
   ToDo &nbsp; &nbsp; &nbsp; &nbsp;   Date &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Time <br> 
     
   <%
   while(rs.next()){
    String todoname = rs.getString(1);
    String todoDate = rs.getString(2);
    String todoTime = rs.getString(3);
   	//String ToDoData = rs.getString(1) +"&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;"+ rs.getString(2) +"&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;"+rs.getString(3)+" \r\n ";
   	out.println(todoname +"&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;"+todoDate+"&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;"+todoTime);
		out.println("<br/>");
		
		//printing all the entries in database
		}
	%>
	<br>
	<br>
	
   Number of rows affected is : <%= count %> <!--Expression tag  -->

</body>
</html>