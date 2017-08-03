<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="local" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>LETSSTUDY кабинет учителя</title>

	<script type="text/javascript" src="/resources/js/jquery-3.2.0.js"></script>

	<!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    <!-- Подключение CSS-файла offcanvas -->
	<link rel="stylesheet" href="/resources/css/bootstrap.offcanvas.min.css">
	
	<!-- Подключение JavaScript-файла offcanvas -->
	<script src="/resources/js/bootstrap.offcanvas.min.js"></script>

    <link rel="stylesheet" type="text/css" href="/resources/css/teachersCabinet.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/search.css">

</head>
<body>
	<header id="header">
			<nav class="navbar navbar-default navbar-fixed-top navbarStyle" role="navigation">
			  <div class="container-fluid padding15px">
			    <div class="navbar-header">
			      <a class="navbar-brand" href="/"><img src="/resources/images/logo/logo.png" alt="logo" id="logo"></a>
			      <div class="navbar-header navbar-brand currentTime">
			    		<u class="colorGreen"><span id="currentTime" class="colorGreen"></span></u>
			      </div>
			      <button type="button" class="navbar-toggle offcanvas-toggle pull-right" data-toggle="offcanvas" data-target="#js-bootstrap-offcanvas" style="float:left;">
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
			        <li><a href="#"><img src="/resources/images/icons/myMaterials.png""> <span class="colorWhite fontSize24px" id="myMaterials">Мои материалы</span></a></li>
			        <li><a href="#"><img src="/resources/images/icons/myStudents.png"> <span class="colorWhite fontSize24px" id="myStudents">Мои студенты</span></a></li>
			        <li><a href="/searchAction"><img src="/resources/images/icons/myCollegs.png"> <span class="colorWhite fontSize24px">Коллеги</span></a></li>
			        <li><a href="#"><img src="/resources/images/icons/calendar4.png" id="myCalendar"></a></li>
			        <li><a href="#"><img src="/resources/images/icons/message1.png" id="myMessage"></a></li>
			        <li><a href="#"><img src="/resources/images/icons/notice1.png" id="myNotice"></a></li>
			        <li class="dropdown">
			          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="/resources/images/icons/accaunt1.png"></a>
			          <ul class="dropdown-menu bgColorGrey" role="menu">
			            <li><a href="#"><span class="colorWhite fontSize24px">Личные данные</span></a></li>
			            <li><a href="#"><span class="colorWhite fontSize24px">Резюме</span></a></li>
			            <li><a href="#"><span class="colorWhite fontSize24px">Помощь</span></a></li>
			            <li>
							<form id="logoutForm" method="POST" action="/logout">
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
							</form>
							<a href="#" onclick="document.forms['logoutForm'].submit()"><span class="colorWhite fontSize24px">Выход</span></a>
						</li>
			          </ul>
			        </li>
			      </ul>
			    </div>
			  </div>
			</nav>
	</header>

	<section>
		<div id="content"></div>
	</section>

