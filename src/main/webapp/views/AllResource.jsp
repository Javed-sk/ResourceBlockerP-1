<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta charset="UTF-8">
<title>Resources</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

<style>
      body {
        font-family: Arial, sans-serif;
        background-color: #8d9690;
        margin: 0;
    }
      .container-fluid a:hover {
		    background-color: #8d9690;
		    color: black;
		}

    h1 {
        color: #333333;
    }
    .navbar {
		margin-bottom: 20px;
	}

    table {
        border-collapse: collapse;
        width: 100%;
    }

       th, td {
        padding: 8px;
        text-align: left;
        border-bottom: 1px solid rgb(7, 7, 7);
        border-right: 1px solid black;
        
    }
 

    
      th {
        background-color: #424543; 
        color: white; 
        font-weight: bold;
   		 }

    td a {
        color: #333333;
        text-decoration: none;
    }

    td a:hover {
        text-decoration: underline;
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
                    <li class="nav-item">
                        <a class="nav-link" href="/ResourceOperations" style="color: white;">Back</a>
                    </li>
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
		<h2 style="color: black;"><b>Resources List</b></h2>
	</div>

    <table border="3" width="75%" cellpadding="1">
        <tr>
            <th>Resource Id</th>
            <th>Resource Name</th>
            <th>Resource Type</th>
            <th>Capacity</th>
            <th>Location</th>
            <th>Update</th>
            <th>DELETE </th>
        </tr>
        <c:forEach var="res" items="${resources}">
            <tr>
                <td>${res.rId}</td>
               <td>${res.rName}</td>
                <td>${res.type}</td>
                <td>${res.capacity}</td>
                 <td>${res.location}</td>
               <td><a href="/updateResource/${res.rId}" style="color: rgb(39, 52, 194);">Update</a></td>
                <div></div><td><a href="/resource/${res.rId}" style="color: rgb(164, 27, 27);">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</body>

</html>
 