<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>LETSSTUDY профиль препода</title>


    <script type="text/javascript" src="/resources/js/jquery-3.2.0.js"></script>
    <%--<script>--%>
        <%--$(function () {--%>
            <%--$('[data-toggle="tooltip"]').tooltip()--%>
        <%--})--%>
    <%--</script>--%>
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
                <a href="/searchAction" onclick="funcSearchTeachers()">
                    <img src="/resources/images/icons/search.png">
                    поиск преподавателя
                </a>
            </div>
            <div class="h1 col-xs-12 col-md-4 centered">
                <div class="row">
                    <a href="#"><img class="col-xs-2 col-xs-offset-1 col-md-2 col-md-offset-1" src="/resources/images/icons/myTeachers.png" onclick="funcMyTeachers()"></a>
                    <a href="#"><img class="col-xs-2 col-md-2" src="/resources/images/icons/calendar.png"></a>
                    <a href="#"><img class="col-xs-2 col-md-2" src="/resources/images/icons/notice.png"></a>
                    <a href="#"><img class="col-xs-2 col-md-2" src="/resources/images/icons/message.png"></a>
                    <form id="logoutForm" method="POST" action="/logout">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>
                    <a href="#" onclick="document.forms['logoutForm'].submit()"> <img class="col-xs-2 col-md-2" src="/resources/images/icons/accaunt.png"></a>
                </div>
            </div>
        </div>
    </header>
