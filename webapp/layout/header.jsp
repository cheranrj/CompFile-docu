<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link href="../assets/css/bootstrap.min.css" rel="stylesheet" />

<link href="../assets/css/login-register.css" rel="stylesheet" />

<link rel="stylesheet" href="../assets/css/style.css" />
<link rel="stylesheet" href="../assets/css/font-awesome.min.css" />

<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/tether.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap4.min.css" />
<script
	src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap4.min.js"></script>



<nav
	class="navbar navbar-toggleable-md navbar-inverse fixed-top bg-inverse">
	<button class="navbar-toggler navbar-toggler-right" type="button"
		data-toggle="collapse" data-target="#navbarsExampleDefault"
		aria-controls="navbarsExampleDefault" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<a class="navbar-brand" href="#"></a>

	<div class="collapse navbar-collapse" id="navbarsExampleDefault">
		<ul class="navbar-nav mr-auto">
			
			<li class="nav-item"><a class="nav-link" href="../auth/alt"></a>
			</li>
			
			<li class="nav-item active"><a class="nav-link" href="../">
					<span class="sr-only">(current)</span>
			</a></li>
			
			<c:if test="${LOGGED_IN_USER!=null}">
				<li class="nav-item"><a class="nav-link"
					href="../orders/myorders"> </a></li>
			</c:if>
			<c:if test="${LOGGED_IN_USER!=null}">
				<%--  <c:if test="${LOGGED_IN_USER.role.id==1}">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="" id="dropdown01"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
						<div class="dropdown-menu" aria-labelledby="dropdown01">
							<a class="dropdown-item" href="../orders"></a>
						</div></li>
				</c:if>  --%>
			</c:if>
		</ul>



		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<ul class="navbar-nav mr-auto pull-right">
			<c:if test="${!empty LOGGED_IN_USER}">
				<%-- <li class="nav-item"><a class="nav-link"> Welcome
						${LOGGED_IN_USER.name}(${LOGGED_IN_USER.role.name})</a></li> --%>
				<li class="nav-item"><a class="nav-link" href="../auth/logout">Logout</a>
				</li>
			</c:if>


		</ul>
		<%-- <c:if test="${empty LOGGED_IN_USER}">


			<a href="../auth/home" class="btn btn-primary">Login </a>  &nbsp; &nbsp; 
	
			<a href="../auth/register" class="btn btn-success">Register</a>


		</c:if> --%>
	</div>

</nav>