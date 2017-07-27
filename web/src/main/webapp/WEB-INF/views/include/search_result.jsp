<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<section class="col-xs-12 col-md-9">
    <!-- 1 card of teacher -->
    <div class="row"
         style="height: 200px; border-top: 1px solid #DBDBDB; padding-bottom: 10px; margin-bottom: 10px;">
        <div class="col-xs-5 col-md-2" style="padding-top: 20px;">
            <div style="text-align: center;">
                <a href="/show_profile" title="Перейти на профиль"><img src="/resources/images/teacher/teacher1.png"></a>
                <a href="#" title="Показать видео" id="video"><img src="/resources/images/icons/playVideo.png"
                                                                   style="position: relative; left: -20px; top: -22px;"></a>
            </div>
        </div>

        <div class="modal fade" id="videoModal" role="dialog">
            <div class="modal-dialog">
                <!-- teacher Modal video-->
                <div class="modal-content">
                    <iframe width="590" height="320" src="https://www.youtube.com/embed/vVUViVOO1lQ?rel=0"
                            frameborder="0" allowfullscreen>
                    </iframe>
                </div>
            </div>
        </div>

        <div class="modal fade" id="calendarModal" role="dialog">
            <div class="modal-dialog">
                <!-- teacher Modal calendar-->
                <div class="modal-content">
                    <img src="${pageContext.request.contextPath}/resources/images/temporary/calendar.jpg"
                         width="600" height="600">
                </div>
            </div>
        </div>

        <div class="modal fade" id="payModal" role="dialog">
            <div class="modal-dialog">
                <!-- teacher Modal payment-->
                <div class="modal-content">
                    <iframe frameborder="0" allowtransparency="true" scrolling="no"
                            src="https://money.yandex.ru/quickpay/shop-widget?account=410012266760751&quickpay=shop&payment-type-choice=on&mobile-payment-type-choice=on&writer=seller&targets=%D0%97%D0%B0+%D1%83%D1%80%D0%BE%D0%BA+1+%D1%83%D1%80%D0%BE%D0%BA&targets-hint=&default-sum=560&button-text=01&fio=on&mail=on&successURL="
                            width="450" height="198">
                    </iframe>
                </div>
            </div>
        </div>

        <div class="col-xs-12 col-md-6" style="padding-top: 15px;">
            <div class="row">
                <div class="col-xs-9 col-md-10">
                    <p style="font-size: 25px"> Cameron Diaz <span>:flag:</span></p>
                </div>
                <div class="col-xs-3 col-md-2">
                    <img src="/resources/images/icons/calendar2.png" class="btn" title="открыть календарь">
                </div>
            </div>

            <p><b>преподает: <span style="color: #3E9DD7;">английский</span> (родной язык)<br>
                говорит на: <span style="color: #3E9DD7;">английский, русский, чешский</span><br></b>
                <span style="font-size: 12px; font-weight: 100; color: #9D9D9D">A lazy, incompetent middle school teacher who hates her job,
							her students, and her co-workers is forced to return to teaching to make
							enough money for breast implants after her wealthy fiancé dumps her. </span>
            </p>
            <p><b><span style="padding: 4px; background-color: #BABBDF">IELTS</span>
                <span style="padding: 4px; background-color: #BABBDF">English for lawyers</span>
                <span style="padding: 4px; background-color: #BABBDF">Business communication</span></b></p>
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

            <p><span style="font-size: 12px; font-weight: 100; color: #9D9D9D">цена урока</span><b> 10 $ -
                12$</b></p>
            <h4 style="color: #1C3075;">бесплатный пробный<br> урок (30 мин)</h4>
            <div class="row">
                <div class="col-xs-4 col-md-4"><a href="#" id="pay" title="Оплатить">
                    <img src="/resources/images/icons/pay.png" class="btn" title="pay"></a>
                </div>
                <div class="col-xs-2 col-md-2"><img src="/resources/images/icons/skype.png" class="btn" title="skype"></div>
                <div class="col-xs-2 col-md-2"><a href="#" id="newMess" title="Новое сообщение">
                    <img src="/resources/images/icons/chat.png" class="btn"></a>
                </div>

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
                                        <input type="text" class="form-control" name="message" id="messText"
                                               placeholder="ваше сообщение" required>
                                    </div>
                                    <input type="hidden" name="idTeacher" value="2/">
                                    <input type="hidden" name="date" value="2222/">
                                    <input type="hidden" name="username" value="VovaVovaVoava/">
                                    <input type="hidden" name="idStudent" value="1/">
                                    <input type="hidden" name="img" value="teacher4.png">
                                    <button type="submit" class="btn btn-block btnBlack">Отправить сообщение
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</section>
