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
<style type="text/css">
	div{
		text-align: center;
	}
	.container{
		background-color: #e7e7e7;
		text-align: center;
		border:solid
	}
	body{
		background-color:#F8E1A6;
	}
	h2{
		text-align: center;
	}
	#button1{
		background-color:green;
	}
	#button2{
		background-color:red;
	}
	.form-group{
	padding-top:10px;
	}
	.col-sm-3{
		text-align:left;
	}
	.row{
		padding-top:10px;
	}
</style>
</head>
<body>
<h2>Employee details!!</h2>

<div class="container">
<div class="row">
<form action="/result" method="post">
	<div class="form-group">
	
	
	
	<input class="btn btn-primary" type="submit" value="List of all Employee"/>
	</div>
	
</form>
</div>
 <div class="row">
 <form action="/resultid" method="post">
	<div class="form-group">
	<div class="col-sm-4"></div>
	<div class="col-sm-2">
	<input class="form-control" id="empId"type="text" name="id" placeholder="Employee Id" maxLength="1"/>
	</div>
	<div class ="col-sm-3">
	<input class="btn btn-primary"  type="submit" value="Search for Employee" />
	</div>
	</div>
	
</form>
</div>
<div class="row"></div>
<div class="row">
<form action="/resulthigh" method="post">
<div class="col-sm-4"></div>

<div class="col-sm-2">
	<div class="form-group">
	<input class="btn btn-primary" id="button1"type="submit" value="Highest Salary"/>
	</div>
	</div>
	
</form>

<form action="/resultlow" method="post">
	<div class="form-group">
	
	
	<div class="col-sm-2">
	<input class="btn btn-primary"id="button2" type="submit" value="Lowest Salary"/>
	</div>
	</div>
	
</form>
</div>


</div>





</body>
</html>