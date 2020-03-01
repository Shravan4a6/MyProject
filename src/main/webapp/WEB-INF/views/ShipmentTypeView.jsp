<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to ShipmentType Page</title>
</head>
<body>
<h3>Welcome to ShipmentType Page</h3>
<table border="1">
<tr>
	<th>ID</th><td>${ob.shipId}</td>
</tr>
<tr>
	<th>MODE</th><td>${ob.shipMode}</td>
</tr>
<tr>
	<th>CODE</th><td>${ob.shipCode}</td>
</tr>
<tr>
	<th>ENABLE</th><td>${ob.enbShip}</td>
</tr>
<tr>
	<th>GRADE</th><td>${ob.shipGrade}</td>
</tr>
<tr>
	<th>NOTE</th><td>${ob.shipDesc}</td>
</tr>
</table>
<hr>
<a href="excel?id=${ob.shipId}"><img alt="" src="../resources/images/ExcelDownload.png" width="60" height="30" /></a>|<a href="pdf?id=${ob.shipId}"><img alt="" src="../resources/images/PdfDownload.png" width="60" height="30" /></a>
<hr>
           <a href="register">HOME PAGE</a>
</body>
</html>