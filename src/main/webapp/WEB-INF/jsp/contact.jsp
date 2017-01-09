<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%-- <c:import url="header.jsp"/> --%>
<!DOCTYPE html >
<c:import url="header.jsp" />
<html>
<head>
<title>CONTACT</title>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="50">
	<!-- Container (Contact Section) -->
	<div id="contact" class="container">
		<h3 class="text-center">Contact</h3>
		<p class="text-center">
			<em>We love our fans!</em>
		</p>

		<div class="row">
			<div class="col-md-4">
				<p>
					<span class="glyphicon glyphicon-map-marker"></span>Chicago, US
				</p>
				<p>
					<span class="glyphicon glyphicon-phone"></span>Phone: +00
					1515151515
				</p>
				<p>
					<span class="glyphicon glyphicon-envelope"></span>Email:
					mail@mail.com
				</p>
			</div>
		</div>
		<div id="googleMap"></div>

		<!-- Add Google Maps -->
		<script src="https://maps.googleapis.com/maps/api/js"></script>
		<script>
			var myCenter = new google.maps.LatLng(41.878114, -87.629798);

			function initialize() {
				var mapProp = {
					center : myCenter,
					zoom : 12,
					scrollwheel : false,
					draggable : false,
					mapTypeId : google.maps.MapTypeId.ROADMAP
				};

				var map = new google.maps.Map(document
						.getElementById("googleMap"), mapProp);

				var marker = new google.maps.Marker({
					position : myCenter,
				});

				marker.setMap(map);
			}

			google.maps.event.addDomListener(window, 'load', initialize);
		</script>
	</div>
</body>
</html>