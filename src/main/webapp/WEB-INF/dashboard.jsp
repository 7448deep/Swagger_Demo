<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Of employee</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<style >

.user_list {
	height: 500px;
	overflow-x: hidden;
	overflow-y: auto;
	text-align: justify;
}

</style>
</head>

<body style="background-color: #f0fab6">
	<div class="container-fluid" >
		<div class="row p-3" style="background-color: #2d2c42">
			<div class="col-8" style="color: white">
				<strong>Welcome To Spring-Boot Crud Application</strong>
			</div>
			<div class="col-2">
				<a href="openfrom" class="btn btn-primary">Add new User </a>
				
			</div>
			<div class="col-1">
			<a href="deleteAll" class="btn btn-primary">Delete All</a>
			</div>
			<div class="col-1">
				<a href="logout" class="btn btn-danger">Logout</a>
			</div>
		</div>
		<marquee><h4>Please delete all records after using the application</h4></marquee>
		<div class="user_list col-8  offset-1" style="background-color: #38f5b3">
			<div class="m-4">
				<H2>List Of Employees</H2>
			</div>
			<table class="table">
				<tr>
				<th>FirstName</th>
				<th>LastName</th>
				<th>Email</th>
				<th>Mobile</th>
				<th>Edit</th>
				<th>Delete</th>
				</tr>
				
				<c:forEach items="${list}" var="item">
					<tr>
						<td>${item.fName}</td>
						<td>${item.lName}</td>
						<td>${item.emailId}</td>
						<td>${item.mobileNo}</td>
						<td>
							<form action="OpenEditform" method="post">
								<input type="hidden" name="userId" value=${item.userId}>
								<input type=submit class="btn btn-primary" value="Edit">
							</form>
						</td>
						<td>
							<form action="deleteuser" method="post">
								<input type="hidden" name="userId" value=${item.userId}>
								<input type=submit class="btn btn-danger" value="Delete">
							</form>
						</td>
						
					</tr>
					
    				
				</c:forEach>

			</table>
		</div>
	</div>
</body>
</html>