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
						<div class="col-4 font-italic" id="userTypeError"></div>
					</div>


					<div class="row">
						<div class="col-4">
							<label for="userCode">USER CODE</label>
						</div>
						<div class="col-4">
							<form:input path="userCode" class="form-control" />
						</div>
						<div class="col-4 font-italic" id="userCodeError">
							<!-- Error Message -->
						</div>
					</div>

					<div class="row">
						<div class="col-4">
							<label for="userFor">USER FOR</label>
						</div>
						<div class="col-4">
							<form:input path="userFor" class="form-control" readonly="true" />
						</div>
						<div class="col-4 font-italic" id="userForError">
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
						<div class="col-4 font-italic" id="userMailError">
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
						<div class="col-4 font-italic" id="userContactError">
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
						<div class="col-4 font-italic" id="userIdTypeError">
							<!-- Error Message -->
						</div>
					</div>

					<div class="row">
						<div class="col-4">
							<label for="otherId"><b>*</b>IF OTHER</label>
						</div>
						<div class="col-4">
							<form:input path="otherId" class="form-control" readonly="true" />
						</div>
						<div class="col-4 font-italic" id="otherIdError">
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
						<div class="col-4 font-italic" id="idNumberError">
							<!-- Error Message -->
						</div>
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
							$("#userTypeError").hide();
							$("#userCodeError").hide();
							$("#userMailError").hide();
							$("#userContactError").hide();
							$("#userIdTypeError").hide();
							$("#idNumberError").hide();

							var userTypeError = false;
							var userCodeError = false;
							var userMailError = false;
							var userContactError = false;
							var userIdTypeError = false;
							var idNumberError = false;

							$('input[type="radio"][name="userType"]').change(
									function() {
										validate_userType();
										autoFill_userFor();
									});
							$("#userCode").keyup(function() {
								validate_userCode();
							});

							$("#userMail").keyup(function() {
								validate_userMail();
							});

							$("#userContact").keyup(function() {
								validate_userContact();
							});

							$("#userIdType").change(function() {
								validate_userIdType();
							});

							$("#idNumber").keyup(function() {
								validate_idNumber();
							});

							function autoFill_userFor() {
								var val = $(
										'input[type="radio"][name="userType"]:checked')
										.val();
								if (val == 'VENDOR') {
									$("#userFor").val("Purchase");
									$("#userFor").css("color", "blue");
								} else if (val == 'CUSTOMER') {
									$("#userFor").val("Sale");
									$("#userFor").css("color", "green");
								}
							}

							function validate_userType() {
								var val = $('input[type="radio"][name="userType"]:checked').length;
								//if one radio button is selected then length=1 else length is zero
								if (val == 0) {
									$("#userTypeError").show();
									$("#userTypeError").html(
											"Please choose <b>User Type</b>");
									$("#userTypeError").css("color", "red");
									userTypeError = false;
								} else {
									$("#userTypeError").hide();
									userTypeError = true;
								}
								return userTypeError;
							}

							function validate_userCode() {
								var val = $("#userCode").val();
								var exp = /^[A-Z]{2,8}$/;
								if (val == '') {
									$("#userCodeError").show();
									$("#userCodeError").html(
											"Enter <b>User Code</b>");
									$("#userCodeError").css("color", "red");
									userCodeError = false;
								} else if (!exp.test(val)) {
									$("#userCodeError").show();
									$("#userCodeError")
											.html(
													"Enter <b>Upper Case (2-8)</b> letters only");
									$("#userCodeError").css("color", "red");
									userCodeError = false;
								} else {
									$("#userCodeError").hide();
									userCodeError = true;
								}
								return userCodeError;
							}

							function validate_userMail() {
								var val = $("#userMail").val();
								var exp = /^[a-zA-Z0-9-_]+\@[a-zA-Z]{2,8}\.[a-z]{2,6}$/;
								if (val == '') {
									$("#userMailError").show();
									$("#userMailError").html(
											"Enter <b> User Mail</b>");
									$("#userMailError").css("color", "red");
									userMailError = false;
								} else if (!exp.test(val)) {
									$("#userMailError").show();
									$("#userMailError").html(
											"Not a Valid <b> User Mail</b>");
									$("#userMailError").css("color", "red");
									userMailError = false;

								} else {
									$("#userMailError").hide();
									userMailError = true;

								}
								return userMailError;
							}

							function validate_userContact() {
								var val = $("#userContact").val();
								var exp = /^(\+91)?[6-9][0-9]{9}$/;
								if (val == '') {
									$("#userContactError").show();
									$("#userContactError").html(
											"Enter <b>User Contact</b>");
									$("#userContactError").css("color", "red");
									userContactError = false;
								} else if (!exp.test(val)) {
									$("#userContactError").show();
									$("#userContactError").html(
											"Invaild <b>User Contact</b>");
									$("#userContactError").css("color", "red");
									userContactError = false;
								} else {
									$("#userContactError").hide();
									userContactError = true;
								}
								return userContactError;
							}

							function validate_userIdType() {
								var val = $("#userIdType").val();
								if (val == '') {
									$("#userIdTypeError").show();
									$("#userIdTypeError").html(
											"Choose <b>ID Type</b>");
									$("#userIdTypeError").css("color", "red");
									userIdTypeError = false;
								} else {
									$("#userIdTypeError").hide();
									userIdTypeError = true;

									if (val == 'OTHER') {
										$("#otherId").attr("readonly", false);
									} else {
										$("#otherId").val('');
										$("#otherId").attr("readonly", true);
									}
								}
								return userIdTypeError;
							}

							function validate_idNumber() {
								var val = $("#idNumber").val();
								var exp = /^[A-Za-z0-9-._]{4,20}$/;
								if (val == '') {
									$("#idNumberError").show();
									$("#idNumberError").html(
											"Enter <b>ID Number</b>");
									$("#idNumberError").css("color", "red");
									idNumError = false;
								} else if (!exp.test(val)) {
									$("#idNumberError").show();
									$("#idNumberError").html(
											"Invaild _ID Number");
									$("#idNumberError").css("color", "red");
									idNumberError = false;

								} else {
									$("#idNumberError").hide();
									idNumberError = true;
								}
								return idNumberError;
							}

							// **************on click submit button****************

							$("#Create").click(
									function() {
										userTypeError = false;
										userCodeError = false;
										userMailError = false;
										userContactError = false;
										userIdTypeError = false;
										idNumberError = false;

										validate_userType();
										validate_userCode();
										validate_userMail();
										validate_userContact();
										validate_userIdType();
										validate_idNumber();

										if (userTypeError && userCodeError
												&& userMailError
												&& userContactError
												&& userIdTypeError
												&& idNumberError)
											return true;
										else
											return false;

									});
							// ******************  (^^)  **************************

						});
	</script>


</body>
</html>