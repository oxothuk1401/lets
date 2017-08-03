<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

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
                        <img src="/resources/images/teacher/teacher3.png" class="MTteachersProfilePhoto"
                             alt="profile Photo">
                        <span class="h4">online</span>
                    </div>

                    <div class="col-md-6">
                        <div class="col-md-12 paddingLeft0 marginBottom15px"><span
                                class="h1 nameOfTeacher">Old Dude</span></div>
                        <div class="col-md-12 paddingLeft0 marginBottom15px">
                            <img src="/resources/images/icons/skype.png" class=" MTteachersIconsWidth">
                            <span class="h4">sweet_professor333</span>
                        </div>
                        <div class="col-md-12 paddingLeft0 marginBottom15px">
                            <img src="/resources/images/icons/chat.png" class="btn MTteachersIconsWidth padding0">
                            <span class="h4"><strong>написать сообщение</strong></span>
                        </div>
                    </div>

                    <div class="col-md-3 text-right">
                            <span class="h6 MTteachersLocalPlaceTime">Сербия, Белград <span
                                    id="currentTimeSerbia"></span></span>
                        <img src="/resources/images/flags/serbia.png" class="MTteachersFlagWidth">
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
                        <span class="h4">offline</span>
                    </div>

                    <div class="col-md-6">
                        <div class="col-md-12 paddingLeft0 marginBottom15px"><span
                                class="h1 nameOfTeacher">Kyoko Fukada</span>
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
                        </span>
                                </span>
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

<!-- reminders -->
<div id="reminder" class="modal fade" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content modalContent">
            <div class="modal-header borderNone">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h3 class="modal-title text-center">
                    Поздравляем! У Вас за плечами уже 10 уроков, которые приблизили вас к цели - <strong><span
                        id="whichLanguage"></span>.</strong> Для продолжения Вам необходимо приобрести следующий
                    пакет уроков у преподавателя <strong><span id="whichTeacher"
                                                               class="remindersTextColorBlue"></span>.</strong>
                </h3>
            </div>
            <div class="modal-body borderNone text-center">
                <div class="wrapForPriceInReminders">
                    <p class="h3 text-left"><img src="/resources/images/icons/package1.png" alt="number 1"> урок -
                        <strong>10$</strong></p>
                    <p class="h3 text-left"><img src="/resources/images/icons/package5.png" alt="number 5"> уроков
                        (пакет) -
                        <strong>45$</strong></p>
                    <p class="h3 text-left"><img src="/resources/images/icons/package10.png" alt="number 10"> уроков
                        (пакет) -
                        <strong>80$</strong></p>
                </div>
                <button class="btn remindersBtnBuy">купить урок</button>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="/resources/js/search.js"></script>
</body>
</html>
