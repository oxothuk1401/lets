<%@ taglib uri="http://www.springframework.org/tags" prefix="local" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header id="header">
    <nav class="navbar navbar-default navbar-fixed-top navbarStyle" role="navigation">
        <div class="container-fluid padding15px">
            <div class="navbar-header">
                <a class="navbar-brand" href="/welcome"><img src="/resources/images/temporary/logo-white_small.png"
                                                             alt="logo"
                                                             id="logo"></a>
                <div class="navbar-header navbar-brand currentTime">
                    <u class="colorGreen"><span id="currentTime" class="colorGreen"></span></u>
                </div>
                <%--при уменьшении размера появляется кнопка--%>
                <button type="button" class="navbar-toggle offcanvas-toggle pull-right" data-toggle="offcanvas"
                        data-target="#js-bootstrap-offcanvas" style="float:left;">
                    <span class="sr-only">Toggle navigation</span>
                    <span>
			          <span class="icon-bar"></span>
			          <span class="icon-bar"></span>
			          <span class="icon-bar"></span>
			        </span>
                </button>
            </div>
            <div class="navbar-offcanvas navbar-offcanvas-touch" id="js-bootstrap-offcanvas">
                <ul class="nav navbar-nav navbar-right">
                    <c:if test="${pageContext.request.userPrincipal.name != null}">
                        <form id="logoutForm" method="POST" action="/logout">
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        </form>
                        <li><a href="#"><img src="/resources/images/icons/calendar4.png" id="myCalendar"></a></li>
                        <li><a href="#"><img src="/resources/images/icons/message1.png" id="myMessage"></a></li>
                        <li><a href="#"><img src="/resources/images/icons/notice1.png" id="myNotice"></a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img
                                    src="/resources/images/icons/accaunt1.png"></a>
                            <ul class="dropdown-menu bgColorGrey" role="menu">
                                <li><a href="#"><span class="colorWhite fontSize24px">Личные данные</span></a></li>
                                <li><a href="#"><span class="colorWhite fontSize24px">Резюме</span></a></li>
                                <li><a href="#"><span class="colorWhite fontSize24px">Помощь</span></a></li>
                                <li><a onclick="document.forms['logoutForm'].submit()"><span
                                        class="colorWhite fontSize24px"><local:message code="index.logOut"/></span></a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="?lang=en"><img src="/resources/images/icons/en.jpg" alt="en"
                                                    style="margin-right: -15px;"></a>
                        </li>
                        <li>
                            <a href="?lang=ru"><img src="/resources/images/icons/rus.jpg" alt="rus"
                                                    style="margin-right: -15px;"></a>
                        </li>
                    </c:if>
                </ul>
            </div>
            <%--<h4 style="color: white">Welcome ${pageContext.request.userPrincipal.name}--%>
            <%--&lt;%&ndash;<button class="btn-primary" type="submit" onclick="document.forms['logoutForm'].submit()">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<local:message code="index.logOut"/></button>&ndash;%&gt;--%>
            <%--</h4>--%>
        </div>
    </nav>
</header>
<br>
<br>
<br>
<br>
<br>
<br>
<br>


