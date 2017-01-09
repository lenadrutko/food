<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<html>
<head><title>MENU</title></head>
<body>
<c:import url="header.jsp"/>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
<!-- Container (MENU Section) -->
<div id="tour" class="bg-1">
  <div class="container">
    <h3 class="text-center">MENU</h3>
    <div class="row text-center">
    <c:forEach items="${foods}" var="food">>
      <div class="col-sm-4">
        <div class="thumbnail">
        <c:url value="${food.picture}" var="pic"/>
          <img src='<c:out value="${pic}"/>' alt='<c:out value="${food.title}"/>' width="400" height="300"/>
          <p><strong><c:out value="${food.title}"></c:out></strong></p>
          <p><c:out value="${food.description}"></c:out></p>
          <p><c:out value="${food.price}"></c:out></p>
          <button class="btn" data-toggle="modal" data-target="#myModal">Buy </button>
        </div>
      </div>
      </c:forEach>
    </div>
  </div>
  </div>
  </body>
</html>