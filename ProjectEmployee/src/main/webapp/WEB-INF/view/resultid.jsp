<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.cts.project.model.Employee"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Employee Details</title>
</head>
<body>
<h2>Search result...</h2>
	<div class="container">
		        
		<table class="table table-striped">
			<thead>
				<tr>
					<th>User Id</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>DOB</th>                     
					<th>Salary</th> 
					<th></th>                     
					<th></th>                 
				</tr>
			</thead>
			<tbody>
			<caption>Employee Details</caption>
			<c:forEach items="${lists}" var="item">
				<tr>
					<td>${item.getId()}</td>
					<td>${item.getFname()}</td>
					<td>${item.getLname()}</td>
					<td><fmt:formatDate value="${item.dob}" pattern="dd/MM/yyyy" /></td>
					<td>${item.getSal()}</td>
				</tr>


			</c:forEach>
			</tbody>

		</table>
	</div>


</body>
</html>
