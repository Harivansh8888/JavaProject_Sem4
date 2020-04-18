<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.sql.*"%>  <%--import database package --%>
    <%@ page import="java.io.*" %>
    <%@page import="java.sql.DriverManager" %>
    <%@page import="java.sql.Connection" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Displaying ToDo List </title>
  
  <%
         //Date date = new Date();
         out.print( "<h2 align = \"center\">" +(new java.util.Date()).toLocaleString()+"</h2>");
      %>
      
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
     String query="select * from todolist"; //showing values        
  %>
  
  
  <%
    
     //Initializations =
  
     //1.General initializations
     Class.forName("com.mysql.jdbc.Driver"); //class forname
     con = DriverManager.getConnection(url, uname, pass);
    
     //Query initializations
     st = con.createStatement();
     rs =st.executeQuery(query);

  %>
  
  
  <div class="todoentries">
  <% //Display todo 
     while(rs.next()){
 		String ToDoData = rs.getString(1) +"&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;"+ rs.getString(2) +"&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;"+rs.getString(3)+" \r\n ";
 		out.println(ToDoData+"<br/>");}
 		//printing all the entries in database
 		%>
 		
 </div> 		
  
  <br>
  <br>
  
  <div class="buttons">
   
        <p>Wan't to try more :</p>
        <a href="add.jsp"><button>Add ToDo</button></a>
        <a href="delete.jsp"><button>Delete ToDo</button></a>
        <a href="display.jsp"><button>Display ToDo's</button></a>
        <a href="updateSelection.jsp"><button>Update ToDo</button></a>
   
   </div>


</body>
</html>