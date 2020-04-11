<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

     <form action="addDB.jsp"  method="post">
      
        Enter the To Do : <input type="text" name="todo"><br>
        Enter the date for completion : <input type="text" name="date"><br>
        Enter the time for completion : <input type="text" name="time"><br>
        <input type="submit">
      
      </form>
      
      <%
         
          //String todo = request.getParameter("todo");
          //String date = request.getParameter("date");
          //String time = request.getParameter("time");
          //request.setAttribute("name",todo);
      
      %>
</body>
</html>
