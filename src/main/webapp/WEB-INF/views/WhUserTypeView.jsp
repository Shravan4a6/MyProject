<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WhUserType Page</title>
</head>
<body>
<h3>Welcome to WhUserType Page</h3>
<table border="1">
<tr>
	<th>ID</th><td>${ob.userId}</td>
</tr>
<tr>
	<th>TYPE</th><td>${ob.userType}</td>
</tr>
<tr>
	<th>CODE</th><td>${ob.userCode}</td>
</tr>
<tr>
	<th>USER_FOR</th><td>${ob.userFor}</td>
</tr>
<tr>
	<th>EMAIL</th><td>${ob.userMail}</td>
</tr>
<tr>
	<th>CONTACT</th><td>${ob.userContact}</td>
</tr>
<tr>
	<th>ID_TYPE</th><td>${ob.userIdType}</td>
</tr>
<tr>
	<th>OTHER_ID</th><td>${ob.otherId}</td>
</tr>
<tr>
	<th>OTHER_ID_NUMBER</th><td>${ob.idNumber}</td>
</tr>
</table>
<hr>
<a href="excel?id=${ob.userId}"><img alt="" src="../resources/images/ExcelDownload.png" width="60" height="30" /></a>|<a href="pdf?id=${ob.userId}"><img alt="" src="../resources/images/PdfDownload.png" width="60" height="30" /></a>
<hr>
           <a href="register">HOME PAGE</a>
</body>
</html>