<c:forEach items="${res}" var="res">
    <c:forEach items="${id}" var="id">
        <c:if test="${res.id eq id}">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="col-md-2">
                            <img src="/resources/images/teacher/${res.teacherPhoto}" alt="profile photo"
                                 style="width: 165px; padding-top: 15px;">
                        </div>
                        <div class="col-md-7">
                            <div class="row">
                                <div class="col-md-12">
                                    <p class="h2" style="padding-top: 20px;"><strong>${res.name} ${res.surname}</strong>
                                        <span><img src="/resources/images/icons/ratingStarsGold.png"
                                                   alt="rating icon"></span>
                                    </p>
                                </div>
                                <div class="col-md-12">
                                    <p style="font-size: 20px;">
                                        <b>преподает:
                                        <c:forEach var="teachingLanguages" items="${res.teachingLanguages}">
                                                <span style="color: #3E9DD7;">${teachingLanguages.language}</span> (родной язык)<br>
                                                говорит на:
                                                <span style="color: #3E9DD7;">${teachingLanguages.language}</span> (B2),
                                        </b>
                                        </c:forEach>
                                    </p>
                                </div>

                                <div class="col-md-12">
                                    <a href="#" data-toggle="tooltip" title="${res.skype}"><img src="/resources/images/icons/skype.png" alt="skype icon" class="btn"
                                         style="padding: 0; margin-right: 20px;"></a>
                                    <img src="/resources/images/icons/chat.png" alt="chat icon" class="btn"
                                         style="padding: 0; margin-right: 20px;">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 text-right">
                            <div class="row">
                                <div class="col-md-12">
                                    <img src="/resources/images/flags/${res.country}.png" alt="usa flag"
                                         style="padding-top: 40px;">
                                </div>
                                <div class="col-md-12">
                                    <p style="padding-top: 10px; color: #828282">${res.city}, ${res.country} <span
                                            id="timeAndTimezone"></span></p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-8 text-justify" style="font-size: 20px;">
                        <div class="col-md-12" style="padding-bottom: 20px;">
                            <div class="embed-responsive embed-responsive-16by9">
                                <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/oNQWvkEMydo"
                                        frameborder="0" allowfullscreen></iframe>
                            </div>
                        </div>

                        <div class="col-md-12" style="padding-bottom: 20px;">
                            <p style="color: #338FC7;"><strong>Обо мне</strong></p>
                            <p>${res.description}<br>
                                Учительница средних классов живет гламурной жизнью светской львицы, ходит на работу как
                                на
                                вечеринку и мечтает об увеличении объема собственного бюста.
                                Однако после внезапного разрыва с богатым бойфрендом ее образ жизни резко меняется, хотя
                                сама
                                она это осознает не сразу. Но когда в их школу приходит
                                новый преподаватель, она совершенно теряет голову и начинает охоту за… деньгами.</p>
                        </div>

                        <div class="col-md-12" style="padding-bottom: 20px;">
                            <p style="color: #338FC7;"><strong>Специальные компетенции</strong></p>
                            <p>
                                <c:forEach var="preparingExams" items="${res.preparingExams}">
                                    <span style="padding: 4px; background-color: #BABBDF">${preparingExams.exam}</span>
                                </c:forEach>
                                <c:forEach var="spesicalcompetence" items="${res.specialCompetence}">
                                    <span style="padding: 4px; background-color: #BABBDF">${spesicalcompetence.competenceTitle}</span>
                                </c:forEach>
                            </p>
                        </div>

                        <div class="col-md-12" style="padding-bottom: 20px;">
                            <p style="color: #338FC7;"><strong>Опыт работы</strong></p>
                            <p>
                                <strong>Online English TeacherEnglishtown</strong><br>
                                2013 - 2014 Port Elizabeth ЮАРI taught English to students from all over the world in an
                                online
                                platform. I taught general English grammar, conversational lessons and I also taught
                                specialist
                                areas such as business English and test preparation. I have taught children, teenagers
                                and
                                adults.<br>
                                <strong>Online English TeacherEnglishup</strong><br>
                                2014 - 2015 Port Elizabeth ЮАРI taught English in an online platform to students from
                                Brazil. I
                                taught English grammar lessons, conversation lessons as well as business English. I
                                taught
                                people from all walks of life from ordinary people to business executives.
                            </p>
                        </div>

                        <div class="col-md-12" style="padding-bottom: 20px;">
                            <p style="color: #338FC7;"><strong>Образование</strong></p>
                            <div class="col-md-3 text-left" style="padding-left: 0;"><p>2009 - 2012</p></div>
                            <div class="col-md-9"><p>Бакалавр - Psychology<br> Nelson Mandela Metropolitan University
                            </p>
                            </div>
                        </div>

                        <div class="col-md-12" style="padding-bottom: 20px;">
                            <p style="color: #338FC7;"><strong>Расписание </strong></p>
                            <div>
                                <!-- CALENDARS CONTENT -->
                                <div id="myCalendarContent">
                                    <!-- <div class="container"> -->
                                    <div class="row">
                                        <div class="col-md-12 myCalendarContentStyle paddingTop15px">
                                            <div class="col-md-2 text-left"><img
                                                    src="/resources/images/icons/calendarLeftArrowButton.png"
                                                    class="btn padding0"
                                                    id="calendarLeftArrowButton" onclick="previousWeek()"></div>
                                            <div class="col-md-8 text-center fontSize24px"><span
                                                    id="dateForCalendar"></span> - <span id="dateForCalendar2"></span>
                                            </div>
                                            <div class="col-md-2 text-right"><img
                                                    src="/resources/images/icons/calendarRightArrowButton.png"
                                                    class="btn padding0"
                                                    id="calendarRightArrowButton" onclick="nextWeek()"></div>
                                        </div>
                                        <div class="col-md-12 myCalendarContentStyle">
                                            <!-- <div class="container"> -->
                                            <div class="row">
                                                <div class="col-md-12 paddingBottom18px">
                                                    <div class="col-md-1 text-center headerBoxesForCalendar"
                                                         style="width: 80px;"></div>
                                                    <div class="col-md-1 text-center boxesForCalendar"
                                                         style="width: 80px;">
                                                        <p>пн</p><span class="smallDateColorForCalendar"
                                                                       id="monday"></span>
                                                    </div>
                                                    <div class="col-md-1 text-center boxesForCalendar"
                                                         style="width: 80px;">
                                                        <p>вт</p><span class="smallDateColorForCalendar"
                                                                       id="tuesday"></span></div>
                                                    <div class="col-md-1 text-center boxesForCalendar"
                                                         style="width: 80px;">
                                                        <p>ср</p><span class="smallDateColorForCalendar"
                                                                       id="wednesday"></span></div>
                                                    <div class="col-md-1 text-center boxesForCalendar"
                                                         style="width: 80px;">
                                                        <p>чт</p><span class="smallDateColorForCalendar"
                                                                       id="thursday"></span></div>
                                                    <div class="col-md-1 text-center boxesForCalendar"
                                                         style="width: 80px;">
                                                        <p>пт</p><span class="smallDateColorForCalendar"
                                                                       id="friday"></span>
                                                    </div>
                                                    <div class="col-md-1 text-center boxesForCalendar"
                                                         style="width: 80px;">
                                                        <p>сб</p><span class="smallDateColorForCalendar"
                                                                       id="saturday"></span></div>
                                                    <div class="col-md-1 text-center boxesForCalendar"
                                                         style="width: 80px;">
                                                        <p>вс</p><span class="smallDateColorForCalendar"
                                                                       id="sunday"></span>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 lineHeightForBoxes">
                                                    <div class="col-md-1 text-center headerBoxesForCalendar">10:00</div>
                                                    <div onclick="onClickOnField()">
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             style="width: 80px;" id="10_monday" data-toggle="modal"
                                                             data-target="#modalConfirmReservation"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             style="width: 80px;" id="10_tuesday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             style="width: 80px;" id="10_wednesday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             style="width: 80px;" id="10_thursday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             style="width: 80px;" id="10_friday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             style="width: 80px;" id="10_saturday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             style="width: 80px;" id="10_sunday"></div>

                                                        <!-- <button class="btn btn-info btn-lg" type="button" data-toggle="modal" data-target="#myModal">Показать всплывающее окно</button> -->
                                                        <!-- <div id="modalConfirmReservation" class="modal fade" tabindex="-1">
                                                            <div class="modal-dialog modal-sm">
                                                                <div class="modal-content">
                                                                    <div class="modal-header">
                                                                        <h4 class="modal-title"><strong>Дата:</strong><span id="modalConfirmSelectedDate"></span></h4>
                                                                    </div>
                                                                    <div class="modal-body">Текст уведомления</div>
                                                                    <div class="modal-footer"><button class="btn btn-default" type="button" data-dismiss="modal">Закрыть</button></div>
                                                                </div>
                                                            </div>
                                                        </div> -->
                                                    </div>
                                                </div>
                                                <div class="col-md-12 lineHeightForBoxes">
                                                    <div class="col-md-1 text-center headerBoxesForCalendar">11:00</div>
                                                    <div onclick="onClickOnField()">
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="11_monday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="11_tuesday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="11_wednesday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="11_thursday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="11_friday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="11_saturday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="11_sunday"></div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 lineHeightForBoxes">
                                                    <div class="col-md-1 text-center headerBoxesForCalendar">12:00</div>
                                                    <div onclick="onClickOnField()">
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="12_monday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="12_tuesday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="12_wednesday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="12_thursday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="12_friday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="12_saturday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="12_sunday"></div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 lineHeightForBoxes">
                                                    <div class="col-md-1 text-center headerBoxesForCalendar">13:00</div>
                                                    <div onclick="onClickOnField()">
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="13_monday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="13_tuesday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="13_wednesday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="13_thursday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="13_friday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="13_saturday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="13_sunday"></div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 lineHeightForBoxes">
                                                    <div class="col-md-1 text-center headerBoxesForCalendar">14:00</div>
                                                    <div onclick="onClickOnField()">
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="14_monday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="14_tuesday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="14_wednesday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="14_thursday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="14_friday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="14_saturday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="14_sunday"></div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 lineHeightForBoxes">
                                                    <div class="col-md-1 text-center headerBoxesForCalendar">15:00</div>
                                                    <div onclick="onClickOnField()">
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="15_monday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="15_tuesday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="15_wednesday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="15_thursday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="15_friday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="15_saturday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="15_sunday"></div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 lineHeightForBoxes">
                                                    <div class="col-md-1 text-center headerBoxesForCalendar">16:00</div>
                                                    <div onclick="onClickOnField()">
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="16_monday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="16_tuesday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="16_wednesday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="16_thursday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="16_friday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="16_saturday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="16_sunday"></div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 lineHeightForBoxes">
                                                    <div class="col-md-1 text-center headerBoxesForCalendar">17:00</div>
                                                    <div onclick="onClickOnField()">
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="17_monday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="17_tuesday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="17_wednesday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="17_thursday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="17_friday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="17_saturday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="17_sunday"></div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 lineHeightForBoxes">
                                                    <div class="col-md-1 text-center headerBoxesForCalendar">18:00</div>
                                                    <div onclick="onClickOnField()">
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="18_monday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="18_tuesday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="18_wednesday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="18_thursday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="18_friday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="18_saturday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="18_sunday"></div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 lineHeightForBoxes">
                                                    <div class="col-md-1 text-center headerBoxesForCalendar">19:00</div>
                                                    <div onclick="onClickOnField()">
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="19_monday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="19_tuesday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="19_wednesday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="19_thursday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="19_friday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="19_saturday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="19_sunday"></div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 lineHeightForBoxes">
                                                    <div class="col-md-1 text-center headerBoxesForCalendar">20:00</div>
                                                    <div onclick="onClickOnField()">
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="20_monday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="20_tuesday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="20_wednesday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="20_thursday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="20_friday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="20_saturday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="20_sunday"></div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 lineHeightForBoxes">
                                                    <div class="col-md-1 text-center headerBoxesForCalendar">21:00</div>
                                                    <div onclick="onClickOnField()">
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="21_monday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="21_tuesday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="21_wednesday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="21_thursday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="21_friday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="21_saturday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="21_sunday"></div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 lineHeightForBoxes">
                                                    <div class="col-md-1 text-center headerBoxesForCalendar">22:00</div>
                                                    <div onclick="onClickOnField()">
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="22_monday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="22_tuesday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="22_wednesday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="22_thursday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="22_friday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="22_saturday"></div>
                                                        <div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover"
                                                             id="22_sunday"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- </div> -->
                                        </div>
                                        <div class="col-md-12 text-right myCalendarContentStyle paddingTop15px">
                                            <p class="btn">Редактировать календарь</p>
                                        </div>
                                    </div>
                                    <!-- </div> -->
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4" id="wrap">
                        <div id="aside">
                            <div class="col-md-12 text-center" style="padding-bottom: 20px;">
                                <p class="h3" style="padding: 15px 0;">Доступен <strong>бесплатный</strong> пробный урок
                                    (30
                                    мин)
                                </p>
                                <button class="btn" style="font-size: 30px; color: #FFFFFF; background-color: #EA384E;">
                                    получить
                                </button>
                            </div>
                            <div class="col-md-12 text-center">
                                <p class="h3"><strong>Цена урока</strong></p>
                                <p class="h3 text-left"><img src="/resources/images/icons/package1.png" alt="number 1">
                                    урок
                                    -
                                    <strong>${res.priceForLesson}$</strong></p>
                                <p class="h3 text-left"><img src="/resources/images/icons/package5.png" alt="number 5">
                                    уроков
                                    (пакет) - <strong>${res.priceForComplexLesson*5}$</strong></p>
                                <p class="h3 text-left"><img src="/resources/images/icons/package10.png"
                                                             alt="number 10">
                                    уроков
                                    (пакет) - <strong>${res.priceForComplexLesson*10}$</strong></p>
                                <button class="btn"
                                        style="font-size: 30px; color: #FFFFFF; background-color: #EA384E; margin-top: 15px;">
                                    купить
                                    урок
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:if>
    </c:forEach>
</c:forEach>
<script type="text/javascript" src="/resources/js/search.js"></script>
</body>
</html>
