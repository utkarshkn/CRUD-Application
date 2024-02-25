<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Page</title>
</head>
<body>
	<div class="login-container">
		<h1>Update Information</h1>
		<div class="successmsg">
			<%
			if (request.getAttribute("successmsg") != null) {
				out.println(request.getAttribute("successmsg"));
			}
			%>
		</div>

		<form action="update" method="post">
			<label for="id">ID:</label> <input type="text" id="id" name="id"
				placeholder="Enter Id to Update" required> <label for="name">Name:</label>
			<input type="text" id="name" name="name"
				placeholder="Enter Updated Name" required> <label
				for="email">Email:</label> <input type="email" id="email"
				name="email" placeholder="Enter Updated Email" required> <label
				for="age">Age:</label> <input type="text" id="age" name="age"
				placeholder="Enter Updated Age" required> <label for="mno">Mobile
				Number:</label> <input type="text" id="mno" name="mno"
				placeholder="Enter Updated Mobile Number" required>

			<div class="errormsg">
				<%
				if (request.getAttribute("errormsg") != null) {
					out.println(request.getAttribute("errormsg"));
				}
				%>
			</div>
			<button type="submit">Update</button>
			<br> <a href="view">Main Menu</a>
		</form>
	</div>
</body>
</html>


<style>

.successmsg{
color:green;
}

.errormsg{
color:red;
}

* {
	margin: 0;
	padding: 0;
}

/* Apply styles to the login container */
.login-container {
	width: 300px;
	margin: 50px auto;
	padding: 20px;
	background-color: #f9f9f9;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

/* Style the heading */
h1 {
	text-align: center;
	margin-bottom: 20px;
	color: #333;
}

/* Style the form */
form {
	display: flex;
	flex-direction: column;
}

/* Style form labels */
label {
	margin-bottom: 5px;
}

/* Style form inputs */
input[type="text"], input[type="email"] {
	padding: 8px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

/* Style submit button */
button[type="submit"] {
	padding: 10px;
	background-color: #007bff;
	color: #fff;
	border: none;
	border-radius: 3px;
	cursor: pointer;
}

button[type="submit"]:hover {
	background-color: #0056b3;
}
</style>