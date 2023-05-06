<%@ page contentType="text/html; charset=US-ASCII" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
			<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

				<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

				<html>

				<head>

					<!--  Enable Bootstrap -->
					<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
						rel="stylesheet">
					<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
						rel="stylesheet">
					<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

					<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
					<meta name="viewport" content="width=device-width, initial-scale=1">
					<!--  Access the Static Resources without using spring URL -->
					<link href="/css/style.css" rel="stylesheet" />
					<script src="/js/script.js"></script>

				</head>

				<body>



					<%@ include file="header.jsp" %>

						<div class="container">
							<div class="centered-wrapper">
								<div class="col-lg-5 mb-2">
									<h1 class="text-uppercase text-center">Contact Us</h1>
									<div class="shadow d-flex flex-column justify-content-center px-5 mb-4"
										style="height: 435px;">
										<div class="d-flex mb-3">
											<i class="fa fa-2x fa-map-marker-alt text-primary flex-shrink-0 mr-3"></i>
											<div class="mt-n1">
												<h5>Our Office</h5>
												<p> 11 Eunos Rd 8, #07-02 Lifelong Learning Institute, Singapura 408601
												</p>
											</div>
										</div>
										<div class="d-flex  mb-3">

											<i class="fa fa-2x fa-phone-alt text-primary flex-shrink-0 mr-3"></i>
											<div class="mt-n1">
												<h5>Phone</h5>
												<p class="m-0"> +65 6324 9730 </p>
											</div>
										</div>
										<div class="d-flex mb-3">
											<i class="fa fa-2x fa-envelope-open text-primary flex-shrink-0 mr-3"></i>
											<div class="mt-n1">
												<h5>Support</h5>
												<p>support@abccars.id </p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<%@ include file="footer.jsp" %>
				</body>

				</html>