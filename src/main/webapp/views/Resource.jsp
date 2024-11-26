<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Resource Operations</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #8d9690;
        }
        .container-fluid a:hover {
		    background-color: #8d9690;
		    color: black;
		}
        .grid-container {
			display: grid;
			grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
			grid-gap: 20px;
			/* width: 700px;
			margin: auto; */
		}
		
		.grid-item {
			border: 1px solid #ccc;
			padding: 20px;
			background-color: #f5f5f5;
			text-align: center;
		}

        .card-container {
            /* display: grid; */
            justify-content: center;
            align-items: center;
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
		.navbar {
			margin-bottom: 20px;
		}
		
		.card-text {
			margin-bottom: 10px;
		}
		
		.card-link {
			margin-top: auto;
		}

        h2 {
            margin-top: 50px;
            color: #333;
        }

        input[type="submit"] {
            border: none;
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out;
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


<div class = "text-center">
<h2 style="color: black;"><b>Resource Operations</b></h2>
</div>

<br></br>
<div class="container">
    <div class="grid-container">
    
        <div class="card">
            <div class="card-body" style="color: #0c0d0d">
				<h5 class="card-title" style="color: white;">Add Resource</h5>
				<p class="card-text" style="color: white;">To add resource to the data base</p>
				<a href="/addResource" class="btn btn-secondary card-link" style="color: white;">Add Resource</a>
			</div>
            
        </div>
		

        <!-- <div class="card">
            
             <div class="card-body" style="color: #0c0d0d">
				<p class="card-text" style="color: white;">To update resource to the data base</p>
				<a href="/updateResource" class="btn btn-secondary card-link" style="color: white;">Update Resource</a>
			</div>
            
        </div> -->

        <div class="card">
             <div class="card-body" style="color: #0c0d0d">
				<h5 class="card-title" style="color: white;">Resources List</h5>
				<p class="card-text" style="color: white;">To display all the resources</p>
				<a href="/resources" class="btn btn-secondary card-link" style="color: white;">Display</a>
			</div>
        </div>

		
    </div>
</div>    
</body>
</html>
