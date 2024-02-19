<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1> List of Employees </h1>
	<h2> JAVA - Developing a database web application using Spring MVC and Mybatis/iBatis</h2>
	<button onclick="window.location.href='showFormForAddEmployee'">Add Employee</button>
	<div>
		<table border="1">
			<tr bgcolor="lightblue">
				<th> N° </th>
				<th> Full Name </th>
				<th> Email </th>
				<th> Gender </th>
				<th> Hobbies</th>
				<th> Country</th>
				<th> Address</th>
				<th> Action</th>
			</tr>
			<c:forEach items="${listemployees}" var="e">
				<c:url var="deleteLink" value="/deleteEmployee">
					<c:param name="employeeId" value="${e.id}"/>
				</c:url>
				<c:url var="updateLink" value="/editEmployee">
					<c:param name="employeeId" value="${e.id}"/>
				</c:url>
				
				<tr>
					<%int index = 1;%>
					<td>${e.id}</td>
					<td>${e.fullname}</td>
					<td>${e.email}</td>
					<td>${e.gender}</td>
					<td>${e.hobbies}</td>
					<td>${e.country}</td>
					<td>${e.address}</td>
					<td>
					<a href="${updateLink}">Update</a>
					<a href="${deleteLink}" onclick="if(!(confirm('Are you sure want to delete this record?'))) return false;">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
	  
</body>
<p>
<p>
@Copyright JC consultores :-) 16Feb2024
</html>