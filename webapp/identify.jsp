<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Recognizing</title>
</head>
<body>

<%@ include file="../../layout/header2.jsp"%>


<form action="../user/valid" method="GET">

					<div class="form-group">
							<label for="name">Complaint Id</label><input type="number"
							class="form-control" name="id" required="required" />
					
						</div>
						
						
						<div class="form-group">
						<label for="emailId"><b>E-MAILID</b></label><input type="email"
							class="form-control" name="email" required="required" placeholder="Complaint E-mail Id"/>
					</div>
					
					<div class="form-group">
						<button type="submit" class="btn btn-success" id="addUserBtn">Submit</button>
					</div>
					
					
					
</form>					

</body>
</html>