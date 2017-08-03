<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="local" %>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LETSSTUDY кабинет учителя</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.0.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.offcanvas.min.js"></script>

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


    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.offcanvas.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/teachersCabinet.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/search.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/content.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/time.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/menu.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/search.js"></script>


</head>
<body>
<%@ include file="../include/header_student.jsp" %>

<div class="container">
    <section>
        <div class="row">
            <div class="col-xs-12 col-md-4">
                <form class="form-search">
                    <div class="row">
                        <div class="col-xs-12 col-md-10" style="padding-bottom: 10px;">
                            <input type="text" class="input-medium search-query searchPanel"
                                   placeholder="поиск преподователя" style="width: 85%;">
                            <button type="submit" class="btn buttonForSearchPanel"><img
                                    src="/images/icons/search2.png"></button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-4"></div>
            <div class="col-xs-12 col-md-4 searchOption" style="text-align: center;">
                Сортировать по
                <select name="sortBy" class="selectpicker">
                    <option value="rating" selected="">рейтингу</option>
                    <option value="cheap">стоимости (сначала дешевые)</option>
                    <option value="expensive">стоимости (сначала дорогие)</option>
                </select>
            </div>
        </div>
    </section>
    <div class="row">
        <%@ include file="../include/search_menu.jsp" %>
        <%@ include file="../include/search_result.jsp" %>
    </div>
</div>


</body>
</html>
