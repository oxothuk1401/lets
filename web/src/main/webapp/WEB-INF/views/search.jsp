<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>LETSSTUDY поиск преподователя</title>


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

    <link rel="stylesheet" type="text/css" href="/resources/css/search.css">
</head>
<body>

<div class="container">
    <header class="marginBottom10px">
        <div class="row">
            <div class="h1 col-xs-12 col-md-3"><strong><a href="/">LETSSTUDY</a></strong></div>
            <div class="h1 col-xs-12 col-md-5" style="font-size: 25px;">
                <a href="searchAction" onclick="funcSearchTeachers()">
                    <img src="/resources/images/icons/search.png">
                    поиск преподавателя
                </a>
            </div>
            <div class="h1 col-xs-12 col-md-4 centered">
                <div class="row">
                    <a href="#"><img class="col-xs-2 col-xs-offset-1 col-md-2 col-md-offset-1"
                                     src="/resources/images/icons/myTeachers.png" onclick="funcMyTeachers()"></a>
                    <a href="#"><img class="col-xs-2 col-md-2" src="/resources/images/icons/calendar.png"></a>
                    <a href="#"><img class="col-xs-2 col-md-2" src="/resources/images/icons/notice.png"></a>
                    <a href="#"><img class="col-xs-2 col-md-2" src="/resources/images/icons/message.png"></a>
                    <form id="logoutForm" method="POST" action="/logout">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>
                    <a href="#" onclick="document.forms['logoutForm'].submit()"> <img class="col-xs-2 col-md-2"
                                                                                      src="/resources/images/icons/accaunt.png"></a>
                </div>
            </div>
        </div>
    </header>

    <div id="contentWhichWillChange">
        <!-- in here we will change content when user will click something -->
    </div>

</div>

<footer></footer>

