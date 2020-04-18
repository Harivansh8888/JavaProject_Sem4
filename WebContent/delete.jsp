<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete To-Do Details</title>
<link rel="stylesheet"  type="text/css" href="<%=request.getContextPath()%>/css/styles1.css" />
</head>
<body>
 <!--  take input from user about the TODO they want to delete and after clicking submit button they are moved to deleteDB which deletes the data of particular TODO-->
   
	<div class="form">
     <form action="deleteDB.jsp"  method="post">
      
        <label>Enter the To-Do :</label><br>
        <input type="text" name="todo"><br>
        <input class="submitbtn" type="submit">
      
      </form>
     </div>
    
</body>
</html>

