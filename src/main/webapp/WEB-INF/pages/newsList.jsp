<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
  <!-- Site made with Mobirise Website Builder v4.6.3, https://mobirise.com -->
  <meta charset="UTF-8">
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
                    <a class="navbar-caption text-white display-4" href="index.html">
                        NEWS
                    </a>
                </span>
            </div>
        </div>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav nav-dropdown nav-right" data-app-modern-menu="true">
                <li class="nav-item">
                    <a class="nav-link link text-white display-4" href="index.html">
                        <span class="mbri-home mbr-iconfont mbr-iconfont-btn"></span>
                        Home
                    </a>
                </li>
				<li class="nav-item">
                    <a class="nav-link link text-white display-4" href="newsList.html">
                        <span class="mbri-contact-form mbr-iconfont mbr-iconfont-btn"></span>
                        新聞列表
                    </a>
                </li>
				
                <li class="nav-item">
                    <a class="nav-link link text-white display-4" href="">
                        <span class="mbri-logout mbr-iconfont mbr-iconfont-btn"></span>
                        Logout
                    </a>
                </li>
            </ul>
            
        </div>
    </nav>
</section>

<section class="section-table cid-qHNUvBxfnc" id="table1-r">

  <div class="container container-table">
      <h2 class="mbr-section-title mbr-fonts-style align-center pb-3 display-2">
          新聞列表</h2>
      <small>(單位：人數)</small>
      <div class="table-wrapper">
        <div class="container">
          
        </div>

        <div class="container scroll">
          <table class="table" cellspacing="0">
            <thead>
              <tr class="table-heads ">
              	 <th class="head-item mbr-fonts-style display-7">文章標題</th>
				  <th class="head-item mbr-fonts-style display-7">判斷人數</th>
				  <th class="head-item mbr-fonts-style display-7">好</th>
				  <th class="head-item mbr-fonts-style display-7">壞</th>
				  <th class="head-item mbr-fonts-style display-7">不確定</th>
				</tr>
            </thead>

            <tbody>
            	<c:forEach items="${allpostbackinfo}" var="q">
					<tr> 
						<td class="body-item mbr-fonts-style display-7" ><a href = "/backstage?nid=${q.id}">${q.title}</a></td>
						<td class="body-item mbr-fonts-style display-7">${q.totalcount}</td>
						<td class="body-item mbr-fonts-style display-7">${q.gcount}</td>
						<td class="body-item mbr-fonts-style display-7">${q.bcount}</td>
						<td class="body-item mbr-fonts-style display-7">${q.idkcount}</td>
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