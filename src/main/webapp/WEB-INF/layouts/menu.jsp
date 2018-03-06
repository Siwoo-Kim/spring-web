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

    <spring:message code="menu_header_text" var="menuHeaderText" />
    <spring:message code="menu_add_singer" var="menuAddSinger" />
    <spring:url value="/singers?form" var="addSingerUrl" />
<div class="col-2" style="border-right: 2px solid black;">
    <ul class="nav flex-column p-4">
        <li class="nav-item"><p class="navbar-brand">${menuHeaderText}</p></li>
        <li class="nav-item">
            <a class="nav-link active" href="#">${menuAddSinger}</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Nope</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Nope</a>
        </li>
    </ul>
</div>