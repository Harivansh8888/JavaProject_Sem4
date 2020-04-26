<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="errorPage.jsp"%>
    
    <%@ page import="java.sql.*"%>  <%--import database package --%>
    <%@ page import="java.io.*" %>
    <%@page import="java.sql.DriverManager" %>
    <%@page import="java.sql.Connection" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update ToDo</title>
<link rel="stylesheet"  type="text/css" href="<%=request.getContextPath()%>/css/styles3.css" />

  <div class="time">
     <%
         //Date date = new Date();
         out.print( "<h2 align = \"center\">" +(new java.util.Date()).toLocaleString()+"</h2>");
      %>
  </div> 
      
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

   
<div class="todoentries"> 
   <br>
   <p class="head1">ToDo's Are :</p>
   
   
   <p class="head2">ToDo &nbsp; &nbsp; &nbsp; &nbsp;   Date &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Time</p> 
   
   <p class="todolist"> 
   <%
   while(rs.next()){
    String todoname = rs.getString(1);
    String todoDate = rs.getString(2);
    String todoTime = rs.getString(3);
   	//String ToDoData = rs.getString(1) +"&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;"+ rs.getString(2) +"&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;"+rs.getString(3)+" \r\n ";
   	out.println(todoname +"&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;"+todoDate+"&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;"+todoTime);
		out.println("<br/>");
		
		//printing all the entries in database
		}
	%>
	</p>
</div> 		
	<br>
	<br>
	
   
	
   <div class="bottom">
   
        <p class="more">Wan't to try more :</p>
        <div class="button">
           <a href="add.jsp"><button class="btn1">Add ToDo</button></a>
           <a href="delete.jsp"><button class="btn2">Delete ToDo</button></a>
           <a href="display.jsp"><button class="btn3">Display ToDo's</button></a>
           <a href="updateSelection.jsp"><button class="btn4">Update ToDo</button></a>
        </div>
   </div>

</body>
</html>