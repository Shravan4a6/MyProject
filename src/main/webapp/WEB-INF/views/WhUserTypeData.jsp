<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WhUserType Data</title>
</head>
<body>
<h3>Welcome to WhUserType Data Page</h3>
<hr>
<!-- <a href="excel">Export to Excel</a>|<a href="pdf">Export to Pdf</a> -->
<a href="excel"><img alt="" src="../resources/images/ExcelDownload.png" width="60" height="30" /></a>|<a href="pdf"><img alt="" src="../resources/images/PdfDownload.png" width="60" height="30" /></a>
<c:choose>
<c:when test="${!empty list }">

<table border="1">
	<tr>
	<th>ID</th>
	<th>TYPE</th>
	<th>CODE</th>
	<th>USER_FOR</th>
	<th>USER_MAIL</th>
	<th>USER_CONTACT</th>
	<th>USER_ID</th>
	<th>OTHER_ID</th>
	<th>ID_NUMBER</th>
	<th colspan="3">OPERATIONS</th>
	</tr>
	
<c:forEach items="${list }" var="ob">
	<tr>
		<td>${ob.userId }</td>
		<td>${ob.userType }</td>
		<td>${ob.userCode }</td>
		<td>${ob.userFor }</td>
		<td>${ob.userMail }</td>
		<td>${ob.userContact }</td>
		<td>${ob.userIdType }</td>
		<td>${ob.otherId }</td>
		<td>${ob.idNumber }</td>
		<td><a href="delete?wid=${ob.userId }"><img alt="" src="../resources/images/DELETE.jpg" width="35" height="30" /></a></td>
		<td><a href="edit?wid=${ob.userId }"><img alt="" src="../resources/images/EDIT.jpg" width="35" height="30" /></a></td>
		<td><a href="view?wid=${ob.userId }"><img alt="" src="../resources/images/VIEW.jpg" width="35" height="30" /></a></td>

	</tr>
</c:forEach>
</table>
</c:when>
<c:otherwise>
<H4>NO DATA FOUND!!</H4>
</c:otherwise>
</c:choose>

           <a href="register">HOME PAGE</a>

</body>
</html>