<!-- mainContentOnLoad -->
<div id="mainContent" name="mainContent">
    <section>
        <div class="row">
            <div class="col-xs-12 col-md-4">
                <form class="form-search">
                    <div class="row">
                        <div class="col-xs-12 col-md-10" style="padding-bottom: 10px;">
                            <input type="text" class="input-medium search-query searchPanel"
                                   placeholder="поиск преподавателя" style="width: 85%;">
                            <button type="submit" class="btn buttonForSearchPanel"><img
                                    src="/resources/images/icons/search2.png"></button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-5"></div>
            <div class="col-xs-12 col-md-3 searchOption" style="text-align: center;">
                <select name="sortBy" class="form-control">
                    <option value="" selected>Сортировка по</option>
                    <option value="rating">рейтингу</option>
                    <option value="cheap">стоимости (сначала дешевые)</option>
                    <option value="expensive">стоимости (сначала дорогие)</option>
                </select>
            </div>
        </div>
    </section>
    <div class="row">
        <aside class="col-xs-12 col-md-3">
            <form action="/teacher-filter" method="POST">

                <div style="padding-bottom: 10px;">
                    <h4><strong>Преподает</strong></h4>
                    <select name="teachingLanguage" class="selectpicker" style="border: 1px solid #DBDBDB;">
                        <option value="" selected>Выберите язык</option>
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
                </div>

                <%--<div style="padding-bottom: 10px;">--%>
                <%--<h4><strong>Говорит на</strong></h4>--%>
                <%--<div style="width:100%; height:90px; overflow:auto; padding-left: 10px;">--%>
                <%--<input type="checkbox">Азербайджанский<br>--%>
                <%--<input type="checkbox">Албанский<br>--%>
                <%--<input type="checkbox">Армянский<br>--%>
                <%--<input type="checkbox">Африкаанс<br>--%>
                <%--<input type="checkbox">Баскский<br>--%>
                <%--<input type="checkbox">Белорусский<br>--%>
                <%--<input type="checkbox">Болгарский<br>--%>
                <%--<input type="checkbox">Вьетнамский<br>--%>
                <%--<input type="checkbox">Голландский<br>--%>
                <%--<input type="checkbox">Греческий<br>--%>
                <%--<input type="checkbox">Гельский<br>--%>
                <%--<input type="checkbox">Датский<br>--%>
                <%--<input type="checkbox">Иврит<br>--%>
                <%--<input type="checkbox">Игбо<br>--%>
                <%--<input type="checkbox">Индонезийский<br>--%>
                <%--<input type="checkbox">Исландский<br>--%>
                <%--<input type="checkbox">Испанский<br>--%>
                <%--<input type="checkbox">Кантонский<br>--%>
                <%--<input type="checkbox">Корейский<br>--%>
                <%--<input type="checkbox">Латинский<br>--%>
                <%--<input type="checkbox">Латышский<br>--%>
                <%--<input type="checkbox">Литовский<br>--%>
                <%--<input type="checkbox">Монгольский<br>--%>
                <%--<input type="checkbox">Непальский<br>--%>
                <%--<input type="checkbox">Норвежский<br>--%>
                <%--<input type="checkbox">Персидский<br>--%>
                <%--<input type="checkbox">Польский<br>--%>
                <%--<input type="checkbox">Румынский<br>--%>
                <%--<input type="checkbox">Русский<br>--%>
                <%--<input type="checkbox">Сербский<br>--%>
                <%--<input type="checkbox">Словацкий<br>--%>
                <%--<input type="checkbox">Словенский<br>--%>
                <%--<input type="checkbox">Татарский<br>--%>
                <%--<input type="checkbox">Тайский<br>--%>
                <%--<input type="checkbox">Турецкий<br>--%>
                <%--<input type="checkbox">Украинский<br>--%>
                <%--<input type="checkbox">Урду<br>--%>
                <%--<input type="checkbox">Финский<br>--%>
                <%--<input type="checkbox">Хинди<br>--%>
                <%--<input type="checkbox">Хорватский<br>--%>
                <%--<input type="checkbox">Чешский<br>--%>
                <%--<input type="checkbox">Шведский<br>--%>
                <%--</div>--%>
                <%--</div>--%>

                <%--<div style="padding-bottom: 10px;">--%>
                <%--<input type="checkbox" name="nativeSpeaker"><span class="h4"--%>
                <%--style="padding-left: 5px;"><strong>Носитель языка</strong></span>--%>
                <%--</div>--%>

                <div style="padding-bottom: 10px;">
                    <h4><strong>Местонахождение</strong></h4>
                    <select name="country" class="selectpicker" style="border: 1px solid #DBDBDB;">
                        <option value="" selected>Страны</option>
                        <option value="Азербайджан">Азербайджан</option>
                        <option value="Албания">Албания</option>
                        <option value="Армения">Армения</option>
                        <option value="Австралия">Австралия</option>
                        <option value="Азербайджан">Азербайджан</option>
                        <option value="Беларусь">Беларусь</option>
                        <option value="Болгария">Болгария</option>
                        <option value="Бразилия">Бразилия</option>
                        <option value="Вьетнам">Вьетнам</option>
                        <option value="Германия">Германия</option>
                        <option value="Голландия">Голландия</option>
                        <option value="Греция">Греция</option>
                        <option value="Израиль">Израиль</option>
                        <option value="Индия">Индия</option>
                        <option value="Иран">Иран</option>
                        <option value="Исландия">Исландия</option>
                        <option value="Казахстан">Казахстан</option>
                        <option value="Испания">Испания</option>
                        <option value="Корея">Корея</option>
                        <option value="Латвия">Латвия</option>
                        <option value="Литва">Литва</option>
                        <option value="Монголия">Монголия</option>
                        <option value="Непал">Непал</option>
                        <option value="Норвегия">Норвегия</option>
                        <option value="Польша">Польша</option>
                        <option value="Португалия">Португалия</option>
                        <option value="Румыния">Румыния</option>
                        <option value="Сербия">Сербия</option>
                        <option value="Россия">Россия</option>
                        <option value="Сингапур">Сингапур</option>
                        <option value="Словакия">Словакия</option>
                        <option value="Словения">Словения</option>
                        <option value="США">США</option>
                        <option value="Таиланд">Таиланд</option>
                        <option value="Турция">Турция</option>
                        <option value="Украина">Украина</option>
                        <option value="Финляндия">Финляндия</option>
                        <option value="Финский">Финский</option>
                        <option value="Хорватия">Хорватия</option>
                        <option value="Чехия">Чехия</option>
                        <option value="Швеция">Швеция</option>
                        <option value="Швейцария">Швейцария</option>
                    </select>
                </div>

                <div>
                    <a id="openCloseParametr" href="#"><h4>Дополнительные параметры</h4></a>
                    <div id="blockParametr">
                        <div>
                            <h4><strong>Цена урока</strong></h4>
                            <div class="radio">
                                <label><input type="radio" name="priceForLesson" value="1-50" checked>Любая</label>
                            </div>
                            <div class="radio">
                                <label><input type="radio" name="priceForLesson" value="1-10">1 - 10$</label>
                            </div>
                            <div class="radio">
                                <label><input type="radio" name="priceForLesson" value="10-20">10 - 20$</label>
                            </div>
                            <div class="radio">
                                <label><input type="radio" name="priceForLesson" value="20-30">20 - 30$</label>
                            </div>
                        </div>

                        <div style="padding-bottom: 10px;">
                            <h4><strong>Подготовка к экзаменам</strong></h4>
                            <select name="exam" class="selectpicker" style="border: 1px solid #DBDBDB;">
                                <option value="" selected>Экзамены</option>
                                <option value="IELTS">IELTS</option>
                                <option value="TOEFL">TOEFL</option>
                                <option value="ЦТ">ЦТ</option>
                                <option value="ЕГЭ">ЕГЭ</option>
                            </select>
                        </div>
                        <div style="padding-bottom: 10px;">
                            <h4><strong>Спец.компетенции</strong></h4>
                            <select name="competence" class="selectpicker" style="border: 1px solid #DBDBDB;">
                                <option value="" selected>Спец.компетенции</option>
                                <option value="занятия с детьми">занятия с детьми</option>
                                <option value="занятия с подростками">занятия с подростками</option>
                                <option value="бизнес-коммуникация">бизнес-коммуникация</option>
                                <option value="обучение новичков">обучение новичков</option>
                            </select>
                        </div>

                    </div>
                    <input type="hidden" name="motherTongue" value="">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <div style="text-align: center;">
                        <button class="btn btn-lg btn-primary btn-block" type="submit">Показать</button>
                    </div>
                </div>
            </form>
        </aside>

        <section class="col-xs-12 col-md-9">
            <!-- 1 card of teacher -->
            <c:if test="${empty res}">
                Ничего не найдено
            </c:if>
            <c:forEach items="${res}" var="res">
                <div class="row"
                     style=" border-top: 1px solid #DBDBDB; padding-bottom: 10px; margin-bottom: 10px;">

                    <div class="col-xs-5 col-md-2" style="padding-top: 20px;">
                        <div style="text-align: center;">
                            <form id="showProfile${res.id}" action="/showProfileAction" method="GET">
                                <input type="hidden" name="showProfileID" value="${res.id}">
                            </form>
                            <a href="#" title="Перейти на профиль"
                               onclick="document.forms['showProfile${res.id}'].submit()"><img
                                    src="/resources/images/teacher/${res.teacherPhoto}"></a>
                            <a href="#" title="Показать видео"
                               style="position: relative; left: -20px; top: -22px; padding: 0;" data-toggle="modal"
                               data-target="#modalPlayVideo${res.id}"><img src="/resources/images/icons/playVideo.png"></a>
                        </div>
                    </div>
                        <%--$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$--%>
                    <div id="modalPlayVideo${res.id}" class="modal fade" tabindex="-1">
                        <div class="modal-dialog modal-sm">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title"><strong>${res.name} ${res.surname}</strong><span
                                            id="modalConfirmSelectedDate"></span></h4>
                                </div>
                                <div class="modal-body">
                                    <div class="embed-responsive embed-responsive-16by9">
                                        <iframe class="embed-responsive-item"
                                                src="https://www.youtube.com/embed/oNQWvkEMydo" frameborder="0"
                                                allowfullscreen></iframe>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button class="btn btn-default" type="button" data-dismiss="modal">Закрыть
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                        <%--$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$--%>

                    <div class="col-xs-12 col-md-6" style="padding-top: 15px;">
                        <div class="row">
                            <div class="col-xs-9 col-md-10">
                                <p style="font-size: 25px"> ${res.name} ${res.surname} <span><img
                                        src="/resources/images/flags/${res.country}.png" alt="flag"></span></p>
                            </div>
                            <div class="col-xs-3 col-md-2">
                                <img src="/resources/images/icons/calendar2.png" class="btn"
                                     title="открыть календарь">
                            </div>
                        </div>

                        <p><b>преподает:
                            <c:forEach var="teachingLanguages" items="${res.teachingLanguages}">
                            <span style="color: #3E9DD7;">${teachingLanguages.language}</span>
                            (родной язык)<br>

                            говорит на: <span style="color: #3E9DD7;">${teachingLanguages.language}</span>
                            <br></b>
                            </c:forEach>
                            <span style="font-size: 12px; font-weight: 100; color: #9D9D9D">${res.description} </span>
                        </p>
                        <p>
                            <b>
                                <c:forEach var="preparingExams" items="${res.preparingExams}">
                                    <span style="padding: 4px; background-color: #BABBDF">${preparingExams.exam}</span>
                                </c:forEach>
                                <c:forEach var="spesicalcompetence" items="${res.specialCompetence}">
                                    <span style="padding: 4px; background-color: #BABBDF">${spesicalcompetence.competenceTitle}</span>
                                </c:forEach>
                            </b>
                        </p>
                    </div>

                    <div class="col-xs-12 col-md-4" style="padding-top: 20px; text-align: center;">
                        <div class="row">
                            <div id="reviewStars-input" style="padding-bottom: 10px;" class="col-xs-12 col-md-12">
                                <input id="star-4" type="radio" name="reviewStars">
                                <label title="отлично" for="star-4"></label>

                                <input id="star-3" type="radio" name="reviewStars">
                                <label title="хорошо" for="star-3"></label>

                                <input id="star-2" type="radio" name="reviewStars">
                                <label title="нормально" for="star-2"></label>

                                <input id="star-1" type="radio" name="reviewStars">
                                <label title="плохо" for="star-1"></label>

                                <input id="star-0" type="radio" name="reviewStars">
                                <label title="ужасно" for="star-0"></label>
                            </div>
                        </div>

                        <p><span
                                style="font-size: 12px; font-weight: 100; color: #9D9D9D">цена урока  </span><b>${res.priceForLesson}$</b>
                        </p>
                        <h4 style="color: #1C3075;">бесплатный пробный<br> урок (30 мин)</h4>
                        <div class="row">
                                <%--<sec:authorize access="hasRole{'ROLE_ADMIN'}">--%>
                            <div class="col-xs-4 col-md-4"></div>
                            <div class="col-xs-2 col-md-2">
                                <img src="/resources/images/icons/skype.png" class="btn" title="skype">
                            </div>
                            <div class="col-xs-2 col-md-2"><a href="#" id="newMess" title="Новое сообщение">
                                <img src="/resources/images/icons/chat.png" class="btn"></a>
                            </div>
                                <%--</sec:authorize>--%>
                            <!-- Modal for teacher-->
                            <div class="modal fade" id="messModal" role="dialog">
                                <div class="modal-dialog">
                                    <!-- teacher Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-header modalHeaderStyle">
                                            <p class="text-center fontSize30px">Написать сообщение преподователю</p>
                                        </div>
                                        <div class="modal-body modalBodyStyle">
                                            <form action="/send_mssg" role="form" method="POST"
                                                  modelattribute="sendMessage">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" name="message"
                                                           id="messText"
                                                           placeholder="ваше сообщение" required>
                                                </div>
                                                <button type="submit" class="btn btn-block btnBlack">Отправить
                                                    сообщение
                                                </button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </section>
    </div>
