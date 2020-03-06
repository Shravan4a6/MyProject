<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Part Edit Page</title>
</head>
<body>
	<h2>Welcome to Part Edit Page</h2>
<hr>
	<form:form action="update" method="post" modelAttribute="part">
<pre>
Part Id      :<form:input path="partId" readonly="true"/>
Part Code    :<form:input path="partCode"/>
Part Length  :<form:input path="partLen"/>
Part Width   :<form:input path="partWid"/>
Part Height  :<form:input path="partHgt"/>
Base Cost    :<form:input path="baseCost"/>
Base Currency:<form:input path="baseCurrency"/>
<%-- 
Enable Shipment:<form:select path="enbShip">
 	<form:option value="">--SELECT--</form:option>
 	<form:option value="YES">YES</form:option>
 	<form:option value="NO">NO</form:option>
 </form:select>
--%>                
Description    :
                <form:textarea path="note"/>

	<input type="submit" value="UPDATE PART">
</pre>
	</form:form>
<hr>
${message}
<hr>	
<a href="all">View Data</a>	
</body>
</html>