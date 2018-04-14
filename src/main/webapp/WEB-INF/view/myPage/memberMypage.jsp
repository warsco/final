<%@ page contentType="text/html; charset=UTF-8"%>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="theshots is a directory listing template.">
    <meta name="keywords" content="">

    
    <style>
    	.side_list{
    	margin-bottom:5px;
    	}
    	.side_list > .btn{
    		font-size:20px;
    		background-color:white;
    		border:0;
    		width:100%;
    		color:black;
    	}
    	.myPageMain{
    		text-align:center;
    		font-size:30px;
    	}
    </style>
  </head>

  <body >
	<!-- 마이페이지 -->
	<div class="container">
		<div class="page-links">
	        <div class="container">
	           <div class="pull-left">
	            <ul class="link-list"> 
	              <li><a class="active" href="/final/myPage/memberMypage.do">마이페이지(일반)</a></li>
	              <li><a class="" href="/final/myPage/proMemberMypage.do">마이페이지(전문가)</a></li>  
	              <li><a class="" href="/final/myPage/memberMypageInfomodify.do">내 정보 수정(일반)</a></li>
	              <li><a class="" href="/final/myPage/memberMypageRequest.do">의뢰(일반)</a></li>
	              <li><a class="" href="/final/myPage/memberMypageProject.do">프로젝트(일반)</a></li>
	              <li><a class="" href="/final/myPage/memberMypageSelectList.do">찜 목록(일반)</a></li>
	              <li><a class="" href="/final/myPage/memberMypagePay.do">결제내역(일반)</a></li>
	            </ul>
	           </div>
	    	</div>
		</div>
	
		<div class="col-xs-12" style="height:100%;">
		  
		 <div class="col-xs-6" style="margin-top:30px;height:300px;">
		 	<div class="myPageMain">프로젝트</div>
		 	<div class="myPageMain">0</div>
		 	<div style="height:200px;box-shadow:0px 0px 2px 2px rgba(50,50,50,0.15);"></div>
		 </div>
		 <div class="col-xs-6" style="margin-top:30px;height:300px;">
		 	<div class="myPageMain">일대일 의뢰</div>
		 	<div class="myPageMain">0</div>
		 	<div style="height:200px;box-shadow:0px 0px 2px 2px rgba(50,50,50,0.15);"></div>
		 </div>
		 <div class="col-xs-12" style="margin-top:50px;box-shadow:0px 0px 2px 2px rgba(50,50,50,0.15);height:100px;"> 관심사항</div>
		 <div class="col-xs-12" style="margin-top:50px;height:250px;"> 
		 	<div style="font-size:30px;">찜 목록</div>
		 	<!-- 찜목록 리스트 시작 -->
			 <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
	            <div class="shot shot-small">
	              <div class="shot-preview">
	                <a class="img" href="shot-gallery.html"><img src="/final/assets/img/shot-3.jpg" alt=""></a>
	                <span class="like liked"></span>
	              </div>
	              <div class="shot-info">
	                <a href="user-profile.html"><img src="/final/assets/img/avatar-1.jpg" alt="avatar"></a>
	                <h6><a href="shot-gallery.html">Donec vulputate justo</a></h6>
	                <p><time datetime="2016-02-04 22:30">20 mins ago</time> in <a href="page-search.html">Website</a></p>
	              </div>
	            </div>
	         </div>
	         <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
	            <div class="shot shot-small">
	              <div class="shot-preview">
	                <a class="img" href="shot-gallery.html"><img src="/final/assets/img/shot-3.jpg" alt=""></a>
	                <span class="like liked"></span>
	              </div>
	              <div class="shot-info">
	                <a href="user-profile.html"><img src="/final/assets/img/avatar-1.jpg" alt="avatar"></a>
	                <h6><a href="shot-gallery.html">Donec vulputate justo</a></h6>
	                <p><time datetime="2016-02-04 22:30">20 mins ago</time> in <a href="page-search.html">Website</a></p>
	              </div>
	            </div>
	         </div> 
	         <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
	            <div class="shot shot-small">
	              <div class="shot-preview">
	                <a class="img" href="shot-gallery.html"><img src="/final/assets/img/shot-3.jpg" alt=""></a>
	                <span class="like liked"></span>
	              </div>
	              <div class="shot-info">
	                <a href="user-profile.html"><img src="/final/assets/img/avatar-1.jpg" alt="avatar"></a>
	                <h6><a href="shot-gallery.html">Donec vulputate justo</a></h6>
	                <p><time datetime="2016-02-04 22:30">20 mins ago</time> in <a href="page-search.html">Website</a></p>
	              </div>
	            </div>
	         </div> 
	         <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
	            <div class="shot shot-small">
	              <div class="shot-preview">
	                <a class="img" href="shot-gallery.html"><img src="/final/assets/img/shot-3.jpg" alt=""></a>
	                <span class="like liked"></span>
	              </div>
	              <div class="shot-info">
	                <a href="user-profile.html"><img src="/final/assets/img/avatar-1.jpg" alt="avatar"></a>
	                <h6><a href="shot-gallery.html">Donec vulputate justo</a></h6>
	                <p><time datetime="2016-02-04 22:30">20 mins ago</time> in <a href="page-search.html">Website</a></p>
	              </div>
	            </div>  
	         </div> 
	         <!-- 찜목록리스트 끝 --> 
		 </div>
		</div>
	</div>


  </body>
</html>
