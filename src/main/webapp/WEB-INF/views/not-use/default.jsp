<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="com.siwoo.application.domain.Singer" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <title>{title}</title>

</head>
<body>

<jsp:include page="/WEB-INF/layouts/header.jsp" />
<div class="container-fluid">
    <div class="row main-wrapper">
        <jsp:include page="/WEB-INF/layouts/menu.jsp" />
        <div class="col-10">
           {content}
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/layouts/footer.jsp" />
</body>
</html>