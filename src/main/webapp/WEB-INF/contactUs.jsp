<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<!--  Enable Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<!--  Access the Static Resources without using spring URL -->
<link href="/css/style.css" rel="stylesheet" />
<script src="/js/script.js"></script>

</head>

<body>



	<%@ include file="header.jsp"%>

	<div class="row p-5 mb-5 bg-light">
		<div class="col-5">
			<h2>Contact</h2>
			<p>Contact us and we'll get back to you within 24 hours.</p>
			<p>
				<span class="glyphicon glyphicon-map-marker"></span> Malaysia, KL
			</p>
			<p>
				<span class="glyphicon glyphicon-phone"></span> +00 1515151515
			</p>
			<p>
				<span class="glyphicon glyphicon-envelope"></span>
				contact@abccar.com
			</p>
		</div>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>
