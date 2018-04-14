<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
  <!-- User account and action buttons -->
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="theshots is a directory listing template.">
    <meta name="keywords" content="tabs, inspiration, web design, css, modern, effects, svg" />
    <meta name="author" content="Codrops" />
		  
    <title>TheShots</title>
      <!-- Styles -->
<!--     <link href="/final/assets/css/app.min.css" rel="stylesheet">
    <link href="/final/assets/css/theshots.css" rel="stylesheet">
    <link href="/final/assets/css/custom.css" rel="stylesheet">
   -->
    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Raleway:100,300,400,500,600,800%7COpen+Sans:300,400,500,600,700,800%7CMontserrat:400,700' rel='stylesheet' type='text/css'>

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="/apple-touch-icon.png">
    <link rel="icon" href="/final/resources/src/assets/img/favicon.ico">
    
	<!-- 모달창  -->     
	<link rel="shortcut icon" href="../favicon.ico">
	<link rel="stylesheet" type="text/css" href="/final/resources/src/TabStylesInspiration/css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="/final/resources/src/TabStylesInspiration/css/demo.css" />
	<link rel="stylesheet" type="text/css" href="/final/resources/src/TabStylesInspiration/css/tabs.css" />
	<link rel="stylesheet" type="text/css" href="/final/resources/src/TabStylesInspiration/css/tabstyles.css" />
	

<script src="https://code.jquery.com/jquery-3.2.1.min.js" ></script>

 
<script type="text/javascript">
	$(function(){
		$("#clo").click(function(){
			$("#choo").css('margin-left','10000px');
			$("#cho2").css('display','block');
		});
		$("#cho2").click(function(){
			$("#choo").css('margin-left','0px');
			$("#cho2").css('display','none');
		});
	});
</script>

	
    
  </head>  
<body class="sticky-nav">

    <!-- Navigation bar -->
    <nav class="navbar">
      <div class="container">

        <!-- Logo and navigation links -->
         <div class="pull-left">
          <a class="navbar-toggle" href="#" data-toggle="offcanvas"><i class="ti-menu"></i></a>

          <div class="logo">
            <a href="index.html" style="font-size:30px;">Link_6</a>
          </div>

          <ul class="nav-menu">
            <li>
              <a class ="active" href="/final/tiles/image/list.do">홈</a>
            </li>
            <li>
              <a href="#">소개</a>
              <ul>
                <li><a href="explore-style1.html">Style 1</a></li>
                <li><a href="explore-style2.html">Style 2</a></li>
                <li><a href="explore-style3-cols4.html">Style 3 - Cols 4</a></li>
                <li><a href="explore-style3-cols3.html">Style 3 - Cols 3</a></li>
                <li><a href="explore-style3-cols2.html">Style 3 - Cols 2</a></li>
              </ul>
            </li>
            <li>
              <a href="#">공지사항</a>
              <ul>
                <li><a href="shot-add.html">Add Shot</a></li>
                <li><a href="shot.html">Shot - Image</a></li>
                <li><a href="shot-gallery.html">Shot - Gallery</a></li>
                <li><a href="page-about.html">About</a></li>
                <li><a href="page-contact.html">Contact</a></li>
                <li><a href="page-faq.html">FAQ</a></li>
                <li><a href="page-search.html">Search</a></li>
                <li><a href="page-typography.html">Typography</a></li>
              </ul>
            </li>
            <li>
              <a href="#">홍보페이지</a>
              <ul>
                <li><a href="user-profile.html">Profile</a></li>
                <li><a href="user-followers.html">Followers - 1</a></li>
                <li><a href="user-followers-2.html">Followers - 2</a></li>
                <li><a href="setting-profile.html">Settings</a></li>
                <li><a href="user-login.html">Login</a></li>
                <li><a href="user-register.html">Register</a></li>
                <li><a href="user-forget-pass.html">Forget pass</a></li>
              </ul>
            </li>
             <li>
              <a href="#">프로젝트</a>
              <ul>
                <li><a href="/final/project/detailProject.do">프로젝트관리</a></li>
                <li><a href="/final/project/detailReservation.do">예약상세보기</a></li>
                <li><a href="/final/project/expertRegister.do">전문가 세부내용등록</a></li>
                <li><a href="/final/project/reservation.do">매장 예약</a></li>
                <li><a href="/final/project/selectClient.do">프로젝트참여신청</a></li>
                <li><a href="/final/project/selectExpert.do">프로젝트참여전문가선택</a></li>
              </ul>
            </li>
            <li>
            	<a href="/final/tiles/image/add.do">포트폴리오 작성</a>
            </li>
          </ul>
        </div>
        <!-- END Logo and navigation links -->
  <div class="pull-right" style="line-height:80px;">
          <a class="btn-navbar search-opener" href="#"><i class="ti-search"></i></a>
          <a class="btn-navbar" href="/final/tiles/image/add.do"><i class="ti-plus"></i></a>

          <div class="dropdown user-account" style="height:62px;">
            <a class="dropdown-toggle" href="#" data-toggle="dropdown">
              <img src="/final/image/baseImage.jpg" alt="avatar">
            </a>

            <ul class="dropdown-menu dropdown-menu-right">
              <li><a href="/final/myPage/memberMypage.do">마이페이지</a></li>
              <li><a href="/final/register/register.do">회원가입</a></li>
              <c:if test="${MemberSession ==null }">
	              <li><button type="button" data-toggle="modal" data-target="#myModal" style="border:0;background:white;">로그인</button></li>
              </c:if>
              <c:if test="${MemberSession !=null }">
              	 <li><button type="button" style="border:0;background:white;" onclick="document.location='/final/login/logout.do'">로그아웃</button></li>
              </c:if>
            </ul>
          </div>
        </div>
       	
        <!-- END User account and action buttons -->

        <!-- Search screen -->
        <div class="search-screen closed">
          <button class="search-closer"><i class="ti-close"></i></button>
          <form class="search-form" action="page-search.html">
            <input type="text" autocomplete="off" placeholder="Type to search...">
          </form>
        </div>
        <!-- END Search screen -->
      </div>
  </nav>
    <!-- END Navigation bar -->
    
    
    
