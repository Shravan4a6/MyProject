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
<h3>Welcome to Part Data Page</h3>
<!-- <a href="excel">Export to Excel</a>|<a href="pdf">Export to Pdf</a> -->
<a href="excel"><img alt="" src="../resources/images/ExcelDownload.png" width="60" height="30" /></a>|<a href="pdf"><img alt="" src="../resources/images/PdfDownload.png" width="60" height="30" /></a>
<c:choose>
<c:when test="${!empty list }">

<table border="1">
	<tr>
	<th>ID</th>
	<th>CODE</th>
	<th>LENGTH</th>
	<th>WIDTH</th>
	<th>HEIGHT</th>
	<th>BASE COST</th>
	<th>BASE CURRENCY</th>
	<th>NOTE</th>
	<th>UOM MODEL</th>
	<th>OM SALE CODE</th>
	<th>OM PURCHASE CODE</th>
	<th colspan="3">OPERATIONS</th>
	</tr>
	
<c:forEach items="${list }" var="ob">
	<tr>
		<td>${ob.partId}</td>
		<td>${ob.partCode }</td>
		<td>${ob.partLen }</td>
		<td>${ob.partWid }</td>
		<td>${ob.partHgt }</td>
		<td>${ob.baseCost}</td>
		<td>${ob.baseCurrency}</td>
		<td>${ob.note}</td>
		<td>${ob.uomOb.uomModel}</td>
		<td>${ob.omSaleOb.orderCode}</td>
		<td>${ob.omPurchaseOb.orderCode}</td>
		<td><a href="delete?pid=${ob.partId}"><img alt="" src="../resources/images/DELETE.jpg" width="35" height="30" /></a></td>
		<td><a href="edit?pid=${ob.partId}"><img alt="" src="../resources/images/EDIT.jpg" width="35" height="30" /></a></td>
		<td><a href="view?pid=${ob.partId}"><img alt="" src="../resources/images/VIEW.jpg" width="35" height="30" /></a></td>

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