<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<html>
<head><title>HOME</title></head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
<c:import url="header.jsp"/>
<c:url var="imgUrl1" value="/resources/img/fruit.jpg" />
<c:url var="imgUrl2" value="/resources/img/burger.jpg" />
<c:url var="imgUrl3" value="/resources/img/pizza.jpg" />

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="${imgUrl1}" alt="Fruit" width="1200" height="700">
        <div class="carousel-caption">
          <h3>Fruit</h3>
          <p>The atmosphere in New York is lorem ipsum.</p>
        </div>      
      </div>

      <div class="item">
        <img src="${imgUrl2}" alt="Burger" width="1200" height="700">
        <div class="carousel-caption">
          <h3>Burger</h3>
          <p>Thank you, Chicago - A night we won't forget.</p>
        </div>      
      </div>
    
      <div class="item">
        <img src="${imgUrl3}" alt="Pizza" width="1200" height="700">
        <div class="carousel-caption">
          <h3>Pizza</h3>
          <p>Even though the traffic was a mess, we had the best time playing at Venice Beach!</p>
        </div>      
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
</body>
</html>