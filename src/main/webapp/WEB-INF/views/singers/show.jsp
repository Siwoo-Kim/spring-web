<%--
  Created by IntelliJ IDEA.
  User: sw
  Date: 2018-03-05
  Time: 오후 5:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="com.siwoo.application.domain.Singer" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>

    <spring:message code="label_singer_info" var="labelSingerInfo" />
    <spring:message code="label_singer_first_name" var="labelSingerFirstName" />
    <spring:message code="label_singer_last_name" var="labelSingerLastName" />
    <spring:message code="label_singer_birth_date" var="labelSingerBirthDate" />
    <spring:message code="label_singer_description" var="labelSingerDescription" />
    <spring:message code="label_singer_update" var="labelSingerUpdate" />
    <spring:message code="date_format_pattern" var="dateFormatPattern" />
    <spring:message code="label_singer_photo" var="labelSingerPhoto" />

    <title>${labelSingerInfo}</title>
    <spring:url value="/singers/photo" var="singerPhotoUrl" />
    <spring:url value="/singers" var="editSingerUrl" />
</head>
<body>

<jsp:include page="/WEB-INF/layouts/header.jsp" />
<div class="container-fluid">
    <div class="row main-wrapper">
        <jsp:include page="/WEB-INF/layouts/menu.jsp" />
        <div class="col-10">
            <div class="col-12">
                <h1 class="alert alert-light">${labelSingerInfo}</h1>
                <c:if test="${not empty message}">
                    <div  id="message" class="text-muted ${message.type}">${message.message}</div>
                </c:if>
            </div>

            <table class="table">
                <tr>
                    <td>${labelSingerFirstName}</td>
                    <td>${singer.firstName}</td>
                </tr>
                <tr>
                    <td>${labelSingerLastName}</td>
                    <td>${singer.lastName}</td>
                </tr>
                <tr>
                    <td>${labelSingerBirthDate}</td>
                    <td>${Singer.getBirthDateString(singer)}</td>
                </tr>
                <tr>
                    <td>${labelSingerDescription}</td>
                    <td>${singer.description}</td>
                </tr>
                <tr style="min-height: 100px">
                    <td>${labelSingerPhoto}</td>
                    <td><img src="${singerPhotoUrl}/${singer.id}" class="img-fluid"></td>
                </tr>
            </table>

            <a href="${editSingerUrl}/${singer.id}?form" class="btn btn-outline-primary col-12">${labelSingerUpdate}</a>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/layouts/footer.jsp" />
</body>
</html>