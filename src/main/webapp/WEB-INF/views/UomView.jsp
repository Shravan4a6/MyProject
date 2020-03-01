<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to Uom Page</title>
</head>
<body>
<h3>Welcome to Uom Page</h3>
<hr>
<table border="1">
<tr>
	<th>ID</th><td>${ob.uomId}</td>
</tr>
<tr>
	<th>TYPE</th><td>${ob.uomType}</td>
</tr>
<tr>
	<th>MODEL</th><td>${ob.uomModel}</td>
</tr>
<tr>
	<th>NOTE</th><td>${ob.uomDesc}</td>
</tr>
</table>
<hr>
<a href="excel?id=${ob.uomId}"><img alt="" src="../resources/images/ExcelDownload.png" width="60" height="30" /></a>|<a href="pdf?id=${ob.uomId}"><img alt="" src="../resources/images/PdfDownload.png" width="60" height="30" /></a>
<hr>
           <a href="register">HOME PAGE</a>
</body>
</html>