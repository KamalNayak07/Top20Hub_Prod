<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>No of users</title>
</head>
<body>
	<h1>User Details: </h1>

	<div class ="user-table">
	
		<table>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Email</th>
				<th>Contact No</th>
				<th>Company</th>
				<th>Designation</th>
				<th>Intrest</th>
				<th>Facebook</th>
				<th>Google</th>
				<th>Twitter</th>
			</tr>
			
			<c:forEach var="tempUsers" items="${users}">
				<tr>
					<td>${tempUsers.id}</td>
					<td>${tempUsers.name}</td>
					<td>${tempUsers.email}</td>
					<td>${tempUsers.contactNo}</td>
					<td>${tempUsers.company}</td>
					<td>${tempUsers.designation}</td>
					<td>${tempUsers.intrest}</td>
					<td>${tempUsers.f_url}</td>
					<td>${tempUsers.g_url}</td>
					<td>${tempUsers.t_url}</td>
				</tr>
			</c:forEach>
			
		</table>	
	
	
	</div>

</body>
</html>