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
<h3>Welcome to OrderMethod Data Page</h3>
<!-- <a href="excel">Export to Excel</a>|<a href="pdf">Export to Pdf</a> -->
<a href="excel"><img alt="" src="../resources/images/ExcelDownload.png" width="60" height="30" /></a>|<a href="pdf"><img alt="" src="../resources/images/PdfDownload.png" width="60" height="30" /></a>
<c:choose>
<c:when test="${!empty list }">

<table border="1">
	<tr>
	<th>ID</th>
	<th>MODE</th>
	<th>CODE</th>
	<th>TYPE</th>
	<th>ACCEPT</th>
	<th>NOTE</th>
	<th colspan="3">OPERATIONS</th>
	</tr>
	
<c:forEach items="${list }" var="ob">
	<tr>
		<td>${ob.orderId }</td>
		<td>${ob.orderMode }</td>
		<td>${ob.orderCode }</td>
		<td>${ob.orderType }</td>
		<td>${ob.orderAccept }</td>
		<td>${ob.description }</td>
		<td><a href="delete?oid=${ob.orderId }"><img alt="" src="../resources/images/DELETE.jpg" width="35" height="30" /></a></td>
		<td><a href="edit?oid=${ob.orderId }"><img alt="" src="../resources/images/EDIT.jpg" width="35" height="30" /></a></td>
		<td><a href="view?oid=${ob.orderId }"><img alt="" src="../resources/images/VIEW.jpg" width="35" height="30" /></a></td>

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