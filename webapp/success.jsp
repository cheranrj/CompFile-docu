<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Final Page</title>
</head>
<body>

<%@ include file="../../layout/header2.jsp"%>

<h4>Your Complaint has Been Registered</h4><br>

<div class="form-group">
						<label for="name"><b>Complaint ID</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label name="id">${scomp.id}</label>
					</div>
										
		<div class="form-group">
						<label for="name"><b>NAME</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${scomp.name}
					</div>
					
					<div class="form-group">
						<label for="name"><b>CATEGORY</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${scomp.category}
					</div>
					
					<div class="form-group">
						<label for="name"><b>SUBJECT</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${scomp.subject}
					</div>
					
					<div class="form-group">
						<label for="name"><b>DISTRICT</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${scomp.district}
					</div>
					
					<div class="form-group">
						<label for="name"><b>ADDRESS</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${scomp.address}
					</div>
					
					<div class="form-group">
						<label for="emailId"><b>E-MAILID</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${scomp.email}
					</div>
					
					<div class="form-group">
						<label for="name"><b>MOBILE NO</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${scomp.mobile}
					</div>
					
					<div class="form-group">
						<label for="name"><b>CURRENT STATUS</b></label>&nbsp;&nbsp;&nbsp;&nbsp;${scomp.status}
					</div>
				
					
					<div class="form-group">
						<button type="submit" class="btn btn-success" id="addUserBtn">Print Out</button>
					</div>
					
					<a href="../user/select" class="btn btn-success">Go Back</a>


</body>
</html>