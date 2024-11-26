<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<style>
body {
	background-color: #8d9690;
}


.container-fluid a:hover{

		background-color: #8d9690;
		color: black;
	}

.grid-container {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
	grid-gap: 20px;
}

.grid-item {
	border: 1px solid #ccc;
	padding: 20px;
	background-color: #f5f5f5;
	text-align: center;
}
h3{
padding-left: 50px;
}

h2 {
	margin-top: 50px;
	color: #333;
}

.navbar {
	margin-bottom: 20px;
}

.card {
	height: 100%;
	background-color: #161715;
	border-radius: 10px;
}

.card-body {
	display: flex;
	flex-direction: column;
	justify-content: space-between;
}

.card-text {
	margin-bottom: 10px;
}

.card-link {
	margin-top: auto;
}

</style>
</head>
<body>

<!-- Navbar -->
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
					<a class="nav-link" href="/updatepassword" style="color: white;">Update Password</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/logout" style="color: white;">Sign Out</a>
				</li>
			</ul>
		</div>
	</div>
</nav>


<!--   =======   -->


<div class = "text-center">
<h2 style="color: black;"><b>Welcome ${username} </b></h2>
</div>
<br></br>
<div class="container">
	<div class="grid-container" >
		<div class="card" >
			<div class="card-body" style="color: #0c0d0d">
				<h5 class="card-title" style="color: white;">Resource Operations</h5>
				<p class="card-text" style="color: white;">Add/Delete/Update/View resources</p>
				<a href="ResourceOperations" class="btn btn-secondary card-link" style="color: white;">Resources</a>
			</div>
		</div>

		<div class="card">
			<div class="card-body">
				<h5 class="card-title" style="color: white;">Pending Reservations</h5>
				<p class="card-text" style="color: white;">Accept/Reject a resource</p>
				<a href="/pendingReservations" class="btn btn-secondary card-link" style="color: white;">Pending Reservations</a>
			</div>
		</div>

		<div class="card">
			<div class="card-body">
				<h5 class="card-title" style="color: white;">All Reservations</h5>
				<p class="card-text" style="color: white;">View all reservation status</p>
				<a href="/reservations" class="btn btn-secondary card-link" style="color: white;">Reservations</a>
			</div>
		</div>
		
		<div class="card">
			<div class="card-body">
				<h5 class="card-title" style="color: white;">Download Reservations</h5>
				<p class="card-text" style="color: white;">To download Excel sheet of all reservations</p>
				<a href="/downloadExcel" class="btn btn-secondary card-link" style="color: white;">Download</a>
			</div>
		</div>
		
	</div>
</div>
</body>
</html>


<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<style>
body {
	background-color: #8d9690;
}


.container-fluid a:hover{

		background-color: #8d9690;
		color: black;
	}

.grid-container {
	display: grid;
	grid-template-columns: repeat(2, 1fr);
	grid-gap: 20px;
	padding-left: 70px;
	
}

.grid-item {
	border: 1px solid #ccc;
	padding: 20px;
	background-color: #f5f5f5;
	text-align: center;
}
h3{
padding-left: 50px;
}

h2 {
	margin-top: 50px;
	color: #333;
}

.navbar {
	margin-bottom: 20px;
}

.card {
	height: 100%;
	width: 85%;
	background-color: #161715;
	border-radius: 10px;
}

.card-body {
	display: flex;
	flex-direction: column;
	justify-content: space-between;
}

.card-text {
	margin-bottom: 10px;
}

.card-link {
	margin-top: auto;
}

</style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

	<div class="container-fluid">

		<button class="navbar-toggler" type="button" data-mdb-toggle="collapse" data-mdb-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<i class="fas fa-bars"></i>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">

			<h4 style="color: white;"><b>Resource Blocker</b></h4>
			
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				<li class="nav-item">
					<a class="nav-link" href="/updatepassword" style="color: white;">Update Password</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/logout" style="color: white;">Sign Out</a>
				</li>
			</ul>
		</div>
	</div>
</nav>


<!--   =======   -->


<div class = "text-center">
<h2 style="color: black; padding-right: 40px"><b>Welcome Admin</b></h2>
</div>
<br></br>
<div class="container">
	<div class="grid-container" >
		<div class="card" >
			<div class="card-body" style="color: #0c0d0d">
				<h5 class="card-title" style="color: white;">Resource Operations</h5>
				<p class="card-text" style="color: white;">Add/Delete/Update/View resources</p>
				<a href="ResourceOperations" class="btn btn-secondary card-link" style="color: white;">Resources</a>
			</div>
		</div>

		<div class="card">
			<div class="card-body">
				<h5 class="card-title" style="color: white;">Pending Reservations</h5>
				<p class="card-text" style="color: white;">Accept/Reject a resource</p>
				<a href="/pendingReservations" class="btn btn-secondary card-link" style="color: white;">Pending Reservations</a>
			</div>
		</div>

		<div class="card">
			<div class="card-body">
				<h5 class="card-title" style="color: white;">All Reservations</h5>
				<p class="card-text" style="color: white;">View all reservation status</p>
				<a href="/reservations" class="btn btn-secondary card-link" style="color: white;">Reservations</a>
			</div>
		</div>
		
		<div class="card">
			<div class="card-body">
				<h5 class="card-title" style="color: white;">Download Reservations</h5>
				<p class="card-text" style="color: white;">To download Excel sheet of all reservations</p>
				<a href="/downloadExcel" class="btn btn-secondary card-link" style="color: white;">Download</a>
			</div>
		</div>
		
	</div>
</div>
</body>
</html>
 
 --%>
				
 