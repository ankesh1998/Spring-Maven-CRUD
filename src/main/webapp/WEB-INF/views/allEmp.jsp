<%@page import="java.util.List"%>
<%@page import="com.spring.test.springproject.user.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Employee</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
</head>
<body>
	<%
		if (request.getAttribute("result") != null) {
			String result = (String) request.getAttribute("result");
			out.print("<center><b style='color:green'>" + result + "</b></center>");
		}
	%>


	<div class="row">
		<div class='col-xs-8 col-sm-6 col-xs-offset-2 col-sm-offset-3'>
			<br>
			<table class="table table-striped">
				<thead>
					<tr style="background-color: grey; color: white">
						<th>User ID</th>
						<th>User Name</th>
						<th>User Contact</th>
						<th>User Address</th>
						<th>User Adhaar</th>
						<th colspan="2">Action</th>
					</tr>
				</thead>
				<%
					//out.print(request.getAttribute("result"));

					List<User> user = (List<User>) request.getAttribute("allUser");
					for (User u : user) {
				%>
				<tr>
					<td><%=u.getUser_id()%></td>
					<td><%=u.getUser_name()%></td>
					<td><%=u.getUser_contact()%></td>
					<td><%=u.getUser_address()%></td>
					<td><%=u.getUser_adhaar()%></td>
					<td><button class="btn btn-primary btn-sm"
							onclick="location.href = 'edit_user?prodId=<%=u.getUser_id()%>';">Edit</button>
						<button class="btn btn-primary btn-sm"
							onclick="location.href = 'delete_user?prodId=<%=u.getUser_id()%>';">Delete</button></td>

				</tr>

				<%
					}
				%>
			</table>
		</div>
	</div>
	<div align="center"><a href="index.jsp" class="btn btn-success">Go Back to Home</a></div>

</body>
</html>