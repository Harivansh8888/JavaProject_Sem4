<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New To-Do Details Submission</title>
<link rel="stylesheet"  type="text/css" href="<%=request.getContextPath()%>/css/styles1.css" />
</head>
<body>
	
	<div class="form">
     <form action="addDB.jsp"  method="post">
      
        <label>Enter the To-Do :</label><br>
        <input type="text" name="todo"><br>
        <label>Enter the date for completion (Format example : 5 June 2000) :</label><br>
        <input type="text" name="date"><br>
        <label>Enter the time for completion (Format example : 1:30pm ) :</label><br>
        <input type="text" name="time"><br>
        <input class="submitbtn" type="submit">
      </form>
      
     </div>
    
      <%
         
          //String todo = request.getParameter("todo");
          //String date = request.getParameter("date");
          //String time = request.getParameter("time");
          //request.setAttribute("name",todo);
      
      %>
</body>
</html>