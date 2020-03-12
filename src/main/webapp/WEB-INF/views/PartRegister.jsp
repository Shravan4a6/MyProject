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
Base Currency:<form:select path="baseCurrency">
								<form:option value="">-SELECT-</form:option>
								<form:option value="INR">INR</form:option>
								<form:option value="USD">USD</form:option>
								<form:option value="AUS">AUS</form:option>
								<form:option value="ERU">ERU</form:option>
							</form:select>

Uom          :<form:select path="uomOb.uomId" class="form-control">
 	<form:option value="">--SELECT--</form:option>
 	<form:options items="${uomMap}"/>	
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