<!-- NOTICE CONTENT -->
	<div id="myNoticeContent">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-md-12">
					<span class="h3 colorGrey">Оповещения</span>
				</div>
				<!-- 1 notice -->
				<div class="col-xs-12 col-md-12 paddingTop15px">
					<div class="col-xs-2 col-md-1 text-center">
						<img src="/resources/images/icons/label.png">
					</div>
					<div class="col-xs-10 col-md-11">
						<div class="row">
							<div class="col-xs-12 col-md-12">
								<p class="fontSize14px text-justify">Не следует, однако забывать, что консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Товарищи! консультация с широким активом обеспечивает широкому кругу...</p>
							</div>
							<div class="col-xs-12 col-md-12">
								<p class="noticeDateColor">12 июля</p>
							</div>
						</div>
					</div>
				</div>
				<!-- 2 notice -->
				<div class="col-xs-12 col-md-12 paddingTop15px">
					<div class="col-xs-2 col-md-1 text-center">
						<img src="/resources/images/icons/label.png">
					</div>
					<div class="col-xs-10 col-md-11">
						<div class="row">
							<div class="col-xs-12 col-md-12">
								<p class="fontSize14px text-justify">Повседневная практика показывает, что рамки и место обучения кадров позволяет оценить значение существенных финансовых и административных условий. Значимость этих проблем настолько очевидна, что постоянное информационно-пропагандистское обеспечение нашей деятельности обеспечивает широкому кругу (специалистов) участие в формировании системы обучения кадров, соответствует насущным потребностям. Задача организации, в особенности же новая модель организационной деятельности играет важную роль в формировании новых предложений. Повседневная практика показывает, что рамки и место обучения кадров в значительной степени обуславливает создание дальнейших направлений развития. Не следует, однако забывать, что сложившаяся структура организации требуют определения и уточнения модели развития. Равным образом дальнейшее развитие различных форм деятельности требуют определения и уточнения направлений прогрессивного развития.</p>
							</div>
							<div class="col-xs-12 col-md-12">
								<p class="noticeDateColor">9 июля</p>
							</div>
						</div>
					</div>
				</div>
				<!-- 3 notice -->
				<div class="col-xs-12 col-md-12 paddingTop15px">
					<div class="col-xs-2 col-md-1 text-center">
						<img src="/resources/images/icons/label.png">
					</div>
					<div class="col-xs-10 col-md-11">
						<div class="row">
							<div class="col-xs-12 col-md-12">
								<p class="fontSize14px text-justify">Не следует, однако забывать, что консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Товарищи! консультация с широким активом обеспечивает широкому кругу...</p>
							</div>
							<div class="col-xs-12 col-md-12">
								<p class="noticeDateColor">1 июля</p>
							</div>
						</div>
					</div>
				</div>
				<!-- 4 notice -->
				<div class="col-xs-12 col-md-12 paddingTop15px">
					<div class="col-xs-2 col-md-1 text-center">
						<img src="/resources/images/icons/label.png">
					</div>
					<div class="col-xs-10 col-md-11">
						<div class="row">
							<div class="col-xs-12 col-md-12">
								<p class="fontSize14px text-justify">Не следует, однако забывать, что консультация с широким активом представляет собой интересный эксперимент проверки дальнейших направлений развития. Товарищи! консультация с широким активом обеспечивает широкому.</p>
							</div>
							<div class="col-xs-12 col-md-12">
								<p class="noticeDateColor">22 июня</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<!-- MESSAGE CONTENT -->
	<div id="myMessageContent">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-md-12">
					<div class="row">
						<div class="col-md-4" id="myMessageFriendsName">
							<div class="col-md-12">
								<div class="row">
									<div class="col-md-2 paddingLeft0">
										<img src="/resources/images/icons/userPhoto.png">
									</div>
									<div class="col-md-10">
										<div class="row">
											<div class="col-md-12">
												<div class="row">
													<div class="col-md-8">
														<span><strong>Игорь Трамп</strong> </span><span> :flag:</span>
													</div>
													<div class="col-md-4 text-right">
														<span>14:12</span> 
													</div>
												</div>
											</div>
											<div class="col-md-12">
												<p>С другой стороны новая модель организационной деятельности требуют</p>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="col-md-12">
								<div class="row">
									<div class="col-md-2 paddingLeft0">
										<img src="/resources/images/icons/userPhoto.png">
									</div>
									<div class="col-md-10">
										<div class="row">
											<div class="col-md-12">
												<div class="row">
													<div class="col-md-8">
														<span><strong>Мотя Жмотя</strong> </span><span> :flag:</span>
													</div>
													<div class="col-md-4 text-right">
														<span>27 апр.</span> 
													</div>
												</div>
											</div>
											<div class="col-md-12">
												<p>С другой стороны новая модель организационной деятельности требуют</p>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="col-md-12">
								<div class="row">
									<div class="col-md-2 paddingLeft0">
										<img src="/resources/images/icons/userPhoto.png">
									</div>
									<div class="col-md-10">
										<div class="row">
											<div class="col-md-12">
												<div class="row">
													<div class="col-md-8">
														<span><strong>Ира Козлова</strong> </span><span> :flag:</span>
													</div>
													<div class="col-md-4 text-right">
														<span>2 мар.</span> 
													</div>
												</div>
											</div>
											<div class="col-md-12">
												<p>С другой стороны новая модель организационной деятельности требуют</p>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="col-md-12">
								<div class="row">
									<div class="col-md-2 paddingLeft0">
										<img src="/resources/images/icons/userPhoto.png">
									</div>
									<div class="col-md-10">
										<div class="row">
											<div class="col-md-12">
												<div class="row">
													<div class="col-md-8">
														<span><strong>Марта Ситникова</strong> </span><span> :flag:</span>
													</div>
													<div class="col-md-4 text-right">
														<span>3 мар.</span> 
													</div>
												</div>
											</div>
											<div class="col-md-12">
												<p>С другой стороны новая модель организационной деятельности требуют</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- <div class="row">
								<div class="col-md-12">
									<div id="custom-search-input">
						                <div class="input-group">
						                    <input type="text" class="form-control input-lg" placeholder="Поиск по имени..." />
						                    <span class="input-group-btn">
						                        <button class="btn btn-info btn-lg" type="button">
						                            <i class="glyphicon glyphicon-search"></i>
						                        </button>
						                    </span>
						                </div>
						            </div>
								</div>
							</div> -->
						</div>
						<div class="col-md-8">
							<div class="row" id="myFriendsMessageContent">
								<div class="col-md-12">
									<p class="h4 text-center"><strong>Игорь Трамп</strong></p>
								</div>
								<div class="col-md-12">
									<div class="row">
										<div class="col-md-12 text-center styleForDateInMessage">27 февраля</div>
										<div class="col-md-12">
											<div class="col-md-1 paddingLeft0"><img src="/resources/images/icons/userPhoto.png"></div>
											<div class="col-md-11">
												<div class="col-md-12 styleForDateInMessage">13:07</div>
												<div class="col-md-12">
													<p class="text-justify">Таким образом реализация намеченных плановых заданий требуют определения и уточнения форм развития. Не следует, однако забывать, что новая модель организационной деятельности в значительной степени обуславливает создание модели развития. Не следует, однако забывать, что новая модель</p>
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="col-md-1 paddingLeft0"><img src="/resources/images/icons/userPhoto.png"></div>
											<div class="col-md-11">
												<div class="col-md-12 styleForDateInMessage">13:07</div>
												<div class="col-md-12">
													<p class="text-justify">Таким образом реализация намеченных плановых заданий требуют определения и уточнения форм развития. Не следует, однако забывать, что новая модель организационной деятельности в значительной степени обуславливает создание модели развития. Не следует, однако забывать, что новая модель</p>
												</div>
											</div>
										</div>
										<div class="col-md-12 styleForNewMessage">
											<div class="col-md-1 paddingLeft0"><img src="/resources/images/icons/userPhoto.png"></div>
											<div class="col-md-11">
												<div class="col-md-12 styleForDateInMessage">13:07</div>
												<div class="col-md-12">
													<p class="text-justify">Таким образом реализация намеченных плановых заданий требуют определения и уточнения форм развития. Не следует, однако забывать, что новая модель организационной деятельности в значительной степени обуславливает создание модели развития. Не следует, однако забывать, что новая модель</p>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-12 paddingLeft0 paddingRight0">
						            <div class="input-group">
						               	<input type="text" class="form-control" placeholder="Сообщение...">
						               	<span class="input-group-btn">
						               		<button class="btn btn-default">Отправить</button>
										</span>
						            </div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


