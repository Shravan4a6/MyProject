<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OrderMethod Register Page</title>
</head>
<body>
	<h2>Welcome to OrderMethod Register Page</h2>
<hr>
	<form:form action="update" method="post" modelAttribute="orderMethod">
<pre>
Order  Id:<form:input path="orderId" readonly="true"/>
Order Mode  :<form:radiobutton path="orderMode" value="SALE" />SALE
 	     <form:radiobutton path="orderMode" value="PURCHASE" />PURCHASE
Order Code  :<form:input path="orderCode"/>
Order Type  :<form:select path="orderType">
 	<form:option value="">--SELECT--</form:option>
 	<form:option value="FIFO">FIFO</form:option>
 	<form:option value="LIFO">LIFO</form:option>
 	<form:option value="FCFO">FCFO</form:option>
 	<form:option value="FEFO">FEFO</form:option> 
 </form:select>
Order Accept:<form:checkbox path="orderAccept" value="Multi-Model"/>Multi-Model
	     <form:checkbox path="orderAccept" value="AcceptReturn"/>AcceptReturn

Description :
             <form:textarea path="description"/>
	
	<input type="submit" value="UPDATE OrderMethod">
</pre>
	</form:form>
<hr>
${message}
<hr>	
<a href="all">View Data</a>	
</body>
</html>