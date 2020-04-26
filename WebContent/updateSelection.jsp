<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="errorPage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update type selection</title>
<link rel="stylesheet"  type="text/css" href="<%=request.getContextPath()%>/css/styles2.css" />

<h3 class="heading">Update ToDo</h3>
</head>
<body>

     <div class="selection">
       <p class="head">Choose between the two update types for the ToDo list</p>
       <br>
       <br>
       <a href="updateSingle.jsp"><button>Update date or time</button></a>
       <a href="updateAll.jsp"><button>Update both</button></a>
    </div>
    
    <div class="footer">
			<p><b>Important:</b> You cannot change the name of To-Do, if you want to then you can delete existing To-Do and then create new one.</p>
		</div>
</body>

   
</html>