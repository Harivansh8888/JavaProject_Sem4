<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete ToDo Details</title>
</head>
<body>
 <!--  take input from user about the TODO they want to delete and after clicking submit button they are moved to deleteDB which deletes the data of particular TODO-->
     <form action="deleteDB.jsp"  method="post">
      
        Enter the To Do : <input type="text" name="todo"><br>
        <input type="submit">
      
      </form>
</body>
</html>

