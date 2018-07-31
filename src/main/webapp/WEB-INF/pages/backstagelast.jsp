<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
  <!-- Site made with Mobirise Website Builder v4.6.3, https://mobirise.com -->
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v4.6.3, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="#" type="image/x-icon">
  <meta name="description" content="Website Builder Description">
  <title>Backstage</title>
  <link rel="stylesheet" href="/resources/css/assets/web/assets/mobirise-icons/mobirise-icons.css">
  <link rel="stylesheet" href="/resources/css/assets/tether/tether.min.css">
  <link rel="stylesheet" href="/resources/css/assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="/resources/css/assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="/resources/css/assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="/resources/css/assets/animatecss/animate.min.css">
  <link rel="stylesheet" href="/resources/css/assets/datatables/data-tables.bootstrap4.min.css">
  <link rel="stylesheet" href="/resources/css/assets/dropdown/css/style.css">
  <link rel="stylesheet" href="/resources/css/assets/theme/css/style.css">
  <link rel="stylesheet" href="/resources/css/assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
</head>
<body>
  <section class="menu cid-qHNUmdaUIR" once="menu" id="menu1-q">

    

    <nav class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm">
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
                
                <span class="navbar-caption-wrap">
                    <a class="navbar-caption text-white display-4" href="/">
                        NEWS
                    </a>
                </span>
            </div>
        </div>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav nav-dropdown nav-right" data-app-modern-menu="true">
                <li class="nav-item">
                    <a class="nav-link link text-white display-4" href="/">
                        <span class="mbri-home mbr-iconfont mbr-iconfont-btn"></span>
                        	首頁
                    </a>
                </li>
				<li class="nav-item">
                    <a class="nav-link link text-white display-4" href="/newslist">
                        <span class="mbri-contact-form mbr-iconfont mbr-iconfont-btn"></span>
                        新聞列表
                    </a>
                </li>
                <li class="nav-item">
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
                </li>
            </ul>
            
        </div>
    </nav>
</section>

<section class="section-table cid-qHNUvBxfnc" id="table1-r">

  <div class="container container-table">
      <h2 class="mbr-section-title mbr-fonts-style align-center pb-3 display-2">
          Title</h2>
      
      <div class="table-wrapper">
        <div class="container">
          
        </div>

        <div class="container scroll">
          <table class="table" cellspacing="0">
            <thead>
              <tr class="table-heads ">
				 <th class="head-item mbr-fonts-style display-7">股票</th>
              	 <th class="head-item mbr-fonts-style display-7">帳號</th>
				  <th class="head-item mbr-fonts-style display-7">使用者判斷</th>
				  <th class="head-item mbr-fonts-style display-7">評論</th>
				  <th class="head-item mbr-fonts-style display-7">時間</th>
				</tr>
            </thead>

            <tbody>
            <c:forEach items="${newspostbackinfo}" var="q">
    			<tr> 
					<td class="body-item mbr-fonts-style display-7">${q.target}</td>
					<td class="body-item mbr-fonts-style display-7">${q.user}</td>
					<td class="body-item mbr-fonts-style display-7">${q.j_status}</td>
					<td class="body-item mbr-fonts-style display-7">${q.reason}</td>
					<td class="body-item mbr-fonts-style display-7">${q.time}</td>
				</tr>
    		</c:forEach>				
			</tbody>
          </table>
        </div>
        <div class="container table-info-container">
          
        </div>
      </div>
    </div>
</section>

<section once="" class="cid-qHNUCDm8JR mbr-reveal" id="footer6-t">
    <div class="container">
        <div class="media-container-row align-center mbr-white">
            <div class="col-12">
                <p class="mbr-text mb-0 mbr-fonts-style display-7">
                    © Copyright 2017 IDELab - Financial news mining
                </p>
            </div>
        </div>
    </div>
</section>


  <script src="/resources/css/assets/web/assets/jquery/jquery.min.js"></script>
  <script src="/resources/css/assets/popper/popper.min.js"></script>
  <script src="/resources/css/assets/tether/tether.min.js"></script>
  <script src="/resources/css/assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="/resources/css/assets/smoothscroll/smooth-scroll.js"></script>
  <script src="/resources/css/assets/touchswipe/jquery.touch-swipe.min.js"></script>
  <script src="/resources/css/assets/viewportchecker/jquery.viewportchecker.js"></script>
  <script src="/resources/css/assets/datatables/jquery.data-tables.min.js"></script>
  <script src="/resources/css/assets/datatables/data-tables.bootstrap4.min.js"></script>
  <script src="/resources/css/assets/dropdown/js/script.min.js"></script>
  <script src="/resources/css/assets/theme/js/script.js"></script>
  
  
 <div id="scrollToTop" class="scrollToTop mbr-arrow-up"><a style="text-align: center;"><i></i></a></div>
    <input name="animation" type="hidden">
  </body>
</html>