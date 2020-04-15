<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete ToDo Details</title>
</head>
<body>
// take input from user about the TODO they want to delete and after clicking submit button they are moved to deleteDB which deletes the 
// data of particular TODO
     <form action="deleteDB.jsp"  method="post">
      
        Enter the To Do : <input type="text" name="todo"><br>
        Enter the date for completion (Format example : 5 June 2000) : <input type="text" name="date"><br>
        Enter the time for completion (Format example : 1:30pm ) : <input type="text" name="time"><br>
        <input type="submit">
      
      </form>
</body>
</html>
