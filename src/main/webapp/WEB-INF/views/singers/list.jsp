<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="com.siwoo.application.domain.Singer" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <title>Singer List</title>

    <%--messages--%>
    <spring:message code="label_singer_list" var="labelSingerList"/>
    <spring:message code="label_singer_first_name" var="labelSingerFirstName" />
    <spring:message code="label_singer_last_name" var="labelSingerLastName" />
    <spring:message code="label_singer_birth_date" var="labelSingerBirthDate" />
    <spring:url value="/singers" var="singersUrl" />
</head>
<body>

    <jsp:include page="/WEB-INF/layouts/header.jsp" />
    <div class="container-fluid">
        <div class="row main-wrapper">
            <jsp:include page="/WEB-INF/layouts/menu.jsp" />
            <div class="col-10">
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
                                    <th><a href="${singersUrl}/${singer.id}">${status.index}</a></th>
                                    <th>${singer.firstName}</th>
                                    <th>${singer.lastName}</th>
                                    <th>${Singer.getBirthDateString(singer)}</th>
                                </tr>
                            </c:forEach>
                        </table>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="/WEB-INF/layouts/footer.jsp" />
</body>
</html>