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
	<h1>Messages Details: </h1>

	<div class ="user-table">
	
		<table>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Message</th>
				<th>Email</th>
				<th>Phone</th>
			</tr>
			
			<c:forEach var="tempUsers" items="${Messages}">
				<tr>
					<td>${tempUsers.id}</td>
					<td>${tempUsers.name}</td>
					<td>${tempUsers.message}</td>
					<td>${tempUsers.email}</td>
					<td>${tempUsers.phone}</td>
				</tr>
			</c:forEach>
			
		</table>	
	
	
	</div>

</body>
</html>