<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WhUserType VIEW</title>
</head>
<body>
	<%@include file="UserMenu.jsp"%>
	<div class="container">

		<div class="card">
			<div class="card-header bg-primary text-white text-center">
				<H3>WELCOME TO WhUserType VIEW PAGE</H3>

			</div>
			<div class="card-body">
				<div class="row">
					<div class="col-4"></div>
					<div class="col-4">
						<a href="excel?id=${ob.userId}"><img
							src="../resources/images/ExcelDownload.png" width="100"
							height="40" /></a> <a href="pdf?id=${ob.userId}"><img
							src="../resources/images/PdfDownload.png" class="rounded float-right" width="100" height="40" /></a>



						<table class="table table-hover">
							<tr>
								<th class="bg-dark text-white">ID</th>
								<td class="bg-secondary text-white">${ob.userId}</td>
							</tr>
							<tr>
								<th class="bg-dark text-white">TYPE</th>
								<td class="bg-secondary text-white">${ob.userType}</td>
							</tr>
							<tr>
								<th class="bg-dark text-white">CODE</th>
								<td class="bg-secondary text-white">${ob.userCode}</td>
							</tr>
						
							<tr>
								<th class="bg-dark text-white">USER_FOR</th>
								<td class="bg-secondary text-white">${ob.userFor}</td>
							</tr>

							<tr>
								<th class="bg-dark text-white">EMAIL</th>
								<td class="bg-secondary text-white">${ob.userMail}</td>
							</tr>
							<tr>
								<th class="bg-dark text-white">CONTACT</th>
								<td class="bg-secondary text-white">${ob.userContact}</td>
							</tr>

							<tr>
								<th class="bg-dark text-white">ID_TYPE</th>
								<td class="bg-secondary text-white">${ob.userIdType}</td>
							</tr>

							<tr>
								<th class="bg-dark text-white">OTHER_ID</th>
								<td class="bg-secondary text-white">${ob.otherId}</td>
							</tr>
							
							<tr>
								<th class="bg-dark text-white">OTHER_ID_NUMBER</th>
								<td class="bg-secondary text-white">${ob.idNumber}</td>
							</tr>
						</table>

					</div>

				</div>
			</div>
		</div>



		<!-- card end -->


	</div>
	<!-- container end -->
</body>
</html>