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
<%@page isELIgnored="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Create an account</title>

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery-3.2.0.js"></script>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

</head>

<body>

<div class="container">
    <form action="/teacher-filter" method="POST">
        <p id="result"></p>

        <input type="text" name="country" class="form-control" id="country" placeholder="country" onkeyup="doAjax()" >

        <input type="text" name="city" class="form-control"  placeholder="city">

        <input type="text" name="skype" class="form-control" placeholder="skype">


        <input type="text" name="teachingLanguage" class="form-control" placeholder="teachingLanguage">

        <input type="text" name="motherTongue" class="form-control" placeholder="motherTongue">

        <input type="text" name="interlanguage" class="form-control" placeholder="interlanguage">

        <input type="text" name="exam" class="form-control" placeholder="exam">

        <input type="text" name="competence" class="form-control" placeholder="competence">

        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

        <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
    </form>
</div>
<div>
    <c:if test="${empty res}">
        Ничего не найдено
    </c:if>
    <c:forEach items="${res}" var="res">
        <div class="bg-success">
            <p>${res.city} --- ${res.country} --- ${res.specialCompetence} --- ${res.preparingExams}</p>
        </div>
    </c:forEach>
</div>
<!-- /container -->
<script src="${pageContext.request.contextPath}/resources/search.js"></script>
<%--<script src="/resources/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>--%>
</body>
</html>
