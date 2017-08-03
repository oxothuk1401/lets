
<nav class="navbar navbar-default navbar-fixed-top navbarStyle" role="navigation">
    <div class="container-fluid padding15px">
        <div class="navbar-header">
            <a class="navbar-brand" href="/login"><img src="/resources/images/logo/logo.png" alt="logo" id="logo"></a>
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
                <a href="?lang=en"><img src="/resources/images/icons/en.jpg" alt="en"></a>
                <a href="?lang=ru"><img src="/resources/images/icons/rus.jpg" alt="rus"></a>
                <button type="button" class="btn" id="autorization"><local:message code="index.authorize"/></button>
                <button type="button" class="btn" id="registration"><local:message code="index.reg"/></button>
            </ul>
        </div>
    </div>
</nav>
<br>
<br>
<br>
<br>
<br>


