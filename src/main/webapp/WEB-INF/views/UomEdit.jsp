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
						<div class="col-4 font-italic" id="uomTypeError">
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
						<div class="col-4 font-italic" id="uomModelError">
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
						<div class="col-4 font-italic" id="uomDescError"></div>
					</div>

					<div class="row">
						<div class="col-4"></div>
						<div class="col-4">
							<input type="submit" value="Update" id="Update" class="btn btn-success" /> <input
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
	
	<script>
		$(document).ready(function() {
			//1. Hide Error section
			$("#uomModelError").hide();
			$("#uomDescError").hide();
			$("#uomTypeError").hide();
			//2. Define flag for error section
			var uomModelError = false;
			var uomDescError = false;
			var uomTypeError = false;
			//3. Link with action/event
			$("#uomModel").keyup(function() {
				validate_uomModel();
			});
			$("#uomDesc").keyup(function() {
				validate_note();
			});
			$("#uomType").change(function() {
				validate_uomType();
			});
			//4. drfine one validation function
			function validate_uomModel() {
				var val = $("#uomModel").val();
				if (val == '') {
					$("#uomModelError").show();
					$("#uomModelError").html("Enter <b>UOM MODEL</b>")
					$("#uomModelError").css("color", "red");
					uomModelError = false;
				} else {
					$("#uomModelError").hide();
					uomModelError = true;
				}
				return uomModelError;
			}
			function validate_note() {
				var val = $("#uomDesc").val();
				if (val == '') {
					$("#uomDescError").show();
					$("#uomDescError").html("Enter <b>UOM DESCRIPTION</b>");
					$("#uomDescError").css("color", "red");
					uomDescError = false;
				} else {
					$("#uomDescError").hide();
					uomDescError = true;
				}
				return uomDescError;
			}
			function validate_uomType() {
				var val = $("#uomType").val();
				if (val == '') {
					$("#uomTypeError").show();
					$("#uomTypeError").html("Choose <b>UOM TYPE</b>");
					$("#uomTypeError").css("color", "red");
					uomTypeError = false;
				} else {
					$("#uomTypeError").hide();
					uomTypeError = true;
				}
				return uomTypeError;
			}
			// on click submit button
			$("#Update").click(function() {
				//on click submit button
				//a. reset flags to false
				uomModelError = false;
				uomDescError = false;
				uomTypeError = false;
				//b. call all validate function
				validate_uomModel();
				validate_note();
				validate_uomType();
				//c. check if all are true then submit else dont
				if (uomModelError && uomDescError && uomTypeError) {
					return true;
				} else
					return false;
			});
		});
	</script>
	
</body>
</html>