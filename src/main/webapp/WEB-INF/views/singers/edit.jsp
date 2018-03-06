<%--
  Created by IntelliJ IDEA.
  User: sw
  Date: 2018-03-05
  Time: 오후 5:51
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
    <spring:message code="label_singer_new" var="labelSingerNew" />
    <spring:message code="label_singer_update" var="labelSingerUpdate" />
    <spring:message code="label_singer_info" var="labelSingerInfo" />
    <spring:message code="label_singer_first_name" var="labelSingerFirstName" />
    <spring:message code="label_singer_last_name" var="labelSingerLastName" />
    <spring:message code="label_singer_birth_date" var="labelSingerBirthDate" />
    <spring:message code="label_singer_description" var="labelSingerDescription" />
    <spring:message code="label_singer_update" var="labelSingerUpdate" />
    <spring:message code="date_format_pattern" var="dateFormatPattern" />
    <spring:message code="label_singer_photo" var="labelSingerPhoto" />

    <spring:eval expression="singer.id == null ? labelSingerNew:labelSingerUpdate" var="formTitle" />

    <title>${formTitle}</title>
    <style>
        .error{
            border-bottom: 1px solid pink;
        }
    </style>

</head>
<body>

<jsp:include page="/WEB-INF/layouts/header.jsp" />
<div class="container-fluid">
    <div class="row main-wrapper">
        <jsp:include page="/WEB-INF/layouts/menu.jsp" />
        <div class="col-10">
            <div class="12"><h1 class="alert alert-light">${formTitle}</h1></div>
            <div id="singerUpdate" meta-id="${singer.id}">
                <form:form modelAttribute="singer" id="singerUpdateForm" method="post" cssClass="form-group">
                    <c:if test="${not empty message}">
                        <div id="message" class="${message.type}">${message.message}</div>
                    </c:if>

                    <form:label path="firstName">${labelSingerFirstName}</form:label>
                    <form:input path="firstName" cssClass="form-control" />
                    <form:errors path="firstName" element="p" cssClass="text-muted error"/>
                    <p/>

                    <form:label path="lastName">${labelSingerLastName}</form:label>
                    <form:input path="lastName" cssClass="form-control" />
                    <form:errors path="lastName" element="p" cssClass="text-muted error"/>
                    <p/>

                    <form:label path="birthDate">${labelSingerBirthDate}</form:label>
                    <form:input path="birthDate" cssClass="form-control" />
                    <form:errors path="birthDate" element="p" cssClass="text-muted error"/>
                    <p/>

                    <form:label path="description">${labelSingerDescription}</form:label>
                    <form:textarea cols="60" rows="8" path="description" cssClass="form-control" id="singerDescription" />
                    <form:errors path="description" element="p" cssClass="text-muted error"/>
                    <p/>

                    <label for="file">${labelSingerFirstName}</label>
                    <input id="file" name="file" type="file" class="form-control" />
                    <p/>

                    <form:hidden path="version" />
                    <div class="btn-group">
                        <button type="submit"
                                class="btn btn-outline-primary col-6"
                        >Save</button>
                        <button type="reset" class="btn btn-outline-warning col-6">Reset</button>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/layouts/footer.jsp" />


<script type="text/javascript">
    $(function () {
        console.log($('#birthDate'))
        $('#birthDate').datepicker({
            dateFormat : 'yy-MM-dd',
            changeYear: true
        });
    })
</script>
</body>
</html>