<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Hello, world!</title>
</head>
<body>

	<div class="container text-center mt-5">
	<h3 class="text-success text-center"><%=(String)request.getAttribute("status")%></h3>
		<h1>Update Employee Details</h1>
		<form action="update" method="post" >

			<div class="form-group">
				<label for="emp_ID">Employee ID</label> <input type="text"
					class="form-control" id="emp_ID" aria-describedby="empHelp"
					placeholder="Enter Id" name="emp_ID">

			</div>

			<div class="form-group">
				<label for="emp_name">Employee Name</label> <input type="text"
					class="form-control" id="emp_name" aria-describedby="nameHelp"
					placeholder="Enter Name" name="emp_name">

			</div>
			<div class="form-group">
				<label for="emp_salary">Employee Salary</label> <input type="text"
					class="form-control" id="emp_salary" aria-describedby="salaryHelp"
					placeholder="Enter Salary" name="emp_salary">

			</div>
			<div class="form-group">
				<label for="emp_gender">Employee Gender</label> <input type="text"
					class="form-control" id="emp_gender" aria-describedby="genderHelp"
					placeholder="Enter Gender" name="emp_gender">

			</div>
			<div class="text-center">
				<button type="submit" class="btn btn-success" >Update</button>
				<a href="/check" class="btn btn-danger" role="button" >Index</a>
			</div>

		</form>

	</div>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>