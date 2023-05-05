<%@ page contentType="text/html; charset=US-ASCII" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
			<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

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


					<!--  Access the Static Resources without using spring URL -->
					<link href="/css/style.css" rel="stylesheet" />
					<script src="/js/script.js"></script>

				</head>

				<body>

					<%@ include file="header.jsp" %>
						<div class="container">
							<c:if test="${success_post != null}">
								<div class="alert alert-success">${success_post}
									Click here to <a href="/car_detail?cid=${id}">View</a> your car
									post
								</div>
							</c:if>
							<sec:authorize access="hasRole('Users')">
								<!-- post car link-->
								<div class="row mb-5">
									<div class="col-5">
										<p class=" font-weight-bold" style="margin-bottom: 0px; font-weight: bolder;">
											Sell Your Car</p>
										<button class="btn btn-primary" type="button" data-bs-toggle="modal"
											data-bs-target="#exampleModal" style="font-color: white;">
											+ Sell car</button>
									</div>
									<div class="col-4"></div>



									<!-- Modal -->

									<div class="modal fade" id="exampleModal" tabindex="-1"
										aria-labelledby="exampleModalLabel" aria-hidden="true" role="dialog">
										<div class="modal-dialog">
											<div class="modal-content">

												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalLabel">Sell Your
														Car Today!</h5>
													<button type="button" class="btn-close" data-bs-dismiss="modal"
														aria-label="Close"></button>
												</div>
												<div class="modal-body">
													<c:if test="${success_post != null}">
														<div class="alert alert-success">${success_post}</div>
													</c:if>

													<!-- Car Post Form -->
													<sf:form action="car_post" method="post" class="was-validated"
														modelAttribute="car" enctype="multipart/form-data">
														<div class="mb-3 mt-3">
															<label for="name" class="d-flex form-label">Name:</label>
															<sf:input type="text" class="form-control"
																placeholder="Enter car name" name="name" path="name"
																required="true" />
															<div class="valid-feedback">Valid.</div>
															<div class="invalid-feedback">Please fill out this
																field.</div>
														</div>
														<div class="mb-3">
															<label for="model" class="d-flex form-label">Model:</label>
															<sf:input type="text" class="form-control"
																placeholder="Enter model" name="model" path="model"
																required="true" />
															<div class="valid-feedback">Valid.</div>
															<div class="invalid-feedback">Please fill out this
																field.</div>
														</div>
														<div class="mb-3">
															<label for="price" class="d-flex form-label">Price
																(Rp):</label>
															<sf:input type="text" class="form-control" id="price"
																placeholder="Enter car price" name="price" path="price"
																required="true" />
															<div class="valid-feedback">Valid.</div>
															<div class="invalid-feedback">Please fill out this
																field.</div>
														</div>
														<div class="mb-3">
															<label for="make" class="d-flex form-label">Make
																Year:</label>
															<sf:input type="text" class="form-control"
																placeholder="Enter make year" name="make" path="make"
																required="true" />
															<div class="valid-feedback">Valid.</div>
															<div class="invalid-feedback">Please fill out this
																field.</div>
														</div>
														<div class="mb-3">
															<label for="registeration"
																class="d-flex form-label">Registration
																Date:</label>
															<sf:input type="text" class="form-control"
																id="registeration"
																placeholder="Enter registeration date"
																name="registeration" path="registeration"
																required="true" />
															<div class="valid-feedback">Valid.</div>
															<div class="invalid-feedback">Please fill out this
																field.</div>
														</div>
														<div class="mb-3">
															<label class="d-flex form-label">Photo:</label> <input
																type="file" class="form-control" name="fileImage"
																id="photo" accept="image/png, image/jpeg"
																required="true" />
															<div class="valid-feedback">Valid.</div>
															<div class="invalid-feedback">Please fill out this
																field.</div>
														</div>

														<div class="holder"
															style="height: 300px; width: 300px; margin: auto;">
															<img id="imgPreview" src="#" alt="image preview"
																style="width: inherit;" />
														</div>

														<button type="submit"
															class="btn btn-primary d-flex">Post</button>
													</sf:form>
													<script>
														$(document).ready(() => {

															$("#photo").change(function () {
																const file = this.files[0];
																if (file) {
																	let reader = new FileReader();
																	reader.onload = function (event) {
																		$("#imgPreview")
																			.attr("src", event.target.result);
																	};
																	reader.readAsDataURL(file);
																}
															});
														});
													</script>
													<!-- Car Post Form -->
												</div>
											</div>
										</div>

									</div>
								</div>

							</sec:authorize>
							<!-- post car link-->


							<!-- list of all cars posted -->
							<div class="row" style="gap: 60px;">
								<c:forEach items="${cars}" var="c">
									<c:set var="id" value="${c.id}"></c:set>
									<c:if test="${success_post == null}">

										<c:if test="${c.sellStatus != 'sold'}">
											<a class="car col-12 col-sm-12 col-xs-12 col-md-4 col-lg-3"
												style="border-radius: 10px;" href="/car_detail?cid=${c.id}">
												<div class="card p-3 mb-2">
													<img src="${c.photoImagePath}" class="card-img-top"
														alt="${c.photos}">
													<div>
														<h4 class="heading">${c.name}</h4>
														<div>Rp ${c.price}</div>
													</div>
												</div>
											</a>
										</c:if>

									</c:if>
								</c:forEach>
							</div>
						</div>



						<%@ include file="footer.jsp" %>
							<script src="http://localhost:35729/livereload.js"></script>
				</body>

				</html>