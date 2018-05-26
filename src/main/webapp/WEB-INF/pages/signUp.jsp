<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<%@ page language="java" import="java.sql.*" %>
<html >
<head>
  <!-- Site made with Mobirise Website Builder v4.6.3, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v4.6.3, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="#" type="image/x-icon">
  <meta name="description" content="Web Site Builder Description">
  <title>Sign Up</title>
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
  <section class="menu cid-qHOE80zHc8" once="menu" id="menu1-v">

    

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
                    
                </li>
                <li class="nav-item">
                    
                </li>
            </ul>
            
        </div>
    </nav>
</section>

<section class="cid-qHOEgoRG5Y mbr-fullscreen" id="header15-w">

    <div class="container align-right">
<div class="row">
    <div class="mbr-white col-lg-12 col-md-6">
    <div class="form-container">
		<h1> 註冊 </h1>
        <div class="media-container-column" data-form-type="formoid">
            
            <form class="mbr-form" name='insertForm' action="insertpage" method="post">
                <div data-for="name">
                    <div class="form-group">
                        <input type="text" class="form-control px-3" name="account" data-form-field="Name" placeholder="Account" required="" id="">
                    </div>
                </div>
				<div data-for="passwd">
                    <div class="form-group">
                        <input type="password" class="form-control px-3" name="password" data-form-field="password" placeholder="Password" id="">
                    </div>
                </div>
                <div data-for="email">
                    <div class="form-group">
                        <input type="email" class="form-control px-3" name="email" data-form-field="Email" placeholder="Email" required="" id="">
                    </div>
                </div>
                 <div data-for="class">
                    <div class="form-group">
                        <input type="text" class="form-control px-3" name="class" data-form-field="class" placeholder="class" required="" id="">
                    </div>
                </div>
                 <div data-for="num">
                    <div class="form-group">
                        <input type="number" class="form-control px-3" name="num" data-form-field="num" placeholder="num" required="" id="">
                    </div>
                </div>

                <span class="input-group-btn">
                    <button href="" type="submit" value="submit" class="btn btn-primary btn-form display-4">SIGN UP</button>
                </span>
                <input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
            </form>
        </div>
    </div>
    </div>
    
    </div>
</div>
    
</section>

<section once="" class="cid-qHOEj6NwCo mbr-reveal" id="footer6-x">

    

    

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