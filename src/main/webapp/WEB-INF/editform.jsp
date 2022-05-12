<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Data</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body style="background-color: #bbf6fc">
	<div class="row p-3" style="background-color: #2d2c42">
			<div class="col-10" style="color: white">
				<strong>Welcome To Spring-Boot Crud Application</strong>
			</div>
			<div class="col-1">
				<a href="home" class="btn btn-primary">Home</a>
			</div>
			<div class="col-1">
				<a href="logout" class="btn btn-danger">Logout</a>
			</div>
		</div>
	<div class="row">
		<div class="col-4 offset-4">
			<div class="card p-3 mt-5" style="background-color: #bbaecf">
				<h2>Edit User Details</h2>
				<div class="card-body">
					<form action="saveUser" method="post">
						<div class="row mb-3">
							<div class="col-4">
								<strong>FirstName</strong>
							</div>
							<div class="col-8">
								<input type="hidden" name="userId" required value=${user.userId}>
								<input type="text" name="fName" required value=${user.fName}>
							</div>
						</div>
						<div class="row mb-3">
							<div class="col-4">
								<strong>LastName</strong>
							</div>
							<div class="col-8">
								<input type="text" name="lName" required value=${user.lName}>
							</div>
						</div>
						<div class="row mb-3">
							<div class="col-4">
								<strong>EmailId</strong>
							</div>
							<div class="col-8">
								<input type="text" name="emailId" required value=${user.emailId}>
							</div>
						</div>
						<div class="row mb-3">
							<div class="col-4">
								<strong>MobileNo</strong>
							</div>
							<div class="col-8">
								<input type="number" name="mobileNo" required value=${user.mobileNo}>
							</div>
						</div>
						<div class="col-3 offset-5 mb-3">
							<input type="submit" class="btn btn-success" value="Submit">
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
</body>
</html>