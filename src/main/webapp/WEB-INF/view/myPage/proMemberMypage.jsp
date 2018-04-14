<%@ page contentType="text/html; charset=UTF-8"%>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="theshots is a directory listing template.">
    <meta name="keywords" content="">

<script>
	$(function(){
		("#aaa").click(function(){
			alert("sadas")
		}) 
	})
</script>

    <style>
    	.graphValue{
    		position:relative;
    		height:100%;
    		box-shadow:0px 0px 2px 2px rgba(50,50,50,0.15);
    	}
    	.graphValue >div{
    		position:absolute;
    	}
    
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
    	.graph>div>div{
    		padding:20px;
    		position:relative;
    		height:95%;
    		margin-top:20px;
    		line-height:1.2;
    	}
    	.graph>div>div>div{
    		position:absolute;
    		background-color:aliceblue;
    		bottom:0;
    		width:20px;
    		box-shadow:0px 0px 2px 3px rgba(50,50,50,0.15);
    	}
    	.graphDay>div div{
    		text-align:center;
    	}
    	
    	.myPageMain{
    		text-align:center;
    		font-size:30px;
    	}
    </style>
  </head>
  <body>
	<!-- 마이페이지 -->
	<div class="container" > 
		<div class="page-links">
	        <div class="container">
	           <div class="pull-left">
	            <ul class="link-list"> 
	              <li><a class="" href="/final/myPage/memberMypage.do">마이페이지(일반)</a></li>
	              <li><a class="active" href="/final/myPage/proMemberMypage.do">마이페이지(전문가)</a></li>  
	              <li><a class="" href="/final/myPage/proMypageInfomodify.do">내 정보 수정(전문가)</a></li>
	              <li><a class="" href="/final/myPage/proMypageRequest.do">의뢰(전문가)</a></li>
	              <li><a class="" href="/final/myPage/proMypageProject.do">프로젝트(전문가)</a></li>
	              <li><a class="" href="/final/myPage/proMypagePortfolio.do">포트폴리오(전문가)</a></li>
	              <li><a class="" href="/final/myPage/proMypageIncome.do">수익내역(전문가)</a></li>
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
			 	<div style="height:200px; box-shadow:0px 0px 2px 2px rgba(50,50,50,0.15);"></div>
			 </div>
			 
			 <div class="col-xs-12" style="height:400px;">
			 	<div class="col-xs-12" style="font-size:30px;margin-top:30px;margin-bottom:30px;" >수입</div>
			 	
			 	<div class="col-xs-1 graphValue">
			 			<div style="bottom:93%">100%</div> 
				 		<div style="bottom:70%">75%</div>
				 		<div style="bottom:45%">50%</div>
				 		<div style="bottom:20%">25%</div>
			 	</div>
			 	<div class="col-xs-11 graph" style="height:100%;box-shadow:0px 0px 2px 2px rgba(50,50,50,0.15); padding:0;">
			 		<div style="height:100%;">
				 		<div class="col-xs-1"><div style="height:25%;width:50%;"></div></div>
				 		<div class="col-xs-1"><div style="height:50%;width:50%;"></div></div>
				 		<div class="col-xs-1"><div style="height:75%;width:50%;"></div></div>
				 		<div class="col-xs-1"><div style="height:100%;width:50%;"></div></div>
				 		<div class="col-xs-1"><div style="height:50%;width:50%;"></div></div> 
				 		<div class="col-xs-1"><div style="height:60%;width:50%;"></div></div>
				 		<div class="col-xs-1"><div style="height:70%;width:50%;"></div></div>
				 		<div class="col-xs-1"><div style="height:80%;width:50%;"></div></div>
				 		<div class="col-xs-1"><div style="height:90%;width:50%;"></div></div>
				 		<div class="col-xs-1"><div style="height:100%;width:50%;"></div></div>
				 		<div class="col-xs-1"><div style="height:20%;width:50%;"></div></div>
				 		<div class="col-xs-1"><div style="height:20%;width:50%;"></div></div>
			 		</div>
			 	</div>
			 	<div class="col-xs-12 graphDay" style="box-shadow:0px 0px 2px 2px rgba(50,50,50,0.15);padding:0;">
			 		<div class="col-xs-1"></div>
				 	<div class="col-xs-11" style="font-size:12px;height:40px;line-height:2.5;padding:0;">
				 		<div class="col-xs-1" style="height:100%;line-height:3.3;">1월</div>
				 		<div class="col-xs-1" style="height:100%;line-height:3.3;">2월</div>
				 		<div class="col-xs-1" style="height:100%;line-height:3.3;">3월</div>
				 		<div class="col-xs-1" style="height:100%;line-height:3.3;">4월</div>
				 		<div class="col-xs-1" style="height:100%;line-height:3.3;">5월</div>
				 		<div class="col-xs-1" style="height:100%;line-height:3.3;">6월</div>
				 		<div class="col-xs-1" style="height:100%;line-height:3.3;">7월</div>
				 		<div class="col-xs-1" style="height:100%;line-height:3.3;">8월</div>
				 		<div class="col-xs-1" style="height:100%;line-height:3.3;">9월</div>
				 		<div class="col-xs-1" style="height:100%;line-height:3.3;">10월</div>
				 		<div class="col-xs-1" style="height:100%;line-height:3.3;">11월</div>
				 		<div class="col-xs-1" style="height:100%;line-height:3.3;">12월</div>
				 	</div>
				 </div>
			 </div>
			
		</div>
	</div>

  </body>
</html>
