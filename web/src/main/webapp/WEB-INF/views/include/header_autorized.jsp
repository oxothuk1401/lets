<%@ taglib uri="http://www.springframework.org/tags" prefix="local" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-default navbar-fixed-top navbarStyle" role="navigation">
    <div class="container-fluid padding15px">
        <div class="navbar-header">
            <a class="navbar-brand" href="/welcome"><img src="/resources/images/temporary/logo-white_small.png" alt="logo"
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
                        <h4 style="color: white">Welcome ${pageContext.request.userPrincipal.name}
                            <button class="btn-primary" type="submit" onclick="document.forms['logoutForm'].submit()">
                                <local:message code="index.logOut"/></button>
                        </h4>
                    </c:if>
                    <a href="?lang=en"><img src="/resources/images/icons/en.jpg" alt="en"></a>
                    <a href="?lang=ru"><img src="/resources/images/icons/rus.jpg" alt="rus"></a>

            </ul>
        </div>
    </div>
</nav>
<br>
<br>
<br>
<br>
<br>


