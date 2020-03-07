<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UOM Edit Page</title>
</head>
<body>
	<%@include file="UserMenu.jsp"%>
	<div class="container">

		<div class="card">

			<div
				class="card-header bg-primary text-center text-white text-uppercase">
				<h3>Welcome to UOM Edit Page</h3>
			</div>

			<div class="card-body">

				<form:form action="update" method="POST" modelAttribute="uom">

					<div class="row">
						<div class="col-4">
							<label for="uomId">UOM ID</label>
						</div>
						<div class="col-4">
							<form:input path="uomId"  readonly="true" class="form-control" />
						</div>
						<div class="col-4">
							<!-- Error Message -->
						</div>
					</div>	
					
					
					<div class="row">
						<div class="col-4">
							<label for="uomType">UOM TYPE</label>
						</div>
						<div class="col-4">
							<form:select path="uomType" class="form-control">
								<form:option value="">-SELECT-</form:option>
								<form:option value="PACKAGING">PACKAGING</form:option>
								<form:option value="NOPACKAGING">NOPACKAGING</form:option>
								<form:option value="-NA-">-NA-</form:option>
							</form:select>
						</div>
						<div class="col-4">
							<!-- Error Message -->
						</div>
					</div>


					<div class="row">
						<div class="col-4">
							<label for="uomModel">UOM MODEL</label>
						</div>
						<div class="col-4">
							<form:input path="uomModel" class="form-control" />
						</div>
						<div class="col-4">
							<!-- Error Message -->
						</div>
					</div>

					<div class="row">
						<div class="col-4">
							<label for="uomDesc">DESCRIPTION</label>
						</div>
						<div class="col-4">
							<form:textarea path="uomDesc" class="form-control" />

						</div>
						<div class="col-4"></div>
					</div>

					<div class="row">
						<div class="col-4"></div>
						<div class="col-4">
							<input type="submit" value="Update" class="btn btn-success" /> <input
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