<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to Part Page</title>
</head>
<body>
<h3>Welcome to Part Page</h3>
<table border="1">
<tr>
	<th>ID</th><td>${ob.partId}</td>
</tr>
<tr>
	<th>CODE</th><td>${ob.partCode}</td>
</tr>
<tr>
	<th>LENGTH</th><td>${ob.partLen}</td>
</tr>
<tr>
	<th>WIDTH</th><td>${ob.partWid}</td>
</tr>
<tr>
	<th>HEIGHT</th><td>${ob.partHgt}</td>
</tr>
<tr>
	<th>BASE COST</th><td>${ob.baseCost}</td>
</tr>
<tr>
	<th>BASE CURRENCY</th><td>${ob.baseCurrency}</td>
</tr>
<tr>
	<th>NOTE</th><td>${ob.note}</td>
</tr>
</table>
<hr>
<a href="excel?id=${ob.partId}"><img alt="" src="../resources/images/ExcelDownload.png" width="60" height="30" /></a>|<a href="pdf?id=${ob.partId}"><img alt="" src="../resources/images/PdfDownload.png" width="60" height="30" /></a>
<hr>
           <a href="register">HOME PAGE</a>
</body>
</html>