<!-- STUDENTS CONTENT -->
	<div id="myStudentsContent">
		<div class="container">
			<div class="row">
			
			<!-- 1 STUDENT -->
				<div class="col-xs-12 col-md-6 ">
					<div class="row">
						<div class="col-xs-12 col-md-12 bgColorStudents border15pxWhite">
							<div class="row">
								<div class="col-xs-12 col-md-12 paddingTop15px">
									<div class="col-xs-12 col-md-4"><img src="/resources/images/icons/userPhoto.png" class="imgWidthStudent"></div>
									<div class="col-xs-12 col-md-5">
										<div class="col-xs-12 col-md-12">
											<span class="h3">Игор Трамп </span><span> :flag:</span>
										</div>
										<div class="col-xs-12 col-md-12 paddingTop15px">
											<img src="/resources/images/icons/skype.png" class="imgWidthSkype"><span class="h4"> igor.tramp</span>
										</div>
										<div class="col-xs-12 col-md-12 paddingTop15px">
											<div class="text-center styleLangLevel">
												<span>Уровень: </span> <span>B1</span>
											</div>
										</div>
									</div>
									<div class="col-xs-12 col-md-3 paddingRight0 paddingLeft40px">
										<div class="text-center bgColorWhite">
											<img src="/resources/images/icons/message2.png" class="paddingBottom18px paddingTop18px btn">
											<img src="/resources/images/icons/calendar5.png" class="paddingBottom18px paddingTop18px btn">
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-md-12">
									<div class="row">
										<div class="col-xs-12 col-md-4 padding0">
											<div class="row margin15px bgColorWhite text-center">
												<div class="col-xs-12col-md-12 colorStudentsText fontSize14px height40px">Проведенных уроков:</div>
												<div class="col-xs-12 col-md-12 fontSize30px"><strong>6</strong></div>										
											</div>
										</div>
										<div class="col-xs-12 col-md-4 padding0">
											<div class="row margin15px bgColorWhite text-center">
												<div class="col-xs-12 col-md-12 colorStudentsText fontSize14px height40px">Забронированных уроков:</div>
												<div class="col-xs-12 col-md-12 fontSize30px"><strong>2</strong></div>										
											</div>
										</div>
										<div class="col-xs-12 col-md-4 padding0">
											<div class="row margin15px bgColorWhite text-center">
												<div class="col-xs-12 col-md-12 colorStudentsText fontSize14px height40px">Оставшиеся уроки:</div>
												<div class="col-xs-12 col-md-12 fontSize30px"><strong>3</strong></div>										
											</div>
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-md-12 bgColorForTimeZone colorWhite">
									<div class="col-xs-12 col-md-3 text-left fontSize24px height34px">23:45</div>
									<div class="col-xs-12 col-md-9 text-right fontSize12px height34px lineHeight34px">Россия,(+3 GMT)</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			<!-- 2 STUDENT -->
				<div class="col-xs-12 col-md-6 ">
					<div class="row">
						<div class="col-xs-12 col-md-12 bgColorStudents border15pxWhite">
							<div class="row">
								<div class="col-xs-12 col-md-12 paddingTop15px">
									<div class="col-xs-12 col-md-4"><img src="/resources/images/icons/userPhoto.png" class="imgWidthStudent"></div>
									<div class="col-xs-12 col-md-5">
										<div class="col-xs-12 col-md-12">
											<span class="h3">Игор Трамп </span><span> :flag:</span>
										</div>
										<div class="col-xs-12 col-md-12 paddingTop15px">
											<img src="/resources/images/icons/skype.png" class="imgWidthSkype"><span class="h4"> igor.tramp</span>
										</div>
										<div class="col-xs-12 col-md-12 paddingTop15px">
											<div class="text-center styleLangLevel">
												<span>Уровень: </span> <span>B1</span>
											</div>
										</div>
									</div>
									<div class="col-xs-12 col-md-3 paddingRight0 paddingLeft40px">
										<div class="text-center bgColorWhite">
											<img src="/resources/images/icons/message2.png" class="paddingBottom18px paddingTop18px btn">
											<img src="/resources/images/icons/calendar5.png" class="paddingBottom18px paddingTop18px btn">
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-md-12">
									<div class="row">
										<div class="col-xs-12 col-md-4 padding0">
											<div class="row margin15px bgColorWhite text-center">
												<div class="col-xs-12col-md-12 colorStudentsText fontSize14px height40px">Проведенных уроков:</div>
												<div class="col-xs-12 col-md-12 fontSize30px"><strong>6</strong></div>										
											</div>
										</div>
										<div class="col-xs-12 col-md-4 padding0">
											<div class="row margin15px bgColorWhite text-center">
												<div class="col-xs-12 col-md-12 colorStudentsText fontSize14px height40px">Забронированных уроков:</div>
												<div class="col-xs-12 col-md-12 fontSize30px"><strong>2</strong></div>										
											</div>
										</div>
										<div class="col-xs-12 col-md-4 padding0">
											<div class="row margin15px bgColorWhite text-center">
												<div class="col-xs-12 col-md-12 colorStudentsText fontSize14px height40px">Оставшиеся уроки:</div>
												<div class="col-xs-12 col-md-12 fontSize30px"><strong>3</strong></div>										
											</div>
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-md-12 bgColorForTimeZone colorWhite">
									<div class="col-xs-12 col-md-3 text-left fontSize24px height34px">23:45</div>
									<div class="col-xs-12 col-md-9 text-right fontSize12px height34px lineHeight34px">Россия,(+3 GMT)</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			<!-- 3 STUDENT -->
				<div class="col-xs-12 col-md-6 ">
					<div class="row">
						<div class="col-xs-12 col-md-12 bgColorStudents border15pxWhite">
							<div class="row">
								<div class="col-xs-12 col-md-12 paddingTop15px">
									<div class="col-xs-12 col-md-4"><img src="/resources/images/icons/userPhoto.png" class="imgWidthStudent"></div>
									<div class="col-xs-12 col-md-5">
										<div class="col-xs-12 col-md-12">
											<span class="h3">Игор Трамп </span><span> :flag:</span>
										</div>
										<div class="col-xs-12 col-md-12 paddingTop15px">
											<img src="/resources/images/icons/skype.png" class="imgWidthSkype"><span class="h4"> igor.tramp</span>
										</div>
										<div class="col-xs-12 col-md-12 paddingTop15px">
											<div class="text-center styleLangLevel">
												<span>Уровень: </span> <span>B1</span>
											</div>
										</div>
									</div>
									<div class="col-xs-12 col-md-3 paddingRight0 paddingLeft40px">
										<div class="text-center bgColorWhite">
											<img src="/resources/images/icons/message2.png" class="paddingBottom18px paddingTop18px btn">
											<img src="/resources/images/icons/calendar5.png" class="paddingBottom18px paddingTop18px btn">
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-md-12">
									<div class="row">
										<div class="col-xs-12 col-md-4 padding0">
											<div class="row margin15px bgColorWhite text-center">
												<div class="col-xs-12col-md-12 colorStudentsText fontSize14px height40px">Проведенных уроков:</div>
												<div class="col-xs-12 col-md-12 fontSize30px"><strong>6</strong></div>										
											</div>
										</div>
										<div class="col-xs-12 col-md-4 padding0">
											<div class="row margin15px bgColorWhite text-center">
												<div class="col-xs-12 col-md-12 colorStudentsText fontSize14px height40px">Забронированных уроков:</div>
												<div class="col-xs-12 col-md-12 fontSize30px"><strong>2</strong></div>										
											</div>
										</div>
										<div class="col-xs-12 col-md-4 padding0">
											<div class="row margin15px bgColorWhite text-center">
												<div class="col-xs-12 col-md-12 colorStudentsText fontSize14px height40px">Оставшиеся уроки:</div>
												<div class="col-xs-12 col-md-12 fontSize30px"><strong>3</strong></div>										
											</div>
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-md-12 bgColorForTimeZone colorWhite">
									<div class="col-xs-12 col-md-3 text-left fontSize24px height34px">23:45</div>
									<div class="col-xs-12 col-md-9 text-right fontSize12px height34px lineHeight34px">Россия,(+3 GMT)</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

