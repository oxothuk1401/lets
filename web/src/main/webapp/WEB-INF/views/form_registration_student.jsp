<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="local" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="include/head.jsp" %>
    <title><local:message code="form.reg.student"/></title>
</head>
<body>
<%@ include file="include/header_autorized.jsp" %>
<div class="container col-md-4">
    <form action="/register/student" method="post">

        <input type="text" name="name" class="form-control" placeholder="name" required>

        <input type="text" name="surname" class="form-control" placeholder="surname" required>

        <input type="text" name="dateOfBirth" class="form-control" placeholder="Date of birth" required>

        <input type="text" name="country" class="form-control" placeholder="country" required>

        <input type="text" name="city" class="form-control" placeholder="city" required>

        <input type="text" name="skype" class="form-control" placeholder="skype" required>

        <input type="text" name="phoneNumber" class="form-control" placeholder="Phone" required>

        <input type="text" name="motherTongue" class="form-control" placeholder="motherTongue" required>

        <input type="text" name="teachingLanguage" class="form-control" placeholder="teachingLanguage" required>

        <input type="hidden"  name="${_csrf.parameterName}"   value="${_csrf.token}"/>

        <button class="btn btn-lg btn-primary btn-block col-md-2" type="submit"><local:message code="btn.submit"/></button>
    </form>
</div>

</body>
</html>
