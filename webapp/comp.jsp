<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Compliant form</title>
</head>
<body>

<%@ include file="../../layout/header2.jsp"%>

	<div class="container-fluid">

		<div class="row">
			<div class="col-md-6">


				<h4><b>Complaint Details</b></h4>

				<br />

				


				<form id="addUserFrm" class="form-horizontal" role="form"
					method="POST" action="../user/detail">

					<!-- <div class="form-group">
						<label for="name">Complaint Id</label><input type="number"
							class="form-control" name="name" required="required" />
					</div> -->
					
					<div class="form-group">
						<label for="name"><b>NAME</b></label><input type="text"
							class="form-control" name="name" required="required" placeholder="Enter your Name"/>
					</div>
					
					<div class="form-group">
						<label for="name"><b>CATEGORY</b></label><input type="text"
							class="form-control" name="category" required="required" placeholder ="Enter the Category" />
					</div>
					
					<div class="form-group">
						<label for="name"><b>SUBJECT</b></label><input type="text"
							class="form-control" name="subject" required="required" placeholder = "Enter the Subject"/>
					</div>
					
					<div class = "form-group">
					
					<label for="name"><b>DISTRICT</b></label><select class="form-control"  required="required" name="district">
												
												<option value=""></option>
												<option value="Ariyalur">Ariyalur</option>
												<option value="Karur">Karur</option>
												<option value="Nagapattinam">Nagapattinam</option>
												<option value="Perambalur">Perambalur</option>
												<option value="Pudukkottai">Pudukkottai</option>
												<option value="Thanjavur">Thanjavur</option>
												<option value="Tiruchirappalli">Tiruchirappalli</option>
												<option value="Tiruvarur">Tiruvarur</option>
												<option value="Dharmapuri">Dharmapuri</option>
												<option value="chennai">chennai</option>
												<option value="kanchipuram">kanchipuram</option>
												<option value="cuddalore">cuddalore</option>
												<option value="Theni">Theni</option>
												<option value="Tirunelveli">Tirunelveli</option>
												
										</select>
					</div>										
					
					<div class="form-group">
						<label for="name"><b>ADDRESS</b></label><input type="text"
							class="form-control" name="address" required="required" placeholder="Enter your Address" />
					</div> 
					
					<div class="form-group">
						<label for="emailId"><b>E-MAILID</b></label><input type="email"
							class="form-control" name="email" required="required" placeholder="Your E-mail Id"/>
					</div>
					
					<div class="form-group">
						<label for="name"><b>MOBILE NO</b></label><input type="number"
							class="form-control" name="mobile" required="required" placeholder = "Your Mobile number" />
					</div>
					
					
					
					<div class="form-group">
						<button type="submit" class="btn btn-success" id="addUserBtn">Submit</button>
					</div>
					<hr />
					
				</form>

			</div>
		</div>
	</div>

</body>
</html>