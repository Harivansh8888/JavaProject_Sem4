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
<title>Insert title here</title>
</head>
<body>

 <%! //DECLARATION TAG
   
   Connection con =null;     
   PreparedStatement pst =null;
   Statement st =null;
   
   //Login to database details   
   String url ="jdbc:mysql://localhost:3306/aliens";
   String uname="root";
   String pass="3780";

  //SQL Queries to be implemented
  String query1="insert into todolist values(?,?,?)"; //insert values
  String query2="select * from employee"; //showing values        
  %>

<%
  //getting parameters 
  String todo = request.getParameter("todo"); 
  String date = request.getParameter("date");
  String time = request.getParameter("time");
  //out.print(todo);
  
  
  //Initializations
  Class.forName("com.mysql.jdbc.Driver"); //class forname
  con = DriverManager.getConnection(url, uname, pass);
  pst = con.prepareStatement(query1);
  pst.setString(1, todo);
  pst.setString(2, date);
  pst.setString(3, time);
  int count = pst.executeUpdate();
  

%>

   Number of rows affected is : <%= count %> <!--Expression tag  -->

</body>
</html>
