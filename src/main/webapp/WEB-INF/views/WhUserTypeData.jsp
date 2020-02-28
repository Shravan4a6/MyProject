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
		<td><a href="delete?wid=${ob.userId }">DELETE</a></td>
		<td><a href="edit?wid=${ob.userId }">EDIT</a></td>
		<td><a href="view?wid=${ob.userId }">VIEW</a></td>

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