<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update ToDo Details Submission</title>
</head>
<body>

     <form action="updateDBAll.jsp"  method="post">
        <p>Enter Information of updated ToDo:</p>
        Enter the To Do : <input type="text" name="todo"><br>
        Enter the Updated date for completion (Format example : 5 June 2000) : <input type="text" name="date"><br>
        Enter the Updated time for completion (Format example : 1:30pm ) : <input type="text" name="time"><br>
        <input type="submit">
     </form>
           
</body>

    <footer>
      {*You cannot change the name of ToDo, if you want to then you can delete existing ToDo and then Create new one.*}
    </footer>
      
</html>