<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Welcome to ShipmentType Data Page</h3>
<!-- <a href="excel">Export to Excel</a>|<a href="pdf">Export to Pdf</a> -->
<a href="excel"><img alt="" src="../resources/images/ExcelDownload.png" width="60" height="30" /></a>|<a href="pdf"><img alt="" src="../resources/images/PdfDownload.png" width="60" height="30" /></a>
<c:choose>
<c:when test="${!empty list }">

<table border="1">
	<tr>
	<th>ID</th>
	<th>MODE</th>
	<th>CODE</th>
	<th>ENABLE</th>
	<th>GRADE</th>
	<th>NOTE</th>
	<th colspan="3">OPERATIONS</th>
	</tr>
	
<c:forEach items="${list }" var="ob">
	<tr>
		<td>${ob.shipId }</td>
		<td>${ob.shipMode }</td>
		<td>${ob.shipCode }</td>
		<td>${ob.enbShip }</td>
		<td>${ob.shipGrade }</td>
		<td>${ob.shipDesc }</td>
		<td><a href="delete?sid=${ob.shipId }"><img alt="" src="../resources/images/DELETE.jpg" width="35" height="30" /></a></td>
		<td><a href="edit?sid=${ob.shipId }"><img alt="" src="../resources/images/EDIT.jpg" width="35" height="30" /></a></td>
		<td><a href="view?sid=${ob.shipId }"><img alt="" src="../resources/images/VIEW.jpg" width="35" height="30" /></a></td>

	</tr>
</c:forEach>
</table>
</c:when>
<c:otherwise>
<H4>NO DATA FOUND!!</H4>
</c:otherwise>
</c:choose>
<hr>
           <a href="register">HOME PAGE</a>
</body>
</html>