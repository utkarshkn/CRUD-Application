<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Data</title>
</head>
<body>
	<form action="get">
	<h1>Student Information</h1>
		<table>
			<tr id="head">
				<td>Id</td>
				<td>Name</td>
				<td>Email</td>
				<td>Age</td>
				<td>Mobile Number</td>
			</tr>

			<%
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/TKA", "root", "Utkadkar@123");
			Statement st = cn.createStatement();
			ResultSet rs = st.executeQuery("select * from Student");
			while (rs.next()) {
				out.println("<tr><td>" + rs.getInt(1) + "</td><td>" + rs.getString(5) + "</td><td>" + rs.getString(3) + "</td><td>"
				+ rs.getInt(2) + "</td><td>" + rs.getLong(4) + "</td></tr>");
			}
			%>

		</table>
	</form>
</body>
</html>

<style>
 * {
  margin: 0;
  padding: 0;
}

/* Apply styles to the heading */
h1 {
  text-align: center;
  margin-bottom: 20px;
  color: #333";
}

/* Style the table */
table {
  width: 100%;
  border-collapse: collapse;
  margin-top: 20px;
}

#head{
color: blue;
}

/* Style table header */
th {
  background-color: #007bff;
  color: #fff;
  padding: 10px;
  text-align: left;
}

/* Style table rows */
tr:nth-child(even) {
  background-color: #f2f2f2;
}

/* Style table data cells */
td {
  padding: 8px;
  border: 1px solid #ddd;
}

/* Hover effect on table rows */
tr:hover {
  background-color: #ddd;
}
</style>