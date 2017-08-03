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
                    <a href="#" title="Перейти на профиль" onclick="teachersPage()"><img
                            src="/resources/images/teacher/${res.teacherPhoto}"></a>
                    <a href="#" title="Показать видео"
                       style="position: relative; left: -20px; top: -22px; padding: 0;" data-toggle="modal"
                       data-target="#modalPlayVideo${res.name}"><img src="/resources/images/icons/playVideo.png"></a>
                </div>
            </div>
                <%--$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$--%>
            <div id="modalPlayVideo${res.name}" class="modal fade" tabindex="-1">
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
                    <div class="col-xs-2 col-md-2"><img src="/resources/images/icons/skype.png"
                                                        class="btn"
                                                        title="skype"></div>
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