<!-- CALENDARS CONTENT -->
	<div id="myCalendarContent">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 myCalendarContentStyle paddingTop15px">
					<div class="col-md-2 text-left"><img src="/resources/images/icons/calendarLeftArrowButton.png" class="btn padding0" id="calendarLeftArrowButton" onclick="previousWeek()"></div>
					<div class="col-md-8 text-center fontSize24px"><span id="dateForCalendar"></span> - <span id="dateForCalendar2"></span></div>
					<div class="col-md-2 text-right"><img src="/resources/images/icons/calendarRightArrowButton.png" class="btn padding0" id="calendarRightArrowButton" onclick="nextWeek()"></div>
				</div>
				<div class="col-md-8 col-md-offset-2 myCalendarContentStyle">
					<!-- <div class="container"> -->
						<div class="row">
							<div class="col-md-12 paddingBottom18px">
								<div class="col-md-1 text-center headerBoxesForCalendar"></div>
								<div class="col-md-1 text-center boxesForCalendar"><p>пн</p><span class="smallDateColorForCalendar" id="monday"></span></div>
								<div class="col-md-1 text-center boxesForCalendar"><p>вт</p><span class="smallDateColorForCalendar" id="tuesday"></span></div>
								<div class="col-md-1 text-center boxesForCalendar"><p>ср</p><span class="smallDateColorForCalendar" id="wednesday"></span></div>
								<div class="col-md-1 text-center boxesForCalendar"><p>чт</p><span class="smallDateColorForCalendar" id="thursday"></span></div>
								<div class="col-md-1 text-center boxesForCalendar"><p>пт</p><span class="smallDateColorForCalendar" id="friday"></span></div>
								<div class="col-md-1 text-center boxesForCalendar"><p>сб</p><span class="smallDateColorForCalendar" id="saturday"></span></div>
								<div class="col-md-1 text-center boxesForCalendar"><p>вс</p><span class="smallDateColorForCalendar" id="sunday"></span></div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">10:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="10_monday" data-toggle="modal" data-target="#modalConfirmReservation"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="10_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="10_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="10_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="10_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="10_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="10_sunday"></div>

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
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="11_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="11_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="11_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="11_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="11_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="11_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="11_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">12:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="12_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="12_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="12_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="12_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="12_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="12_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="12_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">13:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="13_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="13_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="13_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="13_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="13_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="13_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="13_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">14:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="14_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="14_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="14_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="14_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="14_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="14_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="14_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">15:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="15_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="15_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="15_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="15_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="15_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="15_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="15_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">16:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="16_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="16_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="16_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="16_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="16_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="16_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="16_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">17:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="17_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="17_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="17_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="17_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="17_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="17_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="17_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">18:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="18_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="18_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="18_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="18_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="18_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="18_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="18_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">19:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="19_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="19_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="19_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="19_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="19_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="19_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="19_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">20:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="20_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="20_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="20_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="20_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="20_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="20_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="20_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">21:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="21_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="21_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="21_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="21_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="21_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="21_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="21_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">22:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="22_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="22_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="22_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="22_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="22_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="22_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="22_sunday"></div>
								</div>
							</div>
						</div>
					<!-- </div> -->
				</div>
				<div class="col-md-8 col-md-offset-2 text-right myCalendarContentStyle paddingTop15px">
					<p class="btn" onclick="editCalendar()">Редактировать календарь</p>
				</div>
			</div>
		</div>
	</div>

