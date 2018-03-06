<%--
  Created by IntelliJ IDEA.
  User: sw
  Date: 2018-03-05
  Time: 오후 5:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

    <spring:message code="home_text" var="homeText" />
    <spring:message code="label_en_US" var="labelEnUs" />
    <spring:message code="label_zh_HK" var="labelZhHk" />
    <spring:url value="/singers" var="homeUrl" />

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<footer class="footer" style="border-top: 2px solid black; background-color: cornsilk; text-align: center; min-height: 150px">
    <p class="mt-4">
        <a href="${homeUrl}">${homeText}</a> |
        <a href="${homeUrl}?lang=en_US">${labelEnUs}</a> |
        <a href="${homeUrl}?lang=zh_HK">${labelZhHk}</a>
    </p>
</footer>