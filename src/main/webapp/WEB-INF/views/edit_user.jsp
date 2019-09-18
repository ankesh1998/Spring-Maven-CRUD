<%@page import="java.util.List"%>
<%@page import="com.spring.test.springproject.user.entity.User"%>
<%@page import="com.spring.test.springproject.user.dao.UserDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit User</title>
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
		User user = (User) request.getAttribute("user");
	%>
	<div class="col-xs-4 col-sm-4 col-xs-offset-4 col-sm-offset-4"
		style="margin-top: 50px">
		<form action="processEditUser" method="post">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th colspan="2" style="text-align: center">User Details</th>
					</tr>
				</thead>
				<tr>
					<td>User ID<span style="color: red">*</span></td>
					<td><input type="text" name="user_id" size="20"
						value="<%=user.getUser_id()%>" readonly /></td>
				</tr>
				<tr>
					<td>User Name<span style="color: red">*</span></td>
					<td><input type="text" name="user_name" size="20"
						value="<%=user.getUser_name()%>" required="required" /></td>
				</tr>

				<tr>
					<td>User Contact<span style="color: red">*</span></td>
					<td><input type="text" name="user_contact" maxlength="10"
						value="<%=user.getUser_contact()%>" required="required"
						pattern="[6789][0-9]{9}"
						title="Please Enter a valid contact number" /></td>
				</tr>
				<tr>
					<td>User Address<span style="color: red">*</span></td>
					<td><input type="text" name="user_address" size="20"
						value="<%=user.getUser_address()%>" required="required" /></td>
				</tr>

				<tr>
					<td>User Adhaar</td>
					<td><input type="text" name="user_adhaar" maxlength="12"
						pattern="[0-9]{12}" title="It must be of 12 digits" value="<%=user.getUser_adhaar()%>" /></td>
				</tr>
			</table>
			<button class="btn btn-primary">Update</button>
		</form>
	</div>
</body>
</html>