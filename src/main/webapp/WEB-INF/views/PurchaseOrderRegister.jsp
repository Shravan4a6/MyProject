<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PurchaseOrder Register Page</title>
</head>
<body>
	<h2>Welcome to PurchaseOrder Register Page</h2>
	<hr>
	<form:form action="save" method="post" modelAttribute="purchaseOrder">
		<pre>
Order Code        :<form:input path="orderCode" />
Shipment Code     :<form:select path="sob.shipId" class="form-control">
 	<form:option value="">--SELECT--</form:option>
 	<form:options items="${shipMap}" />	
 </form:select>
Vendor            :<form:select path="vendorOb.userId" class="form-control">
 	<form:option value="">--SELECT--</form:option>
 	<form:options items="${whVenMap}" />	
 </form:select>
Reference Number  :<form:input path="refNumber" />
Quality Check     :<form:radiobutton path="qltyCheck" value="Required" />Required
	           <form:radiobutton path="qltyCheck" value="Not Required" />Not Required		
Default Status    :<form:input path="status" readonly="true" />
<%-- Uom          :<form:select path="uomOb.uomId" class="form-control">
 	<form:option value="">--SELECT--</form:option>
 	<form:options items="${uomMap}"/>	
 </form:select>            
 --%>
Description       :
                   <form:textarea path="note" />

	       <input type="submit" value="CREATE PURCHASE ORDER">
</pre>
	</form:form>
	<hr>
	${message}
	<hr>
	<a href="all">View Data</a>
</body>
</html>