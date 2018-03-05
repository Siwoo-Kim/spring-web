<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="com.siwoo.application.domain.Singer" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Singer List</title>

    <%--spring theme--%>
    <spring:theme code="styleSheet" var="app_css"/>
    <spring:url value="${app_css}" var="app_css_url" />
    <link rel="stylesheet" href="${app_css_url}" type="text/css" media="screen" />
    <%--messages--%>
    <spring:message code="label_singer_list" var="labelSingerList"/>
    <spring:message code="label_singer_first_name" var="labelSingerFirstName" />
    <spring:message code="label_singer_last_name" var="labelSingerLastName" />
    <spring:message code="label_singer_birth_date" var="labelSingerBirthDate" />

</head>
<body>
    <nav class="navbar navbar-expand-md navbar-light bg-light">
        <a href="#" class="navbar-brand">Web App</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Features</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container-fluid">
        <div class="row">
        <h1 style="text-align: center" class="alert alert-light">${labelSingerList}</h1>

        <c:if test="${not empty singerList}">
            <table class="table table-hover" style="width: 100%">
                <thead>
                 <tr>
                     <th>Index</th>
                     <th>${labelSingerLastName}</th>
                     <th>${labelSingerFirstName}</th>
                     <th>${labelSingerBirthDate}</th>
                 </tr>
                </thead>
                <c:forEach var="singer" items="${singerList}" varStatus="status">
                    <tr>
                        <th>${status.index}</th>
                        <th>${singer.firstName}</th>
                        <th>${singer.lastName}</th>
                        <th>${Singer.getBirthDateString(singer)}</th>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
        </div>
    </div>

    <!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>