</div>

<c:forEach items="${res}" var="res">
    <!-- myTeachers -->
    <div id="myTeachersContent">
        <div class="row">
            <div class="col-md-12 myTeachersHeader">
                <div class="col-md-1 col-md-offset-1">
                    <img src="/resources/images/icons/myTeachers.png">
                </div>
                <div class="col-md-10">
                    <span class="h1 myTeacherHeaderText MTteachersBlueColor"><strong>Мои преподаватели</strong></span>
                </div>
            </div>
            <!-- example 1 -->
            <div class="col-md-12 MTteachersWrap">
                <div class="col-md-11 col-md-offset-1">
                    <div class="row">
                        <div class="col-md-2 text-center">
                            <img src="/resources/images/teacher/${res.teacherPhoto}" class="MTteachersProfilePhoto"
                                 alt="profile Photo">
                        </div>

                        <div class="col-md-6">
                            <div class="col-md-12 paddingLeft0 marginBottom15px"><span
                                    class="h1 nameOfTeacher">${res.name}</span></div>
                            <div class="col-md-12 paddingLeft0 marginBottom15px">
                                <img src="/resources/images/icons/skype.png" class=" MTteachersIconsWidth">
                                <span class="h4">${res.skype}</span>
                            </div>
                            <div class="col-md-12 paddingLeft0 marginBottom15px">
                                <img src="/resources/images/icons/chat.png" class="btn MTteachersIconsWidth padding0">
                                <span class="h4"><strong>написать сообщение</strong></span>
                            </div>
                        </div>

                        <div class="col-md-3 text-right">
                            <span class="h6 MTteachersLocalPlaceTime">${res.country}, ${res.city} <span
                                    id="currentTimeSerbia"></span></span>
                            <img src="/resources/images/flags/${res.country}.png" class="MTteachersFlagWidth">
                        </div>
                    </div>
                </div>
                <div class="col-md-11 col-md-offset-1">
                    <p class="h3">Ближайший урок <strong>«<span class="whichLanguage">сербский язык</span>» - <span
                            class="MTteachersBlueColor">в 13.00 в пятницу (24 июля)</span></strong></p>
                </div>
                <div class="col-md-11 col-md-offset-1">
                    <div class="row">
                        <div class="col-md-2">
                            <div class="text-center MTteachersBlocksWidthHeightColor">
								<span class="MTteachersFontSize18px">оплачено уроков:<span><br>
								<strong><span class="MTteachersPayedLessons ifPayedLessons">5</span></strong>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="text-center MTteachersBlocksWidthHeightColor">
								<span class="MTteachersFontSize18px">назначено уроков:<span><br>
								<strong><span class="MTteachersPayedLessons">3</span></strong>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="btn marginTop25px">
                                <img src="/resources/images/icons/calendar.png"
                                     class="MTteachersIconsWidth MTteachersIconsRadius">
                                <span class="h3"><strong>назначить оставшиеся уроки</strong></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- example 2 -->
            <div class="col-md-12 MTteachersWrap">
                <div class="col-md-11 col-md-offset-1">
                    <div class="row">
                        <div class="col-md-2 text-center">
                            <img src="/resources/images/teacher/teacher4.png" class="MTteachersProfilePhoto"
                                 alt="profile Photo">
                        </div>

                        <div class="col-md-6">
                            <div class="col-md-12 paddingLeft0 marginBottom15px"><span class="h1 nameOfTeacher">Kyoko Fukada</span>
                            </div>
                            <div class="col-md-12 paddingLeft0 marginBottom15px">
                                <img src="/resources/images/icons/skype.png" class=" MTteachersIconsWidth">
                                <span class="h4">sushi_worldwide</span>
                            </div>
                            <div class="col-md-12 paddingLeft0 marginBottom15px">
                                <img src="/resources/images/icons/chat.png" class="btn MTteachersIconsWidth padding0">
                                <span class="h4"><strong>написать сообщение</strong></span>
                            </div>
                        </div>

                        <div class="col-md-3 text-right">
                            <span class="h6 MTteachersLocalPlaceTime">Япония, Иокогама <span
                                    id="currentTimeJapan"></span></span>
                            <img src="/resources/images/flags/japan.png" class="MTteachersFlagWidth">
                        </div>
                    </div>
                </div>
                <div class="col-md-11 col-md-offset-1">
                    <p class="h3">Последний оплаченный урок <strong>«<span class="whichLanguage">японский язык</span>» -
                        <span class="MTteachersBlueColor">в 19.00 сегодня (28 июля)</span></strong></p>
                </div>
                <div class="col-md-11 col-md-offset-1">
                    <div class="row">
                        <div class="col-md-2">
                            <div class="text-center MTteachersBlocksWidthHeightColor">
								<span class="MTteachersFontSize18px">оплачено уроков:<span><br>
								<strong><span class="MTteachersPayedLessons ifPayedLessons">0</span></strong>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="text-center MTteachersBlocksWidthHeightColor">
								<span class="MTteachersFontSize18px">назначено уроков:<span><br>
								<strong><span class="MTteachersPayedLessons">0</span></strong>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="btn marginTop25px">
                                <img src="/resources/images/icons/calendar.png"
                                     class="MTteachersIconsWidth MTteachersIconsRadius">
                                <span class="h3"><strong>купить новые уроки</strong></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</c:forEach>
<!-- reminders -->
<div id="reminder" class="modal fade" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content modalContent">
            <div class="modal-header borderNone">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h3 class="modal-title text-center">
                    Поздравляем! У Вас за плечами уже 10 уроков, которые приблизили вас к цели - <strong><span
                        id="whichLanguage"></span>.</strong> Для продолжения Вам необходимо приобрести следующий пакет
                    уроков у преподавателя <strong><span id="whichTeacher"
                                                         class="remindersTextColorBlue"></span>.</strong>
                </h3>
            </div>
            <div class="modal-body borderNone text-center">
                <div class="wrapForPriceInReminders">
                    <p class="h3 text-left"><img src="/resources/images/icons/package1.png" alt="number 1"> урок -
                        <strong>10$</strong></p>
                    <p class="h3 text-left"><img src="/resources/images/icons/package5.png" alt="number 5"> уроков
                        (пакет) - <strong>45$</strong></p>
                    <p class="h3 text-left"><img src="/resources/images/icons/package10.png" alt="number 10"> уроков
                        (пакет) - <strong>80$</strong></p>
                </div>
                <button class="btn remindersBtnBuy">купить урок</button>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="/resources/js/search.js"></script>
</body>
</html>
