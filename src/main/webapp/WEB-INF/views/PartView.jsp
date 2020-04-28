<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PART VIEW</title>
</head>
<body>
	<%@include file="UserMenu.jsp"%>
	<div class="container">

		<div class="card">
			<div class="card-header bg-primary text-white text-center">
				<H3>WELCOME TO PART VIEW PAGE</H3>

			</div>
			<div class="card-body">
				<div class="row">
					<div class="col-4"></div>
					<div class="col-4">
						<a href="excel?id=${ob.partId}"><img
							src="../resources/images/ExcelDownload.png" width="100"
							height="40" /></a> <a href="pdf?id=${ob.partId}"><img
							src="../resources/images/PdfDownload.png" class="rounded float-right" width="100" height="40" /></a>



						<table class="table table-hover">
							<tr>
								<th class="bg-dark text-white">ID</th>
								<td class="bg-secondary text-white">${ob.partId}</td>
							</tr>
							<tr>
								<th class="bg-dark text-white">CODE</th>
								<td class="bg-secondary text-white">${ob.partCode}</td>
							</tr>

							<tr>
								<th class="bg-dark text-white">LENGTH</th>
								<td class="bg-secondary text-white">${ob.partLen}</td>
							</tr>
							<tr>
								<th class="bg-dark text-white">WIDTH</th>
								<td class="bg-secondary text-white">${ob.partWid}</td>
							</tr>

							<tr>
								<th class="bg-dark text-white">HEIGHT</th>
								<td class="bg-secondary text-white">${ob.partHgt}</td>
							</tr>

							<tr>
								<th class="bg-dark text-white">BASE COST</th>
								<td class="bg-secondary text-white">${ob.baseCost}</td>
							</tr>
							
							<tr>
								<th class="bg-dark text-white">BASE CURRENCY</th>
								<td class="bg-secondary text-white">${ob.baseCurrency}</td>
							</tr>
							
							<tr>
								<th class="bg-dark text-white">NOTE</th>
								<td class="bg-secondary text-white">${ob.note}</td>
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