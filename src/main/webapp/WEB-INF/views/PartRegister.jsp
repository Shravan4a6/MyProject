<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Part Register Page</title>
</head>
<body>
	<h2>Welcome to Part Register Page</h2>
<hr>
	<form:form action="save" method="post" modelAttribute="part">
<pre>
Part Code    :<form:input path="partCode"/>
Part Length  :<form:input path="partLen"/>
Part Width   :<form:input path="partWid"/>
Part Height  :<form:input path="partHgt"/>
Base Cost    :<form:input path="baseCost"/>
Base Currency:<form:input path="baseCurrency"/>
Uom          :<form:select path="uomOb.uomId">
 	<form:option value="">--SELECT--</form:option>
 	<form:options items="${uomList }"
 				  itemValue="uomId"
 				  itemLabel="uomModel"/>	
 </form:select>            
Description    :
                <form:textarea path="note"/>

	<input type="submit" value="CREATE PART">
</pre>
	</form:form>
<hr>
${message}
<hr>	
<a href="all">View Data</a>	
</body>
</html>