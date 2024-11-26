
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
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
	margin-top: 200px;
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

<div class="container">
    <h2 style="color: white;">Admin Login</h2>
    <%-- err message --%>
    <% if (request.getAttribute("error") != null) { %>
        <div class="alert alert-danger" role="alert">
            ${error}
        </div>
    <% } %>

    <form action="/login" method="post">
       <div class="mb-3">
			<label for="loginName" class="form-label" style="color: white;">User Name:
				<% if (request.getAttribute("Uerror") != null) { %>
					<div style="color: red;">
						${Uerror}
					</div>
				<% } %>
			</label>
			<input type="text" id="username" name="username" class="form-control" >
		</div>
		<div class="mb-3">
			<label for="loginPassword" class="form-label" style="color: white;">Password:
				<% if (request.getAttribute("Perror") != null) { %>
					<div style="color: red;">
						${Perror}
					</div>
				<% } %>
			</label>
			<input type="password" id="password" name="password" class="form-control" >
		</div>
		<input type="submit" value="Sign In" class="btn btn-primary">
        
    </form>
</div>



</body>
</html>
 