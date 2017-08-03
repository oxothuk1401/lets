<%@ taglib uri="http://www.springframework.org/tags" prefix="local" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <title><local:message code="form.reg.teacher"/></title>
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
<div class="container-fluid col-md-3">
    <form method="POST" action="/regTeacherActionForm">

        <input type="text" name="name" class="form-control" placeholder="name" required>
        <input type="text" name="surname" class="form-control" placeholder="surname" required>
        <input type="text" name="country" class="form-control" placeholder="country" required>
        <input type="text" name="city" class="form-control" placeholder="city" required>
        <input type="text" name="skype" class="form-control" placeholder="skype" required>
        <input type="text" name="phoneNumber" class="form-control" placeholder="Phone" required>

        <input type="hidden"  name="${_csrf.parameterName}"   value="${_csrf.token}"/>

        <select name="teachingLanguage" class="form-control" style="border: 1px solid #DBDBDB;">
            <option value="">teachingLanguage</option>
            <option value="Английский" selected>Английский</option>
            <option value="Русский">Русский</option>
            <option value="Азербайджанский">Азербайджанский</option>
            <option value="Албанский">Албанский</option>
            <option value="Армянский">Армянский</option>
            <option value="Африкаанс">Африкаанс</option>
            <option value="Баскский">Баскский</option>
            <option value="Белорусский">Белорусский</option>
            <option value="Болгарский">Болгарский</option>
            <option value="Вьетнамский">Вьетнамский</option>
            <option value="Голландский">Голландский</option>
            <option value=">Греческий">Греческий</option>
            <option value="Иврит">Иврит</option>
            <option value="Игбо">Игбо</option>
            <option value="Индонезийский">Индонезийский</option>
            <option value="Исландский">Исландский</option>
            <option value="Испанский">Испанский</option>
            <option value="Кантонский">Кантонский</option>
            <option value="Корейский">Корейский</option>
            <option value="Латинский">Латинский</option>
            <option value="Латышский">Латышский</option>
            <option value="Литовский">Литовский</option>
            <option value="Монгольский">Монгольский</option>
            <option value="Непальский">Непальский</option>
            <option value="Норвежский">Норвежский</option>
            <option value="Персидский(фарси)">Персидский(фарси)</option>
            <option value="Польский">Польский</option>
            <option value="Румынский">Румынский</option>
            <option value="Датский">Датский</option>
            <option value="Сербский">Сербский</option>
            <option value="Словацкий">Словацкий</option>
            <option value="Словенский">Словенский</option>
            <option value="Татарский">Татарский</option>
            <option value="Тайский">Тайский</option>
            <option value="Турецкий">Турецкий</option>
            <option value="Туркменский">Туркменский</option>
            <option value="Украинский">Украинский</option>
            <option value="Урду">Урду</option>
            <option value="Финский">Финский</option>
            <option value="Хинди">Хинди</option>
            <option value="Хорватский">Хорватский</option>
            <option value="Чешский">Чешский</option>
            <option value="Шведский">Шведский</option>
        </select>
        <select name="motherTongue" class="form-control" style="border: 1px solid #DBDBDB;">
            <option value="" selected>motherTongue</option>
            <option value="Английский">Английский</option>
            <option value="Русский">Русский</option>
            <option value="Азербайджанский">Азербайджанский</option>
            <option value="Албанский">Албанский</option>
            <option value="Армянский">Армянский</option>
            <option value="Африкаанс">Африкаанс</option>
            <option value="Баскский">Баскский</option>
            <option value="Белорусский">Белорусский</option>
            <option value="Болгарский">Болгарский</option>
            <option value="Вьетнамский">Вьетнамский</option>
            <option value="Голландский">Голландский</option>
            <option value=">Греческий">Греческий</option>
            <option value="Иврит">Иврит</option>
            <option value="Игбо">Игбо</option>
            <option value="Индонезийский">Индонезийский</option>
            <option value="Исландский">Исландский</option>
            <option value="Испанский">Испанский</option>
            <option value="Кантонский">Кантонский</option>
            <option value="Корейский">Корейский</option>
            <option value="Латинский">Латинский</option>
            <option value="Латышский">Латышский</option>
            <option value="Литовский">Литовский</option>
            <option value="Монгольский">Монгольский</option>
            <option value="Непальский">Непальский</option>
            <option value="Норвежский">Норвежский</option>
            <option value="Персидский(фарси)">Персидский(фарси)</option>
            <option value="Польский">Польский</option>
            <option value="Румынский">Румынский</option>
            <option value="Датский">Датский</option>
            <option value="Сербский">Сербский</option>
            <option value="Словацкий">Словацкий</option>
            <option value="Словенский">Словенский</option>
            <option value="Татарский">Татарский</option>
            <option value="Тайский">Тайский</option>
            <option value="Турецкий">Турецкий</option>
            <option value="Туркменский">Туркменский</option>
            <option value="Украинский">Украинский</option>
            <option value="Урду">Урду</option>
            <option value="Финский">Финский</option>
            <option value="Хинди">Хинди</option>
            <option value="Хорватский">Хорватский</option>
            <option value="Чешский">Чешский</option>
            <option value="Шведский">Шведский</option>
        </select>
        <select name="interlanguage" class="form-control" style="border: 1px solid #DBDBDB;">
            <option value="" selected>interlanguage</option>
            <option value="Английский">Английский</option>
            <option value="Русский">Русский</option>
            <option value="Азербайджанский">Азербайджанский</option>
            <option value="Албанский">Албанский</option>
            <option value="Армянский">Армянский</option>
            <option value="Африкаанс">Африкаанс</option>
            <option value="Баскский">Баскский</option>
            <option value="Белорусский">Белорусский</option>
            <option value="Болгарский">Болгарский</option>
            <option value="Вьетнамский">Вьетнамский</option>
            <option value="Голландский">Голландский</option>
            <option value=">Греческий">Греческий</option>
            <option value="Иврит">Иврит</option>
            <option value="Игбо">Игбо</option>
            <option value="Индонезийский">Индонезийский</option>
            <option value="Исландский">Исландский</option>
            <option value="Испанский">Испанский</option>
            <option value="Кантонский">Кантонский</option>
            <option value="Корейский">Корейский</option>
            <option value="Латинский">Латинский</option>
            <option value="Латышский">Латышский</option>
            <option value="Литовский">Литовский</option>
            <option value="Монгольский">Монгольский</option>
            <option value="Непальский">Непальский</option>
            <option value="Норвежский">Норвежский</option>
            <option value="Персидский(фарси)">Персидский(фарси)</option>
            <option value="Польский">Польский</option>
            <option value="Румынский">Румынский</option>
            <option value="Датский">Датский</option>
            <option value="Сербский">Сербский</option>
            <option value="Словацкий">Словацкий</option>
            <option value="Словенский">Словенский</option>
            <option value="Татарский">Татарский</option>
            <option value="Тайский">Тайский</option>
            <option value="Турецкий">Турецкий</option>
            <option value="Туркменский">Туркменский</option>
            <option value="Украинский">Украинский</option>
            <option value="Урду">Урду</option>
            <option value="Финский">Финский</option>
            <option value="Хинди">Хинди</option>
            <option value="Хорватский">Хорватский</option>
            <option value="Чешский">Чешский</option>
            <option value="Шведский">Шведский</option>
        </select>
        <select name="exam" class="form-control" style="border: 1px solid #DBDBDB;">
            <option value="IELTS" selected>IELTS</option>
            <option value="TOEFL">TOEFL</option>
            <option value="ЦТ">ЦТ</option>
            <option value="ЕГЭ">ЕГЭ</option>
        </select>

        <select name="competence" class="form-control" style="border: 1px solid #DBDBDB;">
            <option value="занятия с детьми" selected>занятия с детьми</option>
            <option value="занятия с подростками">занятия с подростками</option>
            <option value="бизнес-коммуникация">бизнес-коммуникация</option>
            <option value="обучение новичков">обучение новичков</option>
        </select>
        <button class="btn btn-lg btn-primary btn-block" type="submit"><local:message code="btn.submit"/></button>
    </form>
</div>

</body>
</html>
