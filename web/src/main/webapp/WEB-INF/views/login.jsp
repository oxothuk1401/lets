<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="local" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="include/head.jsp" %>
    <title>LETSSTUDY</title>

</head>
<body>

<%@ include file="include/header.jsp" %>

    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <div class="row">
                    <div class="col-xs-12 col-md-8 col-md-offset-2">
                        <p class="headerP"><local:message code="index.mainText"/></p>
                    </div>
                </div>
            </div>

            <!-- Modal for autorization-->
            <div class="modal fade" id="autorizationModal" role="dialog">
                <div class="modal-dialog">

                    <!-- autorization Modal content-->
                    <div class="modal-content">
                        <div class="modal-header modalHeaderStyle">
                            <p class="text-center fontSize30px"><local:message code="index.authorize"/></p>
                            <div class="text-center">
                                <img src="/resources/images/icons/gplus.png"
                                     class="btn padding0 marginRight20px">
                                <img src="/resources/images/icons/vkontakte.png"
                                     class="btn padding0 marginRight20px">
                                <img src="/resources/images/icons/facebook.png"
                                     class="btn padding0 marginRight20px">
                            </div>
                        </div>
                        <div class="modal-body modalBodyStyle">
                            <form role="form" method="POST" action="/login">
                                <div class="form-group">
                                    <p>${message}</p>
                                    <input class="form-control" type="text" name="email" id="login" value=""
                                           placeholder="<local:message code="index.placeholder.email"/>"
                                           required>
                                    <input class="form-control" type="password" name="password" value=""
                                           placeholder="<local:message code="index.placeholder.password"/>"
                                           required>
                                    <p>${error}</p>
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                    <button type="submit" class="btn btn-block btnBlack"><local:message
                                            code="index.logIn"/></button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal for registration-->
            <div class="modal fade" id="registrModal" role="dialog">
                <div class="modal-dialog">

                    <!-- student Modal content-->
                    <div class="modal-content">
                        <div class="modal-header modalHeaderStyle">
                            <p class="text-center fontSize30px"><local:message code="index.createAnAccount"/></p>
                            <div class="text-center">
                                <img src="/resources/images/icons/gplus.png"
                                     class="btn padding0 marginRight20px">
                                <img src="/resources/images/icons/vkontakte.png"
                                     class="btn padding0 marginRight20px">
                                <img src="/resources/images/icons/facebook.png"
                                     class="btn padding0 marginRight20px">
                            </div>
                        </div>
                        <div class="modal-body modalBodyStyle">
                                <a href="/registration">Create an account</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



