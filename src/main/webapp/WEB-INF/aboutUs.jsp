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

						<div class="container pt-5 pb-3">
							<h1 class="display-4 text-uppercase text-center mb-5">About Us</h1>
							<div class="row justify-content-center">
								<div class="col-lg-10 text-center">
									<img class="w-75 mb-4" src="img/about.png" alt="">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut totam perspiciatis
										voluptates nihil minus hic quo odio dignissimos atque, quod qui, impedit id
										laudantium, sint nesciunt fugit officiis. Cum nesciunt neque tenetur alias earum
										doloremque excepturi exercitationem, delectus quasi facilis voluptatibus quam
										dignissimos, asperiores eveniet dolore itaque recusandae aspernatur ratione sunt
										voluptates.</p>
								</div>
							</div>
							<div class="row mt-3">
								<div class="col-lg-4 mb-2">
									<div class="d-flex align-items-center bg-light p-4 mb-4" style="height: 150px;">
										<div class="d-flex align-items-center justify-content-center flex-shrink-0 bg-primary ml-n4 mr-4"
											style="width: 100px; height: 100px;">
											<i class="fa fa-2x fa-headset text-white"></i>
										</div>
										<h4 class="text-uppercase m-0">Lorem Ipsum</h4>
									</div>
								</div>
								<div class="col-lg-4 mb-2">
									<div class="d-flex align-items-center bg-secondary p-4 mb-4" style="height: 150px;">
										<div class="d-flex align-items-center justify-content-center flex-shrink-0 bg-primary ml-n4 mr-4"
											style="width: 100px; height: 100px;">
											<i class="fa fa-2x fa-car text-white"></i>
										</div>
										<h4 class="text-light text-uppercase m-0">Lorem Ipsum</h4>
									</div>
								</div>
								<div class="col-lg-4 mb-2">
									<div class="d-flex align-items-center bg-light p-4 mb-4" style="height: 150px;">
										<div class="d-flex align-items-center justify-content-center flex-shrink-0 bg-primary ml-n4 mr-4"
											style="width: 100px; height: 100px;">
											<i class=" fa fa-2x fa-map-marker-alt text-white"></i>
										</div>
										<h4 class="text-uppercase m-0">Lorem Ipsum</h4>
									</div>
								</div>
							</div>
						</div>

						<%@ include file="footer.jsp" %>
				</body>

				</html>