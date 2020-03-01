<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UOM Data Page</title>
</head>
<body>
<h3>Welcome to Uom Data Page</h3>
<hr>
<!-- <a href="excel">Export to Excel</a>|<a href="pdf">Export to Pdf</a> -->
<a href="excel"><img alt="" src="../resources/images/ExcelDownload.png" width="60" height="30" /></a>|<a href="pdf"><img alt="" src="../resources/images/PdfDownload.png" width="60" height="30" /></a>
<c:choose>
<c:when test="${!empty list }">
<table border="1">
<tr>
<th>ID</th>
<th>TYPE</th>
<th>MODEL</th>
<th>NOTE</th>
<th colspan="3">OPERATIONS</th>
</tr>
<c:forEach items="${list }" var="ob">
<tr>
<td>${ob.uomId }</td>
<td>${ob.uomType }</td>
<td>${ob.uomModel }</td>
<td>${ob.uomDesc }</td>
<td><a href="delete?uid=${ob.uomId }"><img alt="" src="../resources/images/DELETE.jpg" width="35" height="30" /></a></td>
<td><a href="edit?uid=${ob.uomId }"><img alt="" src="../resources/images/EDIT.jpg" width="35" height="30" /></a></td>
<td><a href="view?uid=${ob.uomId }"><img alt="" src="../resources/images/VIEW.jpg" width="35" height="30" /></a></td>
</tr>
</c:forEach>
</table>
</c:when>
<c:otherwise>
<H4>NO DATA FOUND!!</H4>
</c:otherwise>
</c:choose>
<hr/>
      <a href="register">HOME PAGE</a>
</body>
</html>