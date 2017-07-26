<!DOCTYPE html>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<h2>Welcome User</h2>
<form method="POST" action="/login">
    <span>${message}</span>
    <p id="logintext"></p>
    <label for="login">Login</label>
    <input type="text" name="email" id="login" value="" onkeyup="doAjax()">
    <label>
        <input type="password" name="password" value="">
    </label>
    <span>${error}</span>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <input type="submit" value="Sign in">
    <a href="/registration">Create an account</a>
</form>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/search.js"></script>
</body>
</html>
