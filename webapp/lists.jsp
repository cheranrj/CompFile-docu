<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Complaint list</title>
</head>
<body>

	<%@ include file="../../layout/header2.jsp"%>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<strong><i class="fa fa-list"></i>List of Complaints</strong>
					</div>
					<div class="panel-body">
						<table id="ordersTbl" border="1"
							class="table table-striped table-bordered">
							<thead>
								<tr>
									<th width="10%">Compliant Id</th>
									<th>Name</th>
									<th></th>
									
								</tr>
							</thead>
							<tbody>
							
														
								<c:forEach items="${users}" var="user">
									<tr>
										<td>${user.id}</td>
										<td>${user.name}</td>
										
												<td><a
													href="../admin/${user.id}"
													class="btn btn-success"> View In Detail </a></td>
											
									</tr>

								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>

			</div>
		</div>
	</div>


</body>
</html>