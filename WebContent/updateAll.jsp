<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="errorPage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update To-Do Details Submission</title>
<link rel="stylesheet"  type="text/css" href="<%=request.getContextPath()%>/css/styles1.css" />

<h3 class="heading">Update ToDo</h3>
</head>
<body>
   
	<div class="form">
     <form action="updateDBAll.jsp"  method="post">
        <label>Enter information of updated To-Do:</label><br>
        <label>Enter the To-Do :</label><br>
        <input type="text" name="todo"><br>
        <label>Enter the Updated date for completion (Format example : 5 June 2000) :</label><br>
        <input type="text" name="date"><br>
        <label>Enter the Updated time for completion (Format example : 1:30pm ) :</label><br>
        <input type="text" name="time"><br>
        <input class="submitbtn" type="submit">
     </form>
     
     </div>
      
     	<div class="footer">
			<p><b>Important:</b> You cannot change the name of To-Do, if you want to then you can delete existing To-Do and then create new one.</p>
		</div>

</body>

    
    
    

</html>
