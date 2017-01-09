<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%-- <c:import url="header.jsp"/> --%>
<!DOCTYPE html >
<c:import url="header.jsp" />
<html>
<head>
<title>MENU</title>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="50">

	<!-- Container (MENU Section) -->
	<div id="tour" class="bg-1">
		<div class="container">
			<h3 class="text-center">MENU</h3>
			<div class="row text-center">
				<c:forEach items="${ foods }" var="food">
					<div class="col-sm-4">
						<div class="thumbnail">

							<c:url var="pic" value="${ food.picture }" />
							<img src="${ pic }" alt='<c:out value="${food.title}"/>'
								width="400" height="300" />
							<p>
								<strong><c:out value="${ food.title }"></c:out></strong>
							</p>
							<p>
								<c:out value="${food.description}"></c:out>
							</p>
							<p>
								<c:out value="${food.price}"></c:out>
							</p>
							<button class="btn" data-toggle="modal" data-target="#myModal">Buy
							</button>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h4>
						<span class="glyphicon glyphicon-lock"></span> Tickets
					</h4>
				</div>
				<div class="modal-body">
					<form role="form">
						<div class="form-group">
							<label for="psw"><span
								class="glyphicon glyphicon-shopping-cart"></span> Tickets, $23
								per person</label> <input type="number" class="form-control" id="psw"
								placeholder="How many?">
						</div>
						<div class="form-group">
							<label for="usrname"><span
								class="glyphicon glyphicon-user"></span> Send To</label> <input
								type="text" class="form-control" id="usrname"
								placeholder="Enter email">
						</div>
						<button type="submit" class="btn btn-block">
							Pay <span class="glyphicon glyphicon-ok"></span>
						</button>
					</form>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-danger btn-default pull-left"
						data-dismiss="modal">
						<span class="glyphicon glyphicon-remove"></span> Cancel
					</button>
					<p>
						Need <a href="#">help?</a>
					</p>
				</div>
			</div>
		</div>
	</div>
	</div>

	<!-- Footer -->
	<footer class="text-center">
		<a class="up-arrow" href="#myPage" data-toggle="tooltip"
			title="TO TOP"> <span class="glyphicon glyphicon-chevron-up"></span>
		</a><br> <br>
		<p>Made By Lena Drutko</p>
	</footer>

	<script>
		$(document).ready(
				function() {
					// Initialize Tooltip
					$('[data-toggle="tooltip"]').tooltip();

					// Add smooth scrolling to all links in navbar + footer link
					$(".navbar a, footer a[href='#myPage']").on('click',
							function(event) {

								// Make sure this.hash has a value before overriding default behavior
								if (this.hash !== "") {

									// Prevent default anchor click behavior
									event.preventDefault();

									// Store hash
									var hash = this.hash;

									// Using jQuery's animate() method to add smooth page scroll
									// The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
									$('html, body').animate({
										scrollTop : $(hash).offset().top
									}, 900, function() {

										// Add hash (#) to URL when done scrolling (default click behavior)
										window.location.hash = hash;
									});
								} // End if
							});
				})
	</script>
</body>
</html>