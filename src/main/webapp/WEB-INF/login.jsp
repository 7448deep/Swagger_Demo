<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-4 offset-4  mt-5">
				<div class="card" style="background-color: #94e4f2">
					<div class="card-body">
						<form action="login" method="post">
							<div class="mb-3">
								<label class="form-label">Username</label> <input type="text"
									class="form-control" id="username" name="username" autocomplete="off">

							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" class="form-control" name="password"
									id="password" autocomplete="off">
							</div>

							<button type="submit" class="btn btn-primary">Login</button>
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>

</body>
</html>