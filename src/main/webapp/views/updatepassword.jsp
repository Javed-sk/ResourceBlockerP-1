
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Password</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<style>
  body {
        font-family: Arial, sans-serif;
        background-color: #8d9690;
        margin: 0;
        padding: auto;
    }
.container {
	max-width: 450px;
	margin-top: 50px;
	padding: 30px;
	border: 1px solid black;
	border-radius: 5px;
	background-color: black;
}

h2 {
	margin-bottom: 30px;
	text-align: center;
}

form label {
	font-weight: bold;
}

form input[type="password"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

form input[type="submit"] {
	width: 100%;
	padding: 10px;	
	background-color: #49524c;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}
form input[type="submit"]:hover {
	background-color: #8d9690;
	color: black;
}

</style>
</head>
<body>

<!-- navigation bar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

	<div class="container-fluid">

		<button class="navbar-toggler" type="button" data-mdb-toggle="collapse" data-mdb-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<i class="fas fa-bars"></i>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">

			<h4 style="color: white;"><b>Resource Blocker</b></h4>
			<!-- Left links -->
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				<li class="nav-item">
					<a class="nav-link" href="/welcome" style="color: white;">Home</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/logout" style="color: white;">SignOut</a>
				</li>
			</ul>
		</div>
	</div>
</nav>

<!-- ======= -->


<div class="container">
    <h2 style="color: white;">Update Password</h2>
    <%-- err message --%>
    <% if (request.getAttribute("error") != null) { %>
        <div class="alert alert-danger" role="alert">
            ${error}
        </div>
    <% } %>
    <%-- success message --%>
    <% if (request.getAttribute("message") != null) { %>
        <div class="alert alert-success" role="alert">
            ${message}
        </div>
    <% } %>
    <form action="/updatepassword" method="post">
        <div class="mb-3">
			<label for="oldPassword" class="form-label" style="color: white;">Current Password:</label>
			<input type="password" id="oldPassword" name="oldPassword" class="form-control" required oninvalid="this.setCustomValidity('Old password is empty')" oninput="this.setCustomValidity('')">
		</div>
		<div class="mb-3">
			<label for="newPassword" class="form-label" style="color: white;">New Password:</label>
			<input type="password" id="newPassword" name="newPassword" class="form-control" required oninvalid="this.setCustomValidity('New password is empty')" oninput="this.setCustomValidity('')">
		</div>
		<div class="mb-3">
			<label for="confirmPassword" class="form-label" style="color: white;">Confirm Password:</label>
			<input type="password" id="confirmPassword" name="confirmPassword" class="form-control" required oninvalid="this.setCustomValidity('Confirm Password is empty')" oninput="this.setCustomValidity('')">
		</div>
		<input type="submit" value="Update Password" class="btn btn-primary">
        
    </form>
</div>



</body>
</html>
