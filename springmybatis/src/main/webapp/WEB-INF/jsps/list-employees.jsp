<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of employees</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-lg bg-body-tertiary navbar-primary bg-primary">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="#">Seguridad</a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
	      <div class="navbar-nav">
	        <a class="nav-link active" aria-current="page" href="#">Home</a>
	        <a class="nav-link" href="#">Maestros</a>
	        <a class="nav-link" href="#">Procesos</a>
	        <a class="nav-link disabled" aria-disabled="true">Reportes</a>
	      </div>
	    </div>
	  </div>
	</nav>

	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
			
			</div>
			<div class="col-sm-12 col-md-8 col-lg-8 col-xl-8">
			
			</div>
		</div>
	</div> 
	<div class="container">
	<div class="row"> 
		<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
			<h5> JC TECHNOLOGIES</h5>
		</div>
		<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
			<h5 align="center"> List of employees</h5>
			<h5 align="center"> JAVA - Spring MVC and Mybatis</h5>
		</div>		
		<div class="col-sm-12 col-md-4 col-lg-4 col-xl-4" align="right">
			<h5 align="center"> @JDHC</h5>
			<button class="btn btn-success" align="center" onclick="window.location.href='showFormForAddEmployee'">Nuevo</button>
		</div>		
			
	</div>
	
	<div style="line-height: 0.75" align="left" >
		<table class="table table-striped table-bordered" >
			<tr bgcolor="lightblue">
				<th> N° </th>
				<th> Full Name </th>
				<th> Email </th>
				<th> Gender </th>
				<th> Hobbies</th>
				<th> Country</th>
				<th> Address</th>
				<th> Action</th>
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
					<td><a href="${updateLink}">Update</a></td>
					<td>
					<a href="${deleteLink}" onclick="if(!(confirm('Are you sure want to delete this record?'))) return false;">Delete</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	</div>
	  
</body>
<p>
<p>
@Copyright JC consultores :-) 22Feb2024
</html>