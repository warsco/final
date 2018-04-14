<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        <!-- User account and action buttons -->
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
