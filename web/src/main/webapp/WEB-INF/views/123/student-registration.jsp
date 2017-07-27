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

    <title>Create an account</title>

</head>

<body>

<div class="container">
    <form action="/register/student" method="post">

        <input type="text" name="name" class="form-control" placeholder="name">

        <input type="text" name="surname" class="form-control" placeholder="surname">

        <input type="text" name="dateOfBirth" class="form-control" placeholder="Date of birth">

        <input type="text" name="country" class="form-control" placeholder="country">

        <input type="text" name="city" class="form-control" placeholder="city">

        <input type="text" name="skype" class="form-control" placeholder="skype">

        <input type="text" name="phoneNumber" class="form-control" placeholder="Phone">

        <input type="text" name="motherTongue" class="form-control" placeholder="motherTongue">

        <input type="text" name="teachingLanguage" class="form-control" placeholder="teachingLanguage">

        <input type="hidden"  name="${_csrf.parameterName}"   value="${_csrf.token}"/>

        <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
    </form>
</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="/resources/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</body>
</html>