<!-- detail modal -->

 <!-- Modal -->
  <div class="modal fade" id="detail">
      <!-- Modal content-->
 	<section style="width: 860px; margin: 0 auto; height: 100%;"> 
				<div class="tabs tabs-style-circle">
					<nav>
						<ul>
							<li class ="detail"><span  class="icon icon-plug"><span>hair</span></span></li>
							<li class ="detail"><span  class="icon icon-gift"><span>Molding</span></span></li>
							<li class ="detail"><span  class="icon icon-box"><span>sports</span></span></li>
							<li class ="detail"><span  class="icon icon-date"><span>Exercise</span></span></li>
							<li class ="detail"><span  class="icon icon-plane"><span>passion</span></span></li>
						</ul>
					</nav>
					<div class="content-wrap">
						<section id="section-circle-1">   
						   <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 category" id ="여자헤어" value ="여자헤어">
         				   <div class="shot shot-small">
                		   <div class="shot-preview">
                  			<a class="img" href="#"><img src="/MavenWeb/resources/src/assets/img/shot-3.jpg" alt=""></a>
                  			<div class ="detailSubject">여자헤어</div>
                		   </div>
           			       </div>
              			   </div>
						   <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 category"id ="여자헤어2" value ="여자헤어2">
         				   <div class="shot shot-small">
                		   <div class="shot-preview">
                  			<a class="img" href="#"><img src="/MavenWeb/resources/src/assets/img/shot-3.jpg" alt=""></a>
                  			<div class ="detailSubject">여자헤어2</div>
                		   </div>
           			       </div>
              			   </div>
						   <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 category" id ="여자헤어3" value ="여자헤어3">
         				   <div class="shot shot-small">
                		   <div class="shot-preview">
                  			<a class="img" href="#"><img src="/MavenWeb/resources/src/assets/img/shot-3.jpg" alt=""></a>
                  			<div class ="detailSubject">여자헤어3</div>
                		   </div>
           			       </div>
              			   </div>
						   <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 category" id ="여자헤어3" value ="여자헤어3">
         				   <div class="shot shot-small">
                		   <div class="shot-preview">
                  			<a class="img" href="#"><img src="/MavenWeb/resources/src/assets/img/shot-3.jpg" alt=""></a>
                  			<div class ="detailSubject">여자헤어3</div>
                		   </div>
           			       </div>
              			   </div>
           					 </section>
						<section id="section-circle-2" class ="detailcontents">
								   <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 category" id ="남자헤어" value ="남자헤어">
         				   <div class="shot shot-small">
                		   <div class="shot-preview">
                  			<a class="img" href="#"><img src="/MavenWeb/resources/src/assets/img/shot-3.jpg" alt=""></a>
                  			<div class ="detailSubject">남자헤어</div>
                		   </div>
           			       </div>
              			   </div>
              			   	   <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 category" id ="남자헤어1" value ="남자헤어1">
         				   <div class="shot shot-small">
                		   <div class="shot-preview">
                  			<a class="img" href="#"><img src="/MavenWeb/resources/src/assets/img/shot-3.jpg" alt=""></a>
                  			<div class ="detailSubject">남자헤어1</div>
                		   </div>
           			       </div>
              			   </div>
              			   	   <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 category" id ="남자헤어2" value ="남자헤어2">
         				   <div class="shot shot-small">
                		   <div class="shot-preview">
                  			<a class="img" href="#"><img src="/MavenWeb/resources/src/assets/img/shot-3.jpg" alt=""></a>
                  			<div class ="detailSubject">남자헤어2</div>
                		   </div>
           			       </div>
              			   </div>
						</section>
						<section id="section-circle-3" class ="detailcontents">
						<p>카테고리가 없습니다.</p>
						</section>
						<section id="section-circle-4" class ="detailcontents">
						<p>카테고리가 없습니다.</p>
						</section>
						<section id="section-circle-5" class ="detailcontents">
						<p>카테고리가 없습니다.</p>
						</section>
					</div>
					<!-- /content -->
				</div>
				<!-- /tabs -->
			<div id ="added"></div>
 				<button type="button" class="btn btn-default" data-dismiss="modal" style="position: absolute;right: 20px; bottom: 30px;">확인</button>
			</section>
      </div>




