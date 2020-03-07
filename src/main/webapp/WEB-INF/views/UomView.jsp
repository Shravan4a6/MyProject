<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UOM VIEW</title>
</head>
<body>
	<%@include file="UserMenu.jsp"%>
	<div class="container">

		<div class="card">
			<div class="card-header bg-primary text-white text-center">
				<H3>WELCOME TO UOM VIEW PAGE</H3>

			</div>
			<div class="card-body">
				<div class="row">
					<div class="col-4"></div>
					<div class="col-4">
						<a href="excel?id=${ob.uomId}"><img
							src="../resources/images/ExcelDownload.png" width="100"
							height="40" /></a> <a href="pdf?id=${ob.uomId}"><img
							src="../resources/images/PdfDownload.png" class="rounded float-right" width="100" height="40" /></a>



						<table class="table table-hover">
							<tr>
								<th class="bg-dark text-white">ID</th>
								<td class="bg-secondary text-white">${ob.uomId}</td>
							</tr>
							<tr>
								<th class="bg-dark text-white">TYPE</th>
								<td class="bg-secondary text-white">${ob.uomType}</td>
							</tr>

							<tr>
								<th class="bg-dark text-white">MODEL</th>
								<td class="bg-secondary text-white">${ob.uomModel}</td>
							</tr>
							<tr>
								<th class="bg-dark text-white">NOTE</th>
								<td class="bg-secondary text-white">${ob.uomDesc}</td>
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