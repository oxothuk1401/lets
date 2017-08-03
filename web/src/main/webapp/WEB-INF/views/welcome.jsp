<%@ taglib uri="http://www.springframework.org/tags" prefix="local" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<head>
    <title><local:message code="welcome.anketa"/></title>
    <script type="text/javascript" src="/resources/js/jquery-3.2.0.js"></script>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>

    <link rel="stylesheet" type="text/css" href="/resources/css/index.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/teachersCabinet.css">
</head>
<body>
<%@ include file="include/header_autorized.jsp" %>
<div class="container">
    <button  class="btn-primary" type="submit"><a style="color: white" href="/regStudentAction"><local:message code="welcome.anketa.student"/></a></button> <br>
    <button  class="btn-primary" type="submit"><a style="color: white" href="/regTeacherAction"><local:message code="welcome.anketa.teacher"/></a></button> <br>
    <button  class="btn-primary" type="submit"><a style="color: white" href="/teachersCabinetAction">Кабинет учителя</a></button> <br>
    <button  class="btn-primary" type="submit"><a style="color: white" href="/searchTeacherAction">ПОИСК</a></button> <br>
</div>

<script type="text/javascript" src="/resources/js/time.js"></script>
</body>
</html>