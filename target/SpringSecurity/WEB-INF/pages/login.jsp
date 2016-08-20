<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<head>
<body BACKGROUND="login1.jpg"></body>
<link href="<c:url value="/resources/css/form.css" />" rel="stylesheet"
	type="text/css" />
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet"
	type="text/css" />
<title>Login Page</title>
</head>
<body onload='document.loginForm.username.focus();'
	BACKGROUND="login1.jpg">
	<div class="header-container">

		<center>
			<table>
				<br />
				<br />
				<br />
				<tr>
					<td><img
						src="${pageContext.servletContext.contextPath}/resources/images/LOGO_SHIELD_final_b_w.png"
						height="140px" width="260px"></td>
					<td style="size: 70px; color: blue; font-size: 20px; left: 90px;">
						<H1>PROPERTY TAX MANAGEMENT SYSTEM</H1>
					</td>
				</tr>
			</table>
		</center>
		<br> <br>
		<center>
	</div>

	<div id="login-box">

		<h3>Login with Username and Password</h3>

		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>
		<tr>
			<th>
				<li><a class="h8" href="<core:url value="route/indexRoute"/> "><h2>new user</h2></a></li>
			</th>
		</tr>
		<form name='loginForm'
			action="<c:url value='/j_spring_security_check' />" method='POST'>

			<table>
				<tr>
					<td><label id="userNameLabel">User:</label></td>
					<td><input type='text' name='username'></td>
				</tr>
				<tr>
					<td><label id="passwordLabel">Password:</label></td>

					<td><input type='password' name='password' /></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td><input class="button" type="submit" /></td>
				</tr>
			</table>

			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />

		</form>
	</div>
	<jsp:include page="_footer.jsp"></jsp:include>

</body>
</html>