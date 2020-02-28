<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UOM Register Page</title>
</head>
<body>
	<h2>Welcome to UOM Register Page</h2>
<hr>
	<form:form action="update" method="post" modelAttribute="uom">
		<pre>
Uom      Id:<form:input path="uomId" readonly="true"/>
Uom Type   :<form:select path="uomType">
 	<form:option value="">--SELECT--</form:option>
 	<form:option value="PACKAGING">PACKAGING</form:option>
 	<form:option value="NOPACKAGING">NOPACKAGING</form:option>
 	<form:option value="NA">-NA-</form:option> 
 </form:select>
Uom Model  :<form:input path="uomModel"/>
Description:
            <form:textarea path="uomDesc"/>
	
	<input type="submit" value="CREATE UOM">
</pre>
	</form:form>
<hr>
	${message}
<hr>
<a href="all">View UOM Data</a>	
</body>
</html>