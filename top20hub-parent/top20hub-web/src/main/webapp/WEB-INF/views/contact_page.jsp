<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cantact Us Page</title>
</head>
<body>

<H1>Welcome to Contact Us Page</H1>

<form:form action="saveContactUs" modelAttribute="contactUs" method="post">
	
		<table>
				<tbody>
						<tr>	
								<td>Name</td>
								<td><form:input path="name"/>
						</tr>	
						<tr>	
								<td>Message</td>
								<td><form:textarea path="message"/>
						</tr>	
						<tr>	
								<td>Email</td>
								<td><form:input path="email"/>
						</tr>	
						<tr>	
								<td>Phone</td>
								<td><form:input path="phone"/>
						</tr>		
						<tr>
							<td colspan="2">
								<input type="submit" value="save"/>
							</td>
						</tr>		
				</tbody>
		</table>


</form:form>
</body>
</html>