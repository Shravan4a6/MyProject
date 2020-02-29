<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WhUserType Register page </title>
</head>
<body>
	<h2>Welcome to  WhUserType Register Page</h2>
<hr>
<form:form action="save" method="post" modelAttribute="whUserType">
<pre>
User Type   :<form:radiobutton path="userType" value="vendor" />Vendor
 	     <form:radiobutton path="userType" value="Customer" />Customer
User Code   :<form:input path="userCode"/>
User For    :<form:input path="userFor"/>
User Email  :<form:input path="userMail"/>
User Contact:<form:input path="userContact"/>               		
User Id Type:<form:select path="userIdType">
 	<form:option value="">--SELECT--</form:option>
 	<form:option value="PANCARD">PANCARD</form:option>
 	<form:option value="AADHAAR">AADHAAR</form:option>
 	<form:option value="VOTERID">VOTERID</form:option>
 	<form:option value="OTHER">OTHER</form:option> 
 </form:select>
If Other    :<form:input path="otherId"/>
Number      :<form:input path="idNumber"/>
	
<input type="submit" value="CREATE WHUSER">
</pre>
</form:form>
<hr>	
	${message}
<hr>	
<a href="all">View WhUser Data</a>
</body>
</html>