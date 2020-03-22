<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OrderMethod Register Page</title>
</head>
<body>
	<%@include file="UserMenu.jsp"%>
	<div class="container">

		<div class="card">

			<div
				class="card-header bg-primary text-center text-white text-uppercase">
				<h3>Welcome to OrderMethod Register Page</h3>
			</div>

			<div class="card-body">

				<form:form action="save" method="POST" modelAttribute="orderMethod">
					
					<div class="row">
						<div class="col-4">
							<label for="orderMode">ORDER MODE</label>
						</div>
						<div class="col-4">
							<form:radiobutton path="orderMode" value="SALE" />
							SALE
							<form:radiobutton path="orderMode" value="PURCHASE" />
							PURCHASE
						</div>
						<div class="col-4"></div>
					</div>
					
					
					<div class="row">
						<div class="col-4">
							<label for="orderCode">ORDER CODE</label>
						</div>
						<div class="col-4">
							<form:input path="orderCode" class="form-control" />
						</div>
						<div class="col-4">
							<!-- Error Message -->
						</div>
					</div>					
						
					<div class="row">
						<div class="col-4">
							<label for="orderType">ORDER TYPE</label>
						</div>
						<div class="col-4">
							<form:select path="orderType" class="form-control">
								<form:option value="">-SELECT-</form:option>
								<form:option value="FIFO">FIFO</form:option>
								<form:option value="LIFO">LIFO</form:option>
								<form:option value="FMFO">FMFO</form:option>
								<form:option value="FEFO">FEFO</form:option>
							</form:select>
						</div>
						<div class="col-4">
							<!-- Error Message -->
						</div>
					</div>

					<div class="row">
						<div class="col-4">
							<label for="orderAccept">ORDER ACCEPT</label>
						</div>
						<div class="col-4">
							<form:checkbox path="orderAccept" value="Multi-Model" />
							Multi-Model
							<form:checkbox path="orderAccept" value="AcceptReturn" />
							AcceptReturn
						</div>
						<div class="col-4"></div>
					</div>
					

					<div class="row">
						<div class="col-4">
							<label for="description">DESCRIPTION</label>
						</div>
						<div class="col-4">
							<form:textarea path="description" class="form-control" />

						</div>
						<div class="col-4"></div>
					</div>

					<div class="row">
						<div class="col-4"></div>
						<div class="col-4">
							<input type="submit" value="Create" class="btn btn-success" /> <input
								type="reset" value="Clear" class="btn btn-danger" />

						</div>
					</div>
				</form:form>
			</div>
			<c:if test="${!empty message }">
				<div class="card-footer bg-info text-white text-center">
					<b>${message}</b>
				</div>
			</c:if>
		</div>
		<!-- card end -->
	</div>
	<!-- container end -->
</body>
</html>