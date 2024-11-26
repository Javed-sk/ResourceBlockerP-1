<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
	<meta charset="UTF-8">
	<title>Add Resource</title>
	 <style>
       body {
            font-family: Arial, sans-serif;
            background-color: #8d9690;
        }

	   .container-fluid a:hover {
		    background-color: #8d9690;
		    color: black;
		}
	.text{
		
            width: 800px;
            margin: auto;
            padding-top: 100px;
            
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
	
	
	<div class ="text">
    <div class="card mx-4 mx-md-5 shadow-5-strong" style="
    	  
          background: hsla(0, 0%, 100%, 0.8);
          backdrop-filter: blur(30px);
          background-color: black;
          ">
      <div class="card-body py-5 px-md-5">
  
        <div class="row d-flex justify-content-center">
          <div class="col-lg-8">
            <h2 class="fw-bold mb-5" style="color: white;">Add Resource</h2>
            
            <% if (request.getAttribute("message") != null) { %>
		        <div class="alert alert-success" role="alert">
		            ${message}
		        </div>
		    <% } %>
            
            <form action="/addResource" method="post" >
               
              <div class="form-outline mb-4">
                <p style="color: white;"><b>Resource Id:</b></p><input type="text" id="form3Example3" class="form-control" name="rId" required placeholder="Enter Resource Id" oninvalid="this.setCustomValidity('Enter Resource Id')" oninput="this.setCustomValidity('')"/>
                 <label class="form-label" for="form3Example3"></label>
               </div>
 
               <div class="form-outline mb-4">
               <p style="color: white;"><b>Resource Name:</b></p><input type="text" id="form3Example3" class="form-control" name="rName" required placeholder="Enter Resource Name" oninvalid="this.setCustomValidity('Enter Resource Name')" oninput="this.setCustomValidity('')" />
                 <label class="form-label" for="form3Example3"></label>
               </div>
   
               <div class="form-outline mb-4">
                 <p style="color: white;"><b>Resource Type:</b></p><input type="text" id="form3Example4" class="form-control" name="type" required placeholder="Enter Resource Type" oninvalid="this.setCustomValidity('Enter Resource Type')" oninput="this.setCustomValidity('')"/>
                 <label class="form-label" for="form3Example4"></label>
               </div>
 
               <div class="form-outline mb-4">
                 <p style="color: white;"><b>Capacity:</b></p><input type="text" id="form3Example4" class="form-control" name="capacity" required placeholder="Enter Capacity" oninvalid="this.setCustomValidity('Enter Capacity')" oninput="this.setCustomValidity('')"/>
                 <label class="form-label" for="form3Example4"></label>
               </div>
 
               <div class="form-outline mb-4">
                 <p style="color: white;"><b>Location:</b></p><input type="text" id="form3Example4" class="form-control" name = "Location" required placeholder="Enter Location" oninvalid="this.setCustomValidity('Enter Location')" oninput="this.setCustomValidity('')"/>
                 <label class="form-label" for="form3Example4"></label>
               </div>
  
              <button type="submit" class="btn btn-primary btn-block mb-4">
                Add 
              </button>


            </form>
          </div>
        </div>
      </div>
      </div>
</div>
	
</body>
</html>