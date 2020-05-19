<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OrderMethod Edit Page</title>
</head>
<body>
	<%@include file="UserMenu.jsp"%>
	<div class="container">

		<div class="card">

			<div
				class="card-header bg-primary text-center text-white text-uppercase">
				<h3>Welcome to OrderMethod Edit Page</h3>
			</div>

			<div class="card-body">

				<form:form action="update" method="POST" modelAttribute="orderMethod">
					
					<div class="row">
						<div class="col-4">
							<label for="orderId">ORDER ID</label>
						</div>
						<div class="col-4">
							<form:input path="orderId"  readonly="true" class="form-control" />
						</div>
						<div class="col-4">
							<!-- Error Message -->
						</div>
					</div>	
					
					
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
						<div class="col-4 font-italic" id="orderModeError"></div>
					</div>
					
					
					<div class="row">
						<div class="col-4">
							<label for="orderCode">ORDER CODE</label>
						</div>
						<div class="col-4">
							<form:input path="orderCode" class="form-control" />
						</div>
						<div class="col-4 font-italic" id="orderCodeError">
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
								<form:option value="FCFO">FCFO</form:option>
								<form:option value="FEFO">FEFO</form:option>
							</form:select>
						</div>
						<div class="col-4 font-italic" id="orderTypeError">
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
						<div class="col-4 font-italic" id="orderAcceptError"></div>
					</div>
					

					<div class="row">
						<div class="col-4">
							<label for="description">DESCRIPTION</label>
						</div>
						<div class="col-4">
							<form:textarea path="description" class="form-control" />

						</div>
						<div class="col-4 font-italic" id="descriptionError"></div>
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
	
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$("#orderModeError").hide();
							$("#orderCodeError").hide();
							$("#orderTypeError").hide();
							$("#orderAcceptError").hide();
							$("#descriptionError").hide();
							

							var orderModeError = false;
							var orderCodeError = false;
							var orderTypeError = false;
							var orderAcceptError = false;
							var descriptionError = false;


							$('input[type="radio"][name="orderMode"]').change(
									function() {
										validate_orderMode();
										
							});
							
							$("#orderCode").keyup(function() {
								validate_orderCode();
							});
							

							
							$("#orderType").change(function() {
								validate_orderType();
							});


							$('input[type="checkbox"][name="orderAccept"]').change(
									function() {
										validate_orderAccept();
										
							});
							
							
							
							$("#description").keyup(function() {
								validate_description();
							});


							function validate_orderMode() {
								var val = $('input[type="radio"][name="orderMode"]:checked').length;
								//if one radio button is selected then length=1 else length is zero
								if (val == 0) {
									$("#orderModeError").show();
									$("#orderModeError").html(
											"Please choose <b>Order Mode</b>");
									$("#orderModeError").css("color", "red");
									orderModeError = false;
								} else {
									$("#orderModeError").hide();
									orderModeError = true;
								}
								return orderModeError;
							}
							

							function validate_orderCode() {
								var val = $("#orderCode").val();
								var exp = /^[A-Z]{2,8}$/;
								if (val == '') {
									$("#orderCodeError").show();
									$("#orderCodeError").html(
											"Enter <b>Order Code</b>");
									$("#orderCodeError").css("color", "red");
									orderCodeError = false;
								} else if (!exp.test(val)) {
									$("#orderCodeError").show();
									$("#orderCodeError")
											.html(
													"Enter <b>Upper Case (2-8)</b> letters only");
									$("#orderCodeError").css("color", "red");
									orderCodeError = false;
								} else {
									$("#orderCodeError").hide();
									orderCodeError = true;
								}
								return orderCodeError;
							}
							


								
							function validate_orderType() {
								var val = $("#orderType").val();
								if (val == '') {
									$("#orderTypeError").show();
									$("#orderTypeError").html(
											"Choose <b>Order Type</b>");
									$("#orderTypeError").css("color", "red");
									orderTypeError = false;
								} else {
									$("#orderTypeError").hide();
									orderTypeError = true;
									
								}
								return orderTypeError;
							}


							function validate_orderAccept() {
								var val = $('input[type="checkbox"][name="orderAccept"]:checked').length;
								//if one CheckBox is selected then length=1 else length is zero
								if (val == 0) {
									$("#orderAcceptError").show();
									$("#orderAcceptError").html(
											"Please choose <b>Order Accept</b>");
									$("#orderAcceptError").css("color", "red");
									orderAcceptError = false;
								} else {
									$("#orderAcceptError").hide();
									orderAcceptError = true;
								}
								return orderAcceptError;
							}
							

														
							function validate_description() {
								var val = $("#description").val();
								if (val == '') {
									$("#descriptionError").show();
									$("#descriptionError").html("Enter <b>DESCRIPTION</b>");
									$("#descriptionError").css("color", "red");
									descriptionError = false;
								} else {
									$("#descriptionError").hide();
									descriptionError = true;
								}
								return descriptionError;
							}

							
							
							// **************on click submit button****************

							$("#Update").click(
									function() {
										orderModeError = false;
										orderCodeError = false;
										orderTypeError = false;
										orderAcceptError = false;
										descriptionError = false;
										
										validate_orderMode();
										validate_orderCode();
										validate_orderType();
										validate_orderAccept();
										validate_description();
										

										if (orderModeError && orderCodeError
												&& orderTypeError
												&& orderAcceptError
												&& descriptionError)
											
											return true;
										else
											return false;

									});
							// ******************  (^^)  **************************

						});
	</script>
	
	
	
</body>
</html>