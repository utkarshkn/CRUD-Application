<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main Menu</title>
</head>
<body>

<h1>Utkarsh Software Services Welcomes You !!! </h1>

<form method="post">

		<h2>......Operations......</h2>
		<div> 
			<button type="submit" formaction="insertPage" class="button">Insert</button>
			<button type="submit" formaction="updatePage" class="button">Update</button>
			<button type="submit" formaction="deletePage" class="button">Delete</button>
			<button type="submit" formaction="get" class="button">Get Data</button>
		</div>
	</form>
</body>
</html>


<style>
body, html {
  height: 100%;
  margin: 0;
  padding: 0;
}

.container {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100%;
  font-family: Arial, sans-serif;
  background-color: #f8f9fa; /* Minimalistic background color */
}

.content {
  max-width: 600px;
  padding: 20px;
  background: #fff;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
  text-align: center;
  color: #007bff; /* Change the color of "Utkarsh" */
}

form {
  padding: 20px 0;
  text-align: center;
}

h2 {
  color: #333;
}

.button {
  display: inline-block;
  padding: 10px 20px;
  margin: 10px;
  border: none;
  border-radius: 5px;
  font-size: 16px;
  color: #fff;
  background-color: #4CAF50;
  cursor: pointer;
  transition: background-color 0.3s;
}

.button:hover {
  background-color: #45a049;
}
</style>