<section id="section1" class="marginBottom15px fontSize18px">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-md-12 text-center">
                <p class="section1Header"><local:message code="index.text1"/></p>
            </div>
            <div class="col-md-12 text-center marginBottom15px">
                <div class="row">
                    <div class="col-xs-4 col-md-4"><local:message code="index.effectively"/></div>
                    <div class="col-xs-4 col-md-4"><local:message code="index.interesting"/></div>
                    <div class="col-xs-4 col-md-4"><local:message code="index.practical"/></div>
                </div>
            </div>
            <div class="col-xs-12 col-md-12">
                <div class="row">
                    <div class="col-xs-12 col-md-6 col-md-offset-6">
                        <div class="row">
                            <div class="col-xs-12 col-md-12 marginBottom15px">
                                <div class="row">
                                    <div class="col-xs-12 col-md-12">
                                        <p>ИЗУЧАЙТЕ ЯЗЫК В ЛЮБОМ МЕСТЕ В ЛЮБОЕ ВРЕМЯ</p>
                                    </div>
                                    <div class="col-xs-12 col-md-12">
                                        <p class="marginBottom15px">Постройте график обучения с учетом своего стиля
                                            жизни и степени загруженности. Все, что вам нужно, – это интернет, вебкамера
                                            и гарнитура.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-12 marginBottom15px">
                                <div class="row">
                                    <div class="col-xs-12 col-md-12">
                                        <p>ЖИВОЕ ОБЩЕНИЕ С НОСИТЕЛЕМ ЯЗЫКА</p>
                                    </div>
                                    <div class="col-xs-12 col-md-12">
                                        <p class="marginBottom15px">С нами сотрудничают коренные жители Лондона, США,
                                            Канады и т.д., с сертификатами CELTA/TEFL.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-12 marginBottom15px">
                                <div class="row">
                                    <div class="col-xs-12 col-md-12">
                                        <p>ИНДИВИДУАЛЬНЫЙ ПОДХОД В ОБУЧЕНИИ</p>
                                    </div>
                                    <div class="col-xs-12 col-md-12">
                                        <p class="marginBottom15px">У нас нет шаблонных уроков, так как ход каждого
                                            урока выстраивается с учетом пожеланий студента и конкретно поставленных
                                            задач.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="section2" class="marginBottom15px text-center">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-md-12 marginBottom15px">
                <p class="h3"><strong>Наши преподаватели – высококвалифицированные профессионалы со всего мира</strong>
                </p>
            </div>
            <div class="col-xs-12 col-md-12 marginBottom15px">
                <div class="row">
                    <div class="col-xs-12 col-md-6 marginBottom15px bgStyleWhite">
                        <div class="row">
                            <div class="col-xs-7 col-md-9">
                                <div class="row">
                                    <div class="col-xs-12 col-md-12 marginBottom15px">
                                        <div class="row">
                                            <div class="col-xs-7 col-md-4">
                                                <img src="/resources/images/teacher/teacher2.png">
                                            </div>
                                            <div class="col-xs-5 col-md-8">
                                                <div class="row">
                                                    <div class="col-xs-12 col-md-12">
                                                        <p class="teacherName text-left">Лиза <img
                                                                src="images/icons/hurt.png"></p>
                                                    </div>
                                                    <div class="col-xs-12 col-md-12 text-left">
                                                        <div class="row">
                                                            <div class="col-xs-6 col-md-3">
                                                                <img src="/resources/images/icons/calendar3.png"
                                                                     class="btn padding0">
                                                            </div>
                                                            <div class="col-xs-6 col-md-3">
                                                                <img src="/resources/images/icons/playVideo2.png"
                                                                     class="btn padding0">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-12 marginBottom15px grey fontSize16px">
                                        <div class="row">
                                            <div class="col-xs-12 col-md-12">
                                                <p class="text-left">Язык родной: <span
                                                        class="styleForTags">русский</span></p>
                                            </div>
                                            <div class="col-xs-12 col-md-12">
                                                <p class="text-left">Язык преподавания: <span class="styleForTags">английский</span>
                                                    <span class="styleForTags">немецкий</span></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-12">
                                        <p class="text-left"><span class="styleForTags">ЦТ</span> <span
                                                class="styleForTags">Бизнес</span></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-5 col-md-3">
                                <div class="row">
                                    <div class="col-xs-12 col-md-12">
                                        <img src="/resources/images/icons/ratingStars.png" class="marginBottom15px">
                                    </div>
                                    <div class="col-xs-12 col-md-12">
                                        <div class="row">
                                            <div class="col-xs-12 col-md-12">
                                                <p class="grey">Цена за 60мин.</p>
                                            </div>
                                            <div class="col-xs-12 col-md-12">
                                                <p class="fontSize18px"><strong>$20. 00 USD</strong></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-12">
                                        <div class="row">
                                            <div class="col-xs-12 col-md-12">
                                                <p class="grey">30 мин. пробный урок</p>
                                            </div>
                                            <div class="col-xs-12 col-md-12">
                                                <p class="fontSize18px"><strong>бесплатно</strong></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-5" marginBottom15px>
                        <div class="row">
                            <div class="col-xs-12 col-md-12 bgStyleGrey">
                                <p class="styleForPfoto">ФОТО</p>
                            </div>
                            <div class="col-xs-12 col-md-12 bgStyleWhite2">
                                <div class="row paddingLeft20px">
                                    <div class="col-xs-12 col-md-12">
                                        <p class="text-left fontSize24px">Лиза <img
                                                src="/resources/images/icons/ratingStars.png" class="paddingLeft30px">
                                        </p>
                                    </div>
                                    <div class="col-xs-12 col-md-12">
                                        <p class="text-left">Язык родной: <span class="styleForTags">русский</span></p>
                                        <p class="text-left">Язык преподавания: <span
                                                class="styleForTags">английский</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-md-12">
                <button type="button" class="btn btn-default btnBlack">ПРОСМОТРЕТЬ ВСЕХ</button>
            </div>
        </div>
    </div>
</section>

<section id="section3" class="marginBottom15px fontColorForSection3 text-center">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-md-12">
                <p class="fontSize30px">КАК ЭТО РАБОТАЕТ</p>
            </div>
            <div class="col-xs-12 col-md-12">
                <div class="row fontSize18px">
                    <div class="col-xs-12 col-md-3 marginBottom15px">
                        <p>ЗАРЕГИСТРИРУЙТЕСЬ</p>
                        <p>пройдите процедуру бесплатной регистрации</p>
                    </div>
                    <div class="col-xs-12 col-md-3 marginBottom15px">
                        <p>ВЫБЕРИТЕ ПРЕПОДАВАТЕЛЯ</p>
                        <p>используйте фильтры для быстрого поиска</p>
                    </div>
                    <div class="col-xs-12 col-md-3 marginBottom15px">
                        <p>СОГЛАСУЙТЕ ДАТУ И ВРЕМЯ</p>
                        <p>отправьте сообщение преподавателю и согласуйте время и дату</p>
                    </div>
                    <div class="col-xs-12 col-md-3 marginBottom15px">
                        <p>ПОЛУЧАЙТЕ ЗНАНИЯ</p>
                        <p>обучайтесь у преподавателя, выполняйте задания и рекомендации</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<%@ include file="include/footer.jsp" %>
</body>
</html>