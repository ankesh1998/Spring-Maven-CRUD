<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<style>
.error {
	color: #ff0000;
	font-style: italic;
	font-weight: bold;
}
</style>
</head>
<body>

	<div align="center" style="margin-top: 50px">
		<form:form method="POST" action="userRegistration"
			modelAttribute="user">
			<table>

				<tr>
					<td>User Name<span style="color: red">*</span></td>
					<td><form:input path="user_name" /></td>
					<td><form:errors path="user_name" cssClass="error" /></td>
				</tr>
				<tr>
					<td>User Contact<span style="color: red">*</span></td>
					<td><form:input path="user_contact" /></td>
					<td><form:errors path="user_contact" cssClass="error" /></td>
				</tr>
				<tr>
					<td>User Address<span style="color: red">*</span></td>
					<td><form:input path="user_address" /></td>
					<td><form:errors path="user_address" cssClass="error" /></td>
				</tr>
				<tr>
					<td>User Adhaar</td>
					<td><form:input path="user_adhaar" /></td>
					<td><form:errors path="user_adhaar" cssClass="error" /></td>
				</tr>
				<tr>
					<td colspan="3"><br>
					<input type="submit" value="Register"></td>
				</tr>
			</table>

		</form:form>
	</div>
</body>
</html>