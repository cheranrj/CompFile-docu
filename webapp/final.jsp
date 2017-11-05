<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Complaint Details</title>
</head>
<body>

<%@ include file="../../layout/header2.jsp"%>
	
	
		<form id="addUserFrm" class="form-horizontal" role="form"
					method="POST" action="../admin/status">
					
		<div class="form-group">
						<label for="name"><b>Complaint ID</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label name="id">${users.id}</label>
					</div>
										
		<div class="form-group">
						<label for="name"><b>NAME</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${users.name}
					</div>
					
					<div class="form-group">
						<label for="name"><b>CATEGORY</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${users.category}
					</div>
					
					<div class="form-group">
						<label for="name"><b>SUBJECT</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${users.subject}
					</div>
					
					<div class="form-group">
						<label for="name"><b>DISTRICT</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${users.district}
					</div>
					
					<div class="form-group">
						<label for="name"><b>ADDRESS</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${users.address}
					</div>
					
					<div class="form-group">
						<label for="emailId"><b>E-MAILID</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${users.email}
					</div>
					
					<div class="form-group">
						<label for="name"><b>MOBILE NO</b></label>&nbsp;&nbsp;&nbsp;&nbsp;${users.mobile}
					</div>
					
					<div class="form-group">
						<label for="name"><b>STATUS</b></label><input type="text"
							class="form-control" name="status" required="required" placeholder = "Enter your status"/>
					</div>
					
					<div class="form-group">
						<button type="submit" class="btn btn-success" id="addUserBtn">Submit</button>
					</div>
					
					
					<hr />
					
	</form>					
					



</body>
</html>