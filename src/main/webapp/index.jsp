<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    //function showTxt(fileName){
        $("#content").load("/resources/txt/"+'<c:forEach items="${newsinfo}" var="q">${q.news_content}</c:forEach>');
    //}
	//showTxt("txt/20180123-1.txt")/stocknews/
});
</script>
  <!-- Site made with Mobirise Website Builder v4.6.3, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v4.6.3, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="#" type="image/x-icon">
  <meta name="description" content="">
  <title>Home</title>
  <link rel="stylesheet" href="/resources/css/assets/web/assets/mobirise-icons/mobirise-icons.css">
  <link rel="stylesheet" href="/resources/css/assets/tether/tether.min.css">
  <link rel="stylesheet" href="/resources/css/assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="/resources/css/assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="/resources/css/assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="/resources/css/assets/dropdown/css/style.css">
  <link rel="stylesheet" href="/resources/css/assets/animatecss/animate.min.css">
  <link rel="stylesheet" href="/resources/css/assets/theme/css/style.css">
  <link rel="stylesheet" href="/resources/css/assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
</head>
<body>
  <section class="menu cid-qHNmRD3Zls" once="menu" id="menu1-e">

    

    <nav class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-toggleable-sm bg-color transparent">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <div class="hamburger">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
        </button>
        <div class="menu-logo">
            <div class="navbar-brand">
                
                <span class="navbar-caption-wrap"><a class="navbar-caption text-white display-4" href="/">
                        NEWS
                    </a></span>
            </div>
        </div>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <sec:authorize access="hasRole('ROLE_USER') or hasRole('ROLE_ADMIN')">
            	<ul class="navbar-nav nav-dropdown nav-right" data-app-modern-menu="true">
                	<li class="nav-item">
                		<c:url value="/j_spring_security_logout" var="logoutUrl" />
                		<form action="${logoutUrl}" method="post" id="logoutForm">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						</form>
						<script>
							function formSubmit() {
								document.getElementById("logoutForm").submit();
							}
						</script>
                    	<a class="nav-link link text-white display-4" href="javascript:formSubmit()">
                        <span class="mbri-logout mbr-iconfont mbr-iconfont-btn"></span>
                        	登出
                    	</a>
                	</li>
            	</ul>
            </sec:authorize>
            <sec:authorize access="hasRole('ROLE_ADMIN')">
            	<ul class="navbar-nav nav-dropdown nav-right" data-app-modern-menu="true">
                	<li class="nav-item">
                    	<a class="nav-link link text-white display-4" href="/newslist">
                        <span class="mbri-logout mbr-iconfont mbr-iconfont-btn"></span>
                       	 後台
                    	</a>
                	</li>
            	</ul>
            </sec:authorize>
            <sec:authorize access="!hasRole('ROLE_USER') and !hasRole('ROLE_ADMIN')">
            	<div class="navbar-buttons mbr-section-btn">
            		<a class="btn btn-sm btn-primary display-4" href="/login">
            			<span class="mbri-login mbr-iconfont mbr-iconfont-btn "></span>
                    	登入
            		</a>
            	</div>
            </sec:authorize>
            
        </div>
		
    </nav>
</section>

<section class="engine"><a href="https://mobirise.ws/m">drag and drop web builder</a></section><section class="cid-qHNs2ZRU4F mbr-fullscreen" id="header15-h">
    <div class="container align-right">
<div class="row" style="margin-top: 50px">
    <div class="mbr-white col-lg-8 col-md-7 content-container">
    <c:forEach items="${newsinfo}" var="q">
    	<h2 align="left" class="mbr-section-title mbr-bold pb-3 mbr-fonts-style display-1">${q.news_title}</h2>
    </c:forEach>       
        <c:forEach items="${newsinfo}" var="q">
        	<h5 class="mbr-fonts-style display-6">${q.news_time}</h5>       	
        </c:forEach>		
        <p class="mbr-text pb-3 mbr-fonts-style display-5" align="left" id="content">
          </p>
    </div>
    <div class="col-lg-4 col-md-5">
    <div class="form-container">
        <div class="media-container-column" data-form-type="formoid">
            <form name='insertForm' class="mbr-form" action="addpostpack" method="post">
            <c:forEach items="${stoklist}" var="q">
				<div>
					<div class="mbr-black col-lg-8 col-md-7">
						<p class="mbr-text display-5">
							${q.target}
						</p>
					</div>
					<span class="input-group-btn modal-dialog-centered">
						<button name="postback" type="submit" class="btn btn-primary display-4" value = "1">好</button>
            			<button name="postback" type="submit" class="btn btn-info display-4" value = "2">不確定</button>
            			<button name="postback" type="submit" class="btn btn-secondary display-4" value = "0">壞</button>
            			<button name="postback" type="submit" class="btn btn-success display-4" value = "3">沒有這張股票</button>
					</span>
					<div class="form-group" data-for="message">
						<textarea type="text" class="form-control px-3" name="message" rows="1" placeholder="原因(必填)" data-form-field="Message" id="message-header15-h"></textarea>
						<input type="hidden" name="newsid" value="${q.news_id}">
						<input type="hidden" name="tid" value="${q.tid}">
					</div>
				</div>
			</c:forEach>
				<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
            </form>
        </div>
    </div>
    </div>
</div>
    </div>
    
</section>

<section once="" class="cid-qHNybHi32c mbr-reveal" id="footer6-i">
    <div class="container">
        <div class="media-container-row align-center mbr-white">
            <div class="col-12">
                <p class="mbr-text mb-0 mbr-fonts-style display-7">
                    © Copyright 2017 Mobirise - All Rights Reserved
                </p>
            </div>
        </div>
    </div>
</section>
  <script src="/resources/css/assets/web/assets/jquery/jquery.min.js"></script>
  <script src="/resources/css/assets/popper/popper.min.js"></script>
  <script src="/resources/css/assets/tether/tether.min.js"></script>
  <script src="/resources/css/assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="/resources/css/assets/dropdown/js/script.min.js"></script>
  <script src="/resources/css/assets/touchswipe/jquery.touch-swipe.min.js"></script>
  <script src="/resources/css/assets/viewportchecker/jquery.viewportchecker.js"></script>
  <script src="/resources/css/assets/smoothscroll/smooth-scroll.js"></script>
  <script src="/resources/css/assets/theme/js/script.js"></script>
  
  
 <div id="scrollToTop" class="scrollToTop mbr-arrow-up"><a style="text-align: center;"><i></i></a></div>
    <input name="animation" type="hidden">
  </body>
</html>