<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>ShipmentType Register Page</title>

<%@include file="UserMenu.jsp"%>
</head>
<body>

	<div class="container">
		<div class="card mt-3 border-0 bg-transparent">

			<div
				class="card-header bg-primary text-center text-white text-uppercase">
				<h3>Welcome to Shipment Type Register Page</h3>
			</div>

			<div class="card-body bg-light">

				<form:form action="save" method="POST" modelAttribute="shipmentType">


					<div class="row">
						<div class="col-4">
							<label for="shipMode">SHIPMENT MODE</label>
						</div>
						<div class="col-4">
							<form:select path="shipMode" class="form-control">
								<form:option value="">-SELECT-</form:option>
								<form:option value="Air">Air</form:option>
								<form:option value="Truck">Truck</form:option>
								<form:option value="Ship">Ship</form:option>
								<form:option value="Train">Train</form:option>
							</form:select>
						</div>
						<div class="col-4 font-italic" id="shipModeError">
							<!-- Error Message -->
						</div>
					</div>


					<div class="row">
						<div class="col-4">
							<label for="shipCode">SHIPMENT CODE</label>
						</div>
						<div class="col-4">
							<form:input path="shipCode" class="form-control" />
						</div>
						<div class="col-4 font-italic" id="shipCodeError">
							<!-- Error Message -->
						</div>
					</div>

					<div class="row">
						<div class="col-4">
							<label for="enbShip">ENABLE SHIPMENT</label>
						</div>
						<div class="col-4">
							<form:select path="enbShip" class="form-control">
								<form:option value="">-SELECT-</form:option>
								<form:option value="YES">YES</form:option>
								<form:option value="NO">NO</form:option>
							</form:select>
						</div>
						<div class="col-4 font-italic" id="enbShipError"></div>
					</div>



					<div class="row">
						<div class="col-4">
							<label for="shipGrade">SHIPMENT GRADE</label>
						</div>
						<div class="col-4">
							<form:radiobutton path="shipGrade" value="A" />
							A
							<form:radiobutton path="shipGrade" value="B" />
							B
							<form:radiobutton path="shipGrade" value="C" />
							C

						</div>
						<div class="col-4 font-italic" id="shipGradeError"></div>
					</div>


					<div class="row pt-1 pb-1">
						<div class="col-4">
							<label for="shipDesc">DESCRIPTION</label>
						</div>
						<div class="col-4">
							<form:textarea path="shipDesc" class="form-control" />

						</div>
						<div class="col-4 font-italic" id="shipDescError"></div>
					</div>

					<div class="row">
						<div class="col-4"></div>
						<div class="col-4 text-center">
							<input type="submit" value="Create" id="Create"
								class="btn btn-success" /> <input type="reset" value="Clear"
								class="btn btn-danger" />

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


	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$("#shipModeError").hide();
							$("#shipCodeError").hide();
							$("#enbShipError").hide();
							$("#shipGradeError").hide();
							$("#shipDescError").hide();
							

							var shipModeError = false;
							var shipCodeError = false;
							var enbShipError = false;
							var shipGradeError = false;
							var shipDescError = false;


							$("#shipMode").change(function() {
								validate_shipMode();
							});
							
							
							$("#shipCode").keyup(function() {
								validate_shipCode();
							});


							$("#enbShip").change(function() {
								validate_enbShip();
							});
							
							
							$('input[type="radio"][name="shipGrade"]').change(
									function() {
										validate_shipGrade();
										
							});
							
								
							$("#shipDesc").keyup(function() {
								validate_shipDesc();
							});




							function validate_shipMode() {
								var val = $("#shipMode").val();
								if (val == '') {
									$("#shipModeError").show();
									$("#shipModeError").html(
											"Choose <b>Mode</b>");
									$("#shipModeError").css("color", "red");
									shipModeError = false;
								} else {
									$("#shipModeError").hide();
									shipModeError = true;
									
								}
								return shipModeError;
							}


							function validate_shipCode() {
								var val = $("#shipCode").val();
								var exp = /^[A-Z]{2,8}$/;
								if (val == '') {
									$("#shipCodeError").show();
									$("#shipCodeError").html(
											"Enter <b>Ship Code</b>");
									$("#shipCodeError").css("color", "red");
									shipCodeError = false;
								} else if (!exp.test(val)) {
									$("#shipCodeError").show();
									$("#shipCodeError")
											.html(
													"Enter <b>Upper Case (2-8)</b> letters only");
									$("#shipCodeError").css("color", "red");
									shipCodeError = false;
								} else {
									$("#shipCodeError").hide();
									shipCodeError = true;
								}
								return shipCodeError;
							}

							
							function validate_enbShip() {
								var val = $("#enbShip").val();
								if (val == '') {
									$("#enbShipError").show();
									$("#enbShipError").html(
											"Choose <b>YES or NO</b>");
									$("#enbShipError").css("color", "red");
									enbShipError = false;
								} else {
									$("#enbShipError").hide();
									enbShipError = true;
									
								}
								return enbShipError;
							}
							
						
							function validate_shipGrade() {
								var val = $('input[type="radio"][name="shipGrade"]:checked').length;
								//if one radio button is selected then length=1 else length is zero
								if (val == 0) {
									$("#shipGradeError").show();
									$("#shipGradeError").html(
											"Please choose <b>Ship Grade</b>");
									$("#shipGradeError").css("color", "red");
									shipGradeError = false;
								} else {
									$("#shipGradeError").hide();
									shipGradeError = true;
								}
								return shipGradeError;
							}
							
							function validate_shipDesc() {
								var val = $("#shipDesc").val();
								if (val == '') {
									$("#shipDescError").show();
									$("#shipDescError").html("Enter <b>SHIPMENT DESCRIPTION</b>");
									$("#shipDescError").css("color", "red");
									shipDescError = false;
								} else {
									$("#shipDescError").hide();
									shipDescError = true;
								}
								return shipDescError;
							}

							
							
							// **************on click submit button****************

							$("#Create").click(
									function() {
										shipModeError = false;
										shipCodeError = false;
										enbShipError = false;
										shipGradeError = false;
										shipDescError = false;
										
										validate_shipMode();
										validate_shipCode();
										validate_enbShip();
										validate_shipGrade();
										validate_shipDesc();
										

										if (shipModeError && shipCodeError
												&& enbShipError
												&& shipGradeError
												&& shipDescError)
											
											return true;
										else
											return false;

									});
							// ******************  (^^)  **************************

						});
	</script>

</body>
</html>