<%--
  Created by IntelliJ IDEA.
  User: sw
  Date: 2018-03-05
  Time: 오후 4:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<link>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <%--<spring:url value="/jquery/jquery.min.js" var="jqueryUrl" />--%>
    <%--<spring:url value="/jquery-ui/jquery-ui.min.js" var="jqueryUiUrl" />--%>
    <%--<spring:url value="/jquery-ui/jquery-ui.theme.min.css" var="jqueryUiThemeCssUrl" />--%>
    <%--<link rel="stylesheet" type="text/css" href="${jqueryUiThemeCssUrl}" />--%>
    <%--<script src="/webjars/jquery/3.2.1/jquery.js" type="text/javascript"></script>--%>
    <%--<script src="/webjars/jquery-ui/1.12.1/jquery-ui.js" type="text/javascript" ></script>--%>

    <script
            src="https://code.jquery.com/jquery-3.3.1.js"
            integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
            crossorigin="anonymous"></script>
    <script
            src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"
            integrity="sha256-0YPKAwZP7Mp3ALMRVB2i8GXeEndvCq3eSl/WsAl1Ryk="
            crossorigin="anonymous"></script>
    <c:url value="/layouts/jquery-ui.theme.css" var="themeUrl" />
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/themes/black-tie/jquery-ui.css" />
    <%--spring theme--%>
    <spring:theme code="styleSheet" var="app_css"/>
    <spring:url value="${app_css}" var="app_css_url" />
    <link rel="stylesheet" href="${app_css_url}" type="text/css" media="screen" />

    <spring:message code="header_text" var="headerText" />
</head>

<nav class="navbar navbar-expand-md navbar-light bg-light">
    <a href="#" class="navbar-brand">${headerText}</a>
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