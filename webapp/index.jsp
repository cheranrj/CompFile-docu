<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LogIn Page</title>
</head>
<body>

<%@ include file="../../layout/header1.jsp"%>
<center><h1>Complaint Registration</h1></center>
<div class="container-fluid">

		<div class="row">
			<div class="col-md-4">

				<%
					Object object = session.getAttribute("LOGGED_IN_USER");
					if (object != null) {
						response.sendRedirect("/books");
					}
				%>
				<c:forEach items="${errors}" var="error">
					<font color="red"><c:out value="${error.defaultMessage}" /></font>
					<br />
				</c:forEach>

				<c:if test="${not empty ERROR_MESSAGE}">
					<font color="red"><c:out value="${ERROR_MESSAGE}" /></font>
					<br />
				</c:if>

				<p>
					<c:if test="${msg}">
						<font color="red"><c:out value="${msg}" /></font>
						<br />
					</c:if>
				</p>
				
				<div class="portlet-body">

					<form action="../auth/login" method="POST">

						<div class="form-group">
							<label for="userName"><h5>UserId :</h5></label> <input type="email"
								class="form-control" name="email" placeholder="Enter Email Id"
								autofocus="autofocus" required="required" id="email"
								value="${regFormData.email.trim()}" />
						</div>

						<div class="form-group">
							<label for="password"><h5>Password :</h5></label> <input type="password"
								class="form-control" name="password"
								placeholder="Enter Password" required="required" id="password" />
						</div>
						<div class="form-group">
							<button type="submit" name="add" class="btn btn-success"
								id="addLoginBtn">SIGN IN</button>

							<a href="auth/register" class='btn btn-primary'>SIGN UP</a>
						</div>

					</form>

				</div>
			</div>
		</div>
	</div>

</body>
</html>