<!-- EDIT CALENDARS CONTENT -->
	<div id="editMyCalendarContent">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<p class="h3">Редактирование личного расписания</p>
				</div>
				<div class="col-md-8 col-md-offset-2 myCalendarContentStyle paddingTop15px">
					<div class="col-md-2 text-left"><img src="/resources/images/icons/calendarLeftArrowButton.png" class="btn padding0" id="calendarLeftArrowButton" onclick="previousWeekEdit()"></div>
					<div class="col-md-8 text-center fontSize24px"><span id="dateForCalendar"></span> - <span id="dateForCalendar2"></span></div>
					<div class="col-md-2 text-right"><img src="/resources/images/icons/calendarRightArrowButton.png" class="btn padding0" id="calendarRightArrowButton" onclick="nextWeekEdit()"></div>
				</div>
				<div class="col-md-8 col-md-offset-2 myCalendarContentStyle">
					<!-- <div class="container"> -->
						<div class="row">
							<div class="col-md-12 paddingBottom18px">
								<div class="col-md-1 text-center headerBoxesForCalendar"></div>
								<div class="col-md-1 text-center boxesForCalendar"><p>пн</p><span class="smallDateColorForCalendar" id="monday"></span></div>
								<div class="col-md-1 text-center boxesForCalendar"><p>вт</p><span class="smallDateColorForCalendar" id="tuesday"></span></div>
								<div class="col-md-1 text-center boxesForCalendar"><p>ср</p><span class="smallDateColorForCalendar" id="wednesday"></span></div>
								<div class="col-md-1 text-center boxesForCalendar"><p>чт</p><span class="smallDateColorForCalendar" id="thursday"></span></div>
								<div class="col-md-1 text-center boxesForCalendar"><p>пт</p><span class="smallDateColorForCalendar" id="friday"></span></div>
								<div class="col-md-1 text-center boxesForCalendar"><p>сб</p><span class="smallDateColorForCalendar" id="saturday"></span></div>
								<div class="col-md-1 text-center boxesForCalendar"><p>вс</p><span class="smallDateColorForCalendar" id="sunday"></span></div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">00:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="00_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="00_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="00_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="00_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="00_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="00_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="00_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">01:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="01_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="01_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="01_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="01_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="01_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="01_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="01_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">02:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="02_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="02_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="02_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="02_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="02_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="02_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="02_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">02:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="02_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="02_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="02_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="02_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="02_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="02_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="02_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">03:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="03_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="03_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="03_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="03_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="03_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="03_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="03_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">04:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="04_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="04_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="04_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="04_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="04_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="04_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="04_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">05:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="05_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="05_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="05_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="05_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="05_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="05_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="05_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">06:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="06_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="06_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="06_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="06_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="06_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="06_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="06_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">07:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="07_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="07_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="07_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="07_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="07_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="07_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="07_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">08:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="08_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="08_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="08_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="08_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="08_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="08_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="08_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">09:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="09_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="09_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="09_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="09_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="09_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="09_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="09_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">10:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="10_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="10_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="10_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="10_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="10_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="10_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="10_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">11:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="11_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="11_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="11_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="11_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="11_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="11_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="11_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">12:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="12_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="12_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="12_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="12_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="12_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="12_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="12_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">13:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="13_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="13_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="13_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="13_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="13_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="13_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="13_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">14:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="14_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="14_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="14_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="14_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="14_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="14_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="14_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">15:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="15_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="15_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="15_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="15_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="15_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="15_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="15_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">16:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="16_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="16_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="16_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="16_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="16_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="16_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="16_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">17:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="17_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="17_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="17_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="17_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="17_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="17_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="17_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">18:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="18_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="18_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="18_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="18_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="18_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="18_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="18_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">19:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="19_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="19_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="19_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="19_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="19_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="19_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="19_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">20:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="20_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="20_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="20_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="20_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="20_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="20_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="20_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">21:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="21_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="21_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="21_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="21_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="21_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="21_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover bColorForEditCalendar" id="21_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">22:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="22_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="22_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="22_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="22_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="22_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="22_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="22_sunday"></div>
								</div>
							</div>
							<div class="col-md-12 lineHeightForBoxes">
								<div class="col-md-1 text-center headerBoxesForCalendar">23:00</div>
								<div onclick="onClickOnField()">
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="23_monday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="23_tuesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="23_wednesday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="23_thursday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="23_friday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="23_saturday"></div>
									<div class="col-md-1 text-center boxesForCalendar borderForBoxesCalendar onhover" id="23_sunday"></div>
								</div>
							</div>
						</div>
					<!-- </div> -->
				</div>
				<div class="col-md-8 col-md-offset-2 text-center myCalendarContentStyle paddingTop15px">
					<button class="btn" id="saveButton">Сохранить изменения</button>
				</div>
			</div>
		</div>
	</div>

<!-- MATERIALS CONTENT -->
<!-- 	<div id="myMaterialsContent">
		
	</div>
 -->

	<script type="text/javascript" src="/resources/js/teachersCabinet.js"></script>
	<script type="text/javascript" src="/resources/js/search.js"></script>
</body>
</html>