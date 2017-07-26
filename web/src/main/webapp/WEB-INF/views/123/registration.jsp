<%--
  Created by IntelliJ IDEA.
  User: Amal Kabulov
  Date: 01.05.2017
  Time: 21:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <%--<meta http-equiv="X-UA-Compatible" content="IE=edge">--%>
    <%--<meta name="viewport" content="width=device-width, initial-scale=1">--%>
    <%--<meta name="description" content="">--%>
    <%--<meta name="author" content="">--%>

    <title>Create an account</title>

    <%--<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet">--%>

</head>

<body>

<div class="container">

    <%--<form:form method="POST" modelAttribute="userForm" class="form-signin">--%>
    <form:form method="POST" action="registr" class="form-signin">
        <h2 class="form-signin-heading">Create your account</h2>

            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="username" class="form-control" placeholder="Username"
                            autofocus="true"></form:input>
                <form:errors path="username"></form:errors>
            </div>

            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="email" class="form-control" placeholder="Email"
                            autofocus="true"></form:input>
                <form:errors path="email"></form:errors>
            </div>

            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
                <form:errors path="password"></form:errors>
            </div>

            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="password" path="confirmPassword" class="form-control"
                            placeholder="Confirm your password"></form:input>
                <form:errors path="confirmPassword"></form:errors>
            </div>

        <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
    </form:form>

</div>
<!-- /container -->
<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>--%>
<%--<script src="/resources/bootstrap/js/bootstrap.js"></script>--%>
<%--<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>--%>
<%--<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>--%>
</body>
</html>
