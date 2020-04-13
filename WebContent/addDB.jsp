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
<title>Add ToDo</title>
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

  //SQL Queries to be implemented
  String query1="insert into todolist values(?,?,?)"; //insert values
  String query2="select * from todolist"; //showing values        
  %>

<%
  //getting parameters 
  String todo = request.getParameter("todo"); 
  String date = request.getParameter("date");
  String time = request.getParameter("time");
  //out.print(todo);
  
  
  //Initializations =
  
  //1.General initializations
  Class.forName("com.mysql.jdbc.Driver"); //class forname
  con = DriverManager.getConnection(url, uname, pass);
  
  //Query1 initializations 
  pst = con.prepareStatement(query1);
  pst.setString(1, todo);
  pst.setString(2, date);
  pst.setString(3, time);
  int count = pst.executeUpdate();
  
  //Query2 initializations
  st = con.createStatement();
  rs =st.executeQuery(query2);
  
 

%>

   ToDo's Are : <br>
   ToDo     Date      Time <br> 
   
   
   <%
     while(rs.next()){
		
		String ToDoData = rs.getString(1) + rs.getString(2) +rs.getString(3)+" \r\n ";
		out.println(ToDoData+"<br/>");
		//printing all the entries in database
	}%>
	
	
   Number of rows affected is : <%= count %> <!--Expression tag  -->

</body>
</html>