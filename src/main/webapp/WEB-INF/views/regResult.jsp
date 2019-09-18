
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>


<%
String result =(String)request.getAttribute("result");
out.print("<center>"+result+"<center>");
%>
<center>
<a href="index.jsp" style="text-decoration: none">
<button>Go Back</button></a>
</center>
</body>
</html>