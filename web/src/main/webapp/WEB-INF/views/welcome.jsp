<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="local" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html>
<head>
    <%@ include file="include/head.jsp" %>
    <title><local:message code="welcome.anketa"/></title>
</head>
<body>
<%@ include file="include/header_autorized.jsp" %>
<div class="container">
    <button  class="btn-primary" type="submit"><a style="color: white" href="/register/student"><local:message code="welcome.anketa.student"/></a></button> <br>
</div>
</body>
</html>