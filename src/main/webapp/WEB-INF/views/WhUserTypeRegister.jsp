<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WhUserType Register Page</title>
</head>
<body>
	<%@include file="UserMenu.jsp"%>
	<div class="container">

		<div class="card">

			<div
				class="card-header bg-primary text-center text-white text-uppercase">
				<h3>Welcome to WhUserType Register Page</h3>
			</div>

			<div class="card-body">

				<form:form action="save" method="POST" modelAttribute="whUserType">
					
					<div class="row">
						<div class="col-4">
							<label for="userType">USER TYPE</label>
						</div>
						<div class="col-4">
							<form:radiobutton path="userType" value="VENDOR" />
							VENDOR
							<form:radiobutton path="userType" value="CUSTOMER" />
							CUSTOMER
						</div>
						<div class="col-4"></div>
					</div>
					
					
					<div class="row">
						<div class="col-4">
							<label for="userCode">USER CODE</label>
						</div>
						<div class="col-4">
							<form:input path="userCode" class="form-control" />
						</div>
						<div class="col-4">
							<!-- Error Message -->
						</div>
					</div>
					
					<div class="row">
						<div class="col-4">
							<label for="userFor">USER FOR</label>
						</div>
						<div class="col-4">
							<form:input path="userFor" class="form-control" />
						</div>
						<div class="col-4">
							<!-- Error Message -->
						</div>
					</div>
					
					<div class="row">
						<div class="col-4">
							<label for="userMail">USER EMAIL</label>
						</div>
						<div class="col-4">
							<form:input path="userMail" class="form-control" />
						</div>
						<div class="col-4">
							<!-- Error Message -->
						</div>
					</div>
					
					<div class="row">
						<div class="col-4">
							<label for="userContact">USER CONTACT</label>
						</div>
						<div class="col-4">
							<form:input path="userContact" class="form-control" />
						</div>
						<div class="col-4">
							<!-- Error Message -->
						</div>
					</div>
					
					
					
					<div class="row">
						<div class="col-4">
							<label for="userIdType">USER ID TYPE</label>
						</div>
						<div class="col-4">
							<form:select path="userIdType" class="form-control">
								<form:option value="">-SELECT-</form:option>
								<form:option value="PANCARD">PANCARD</form:option>
								<form:option value="AADHAAR">AADHAAR</form:option>
								<form:option value="VOTERID">VOTERID</form:option>
								<form:option value="OTHER">OTHER</form:option>
							</form:select>
						</div>
						<div class="col-4">
							<!-- Error Message -->
						</div>
					</div>

					<div class="row">
						<div class="col-4">
							<label for="otherId"><b>*</b>IF OTHER</label>
						</div>
						<div class="col-4">
							<form:input path="otherId" class="form-control" />
						</div>
						<div class="col-4">
							<!-- Error Message -->
						</div>
					</div>
						
					<div class="row">
						<div class="col-4">
							<label for="idNumber"><b>*</b>ID NUMBER</label>
						</div>
						<div class="col-4">
							<form:input path="idNumber" class="form-control" />
						</div>
						<div class="col-4">
							<!-- Error Message -->
						</div>
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