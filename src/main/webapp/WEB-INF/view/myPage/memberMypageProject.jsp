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
		.RequestListSubject > div > span:nth-child(1){
			margin-right:30px;
		}
		.RequestListSubject > div > span:nth-child(2){
			margin-left:30px;
		}
		.RequestListSubject >div{
			text-align:center;
			margin-bottom:20px;
			font-size:30px;
		}
		
		.RequestListD >div{
			height:180px;
			padding:0;
		}
		.RequestListD >div > div{
			border-bottom:1px solid;
			text-align:center;
			
			padding:10 0;
		}
		.RequestListD >div > div> div{
    		padding:0;
    	}
    	#pageNation > div >div{
    		width:3%;
    		height:3%;
    		text-align:center;
    		line-height:2;
    	}
    	#pageNation > div{
    		margin-top:30px;
    		text-align:center;
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
	              <li><a class="" href="/final/myPage/memberMypage.do">마이페이지(일반)</a></li> 
	              <li><a class="" href="/final/myPage/memberMypageInfomodify.do">내 정보 수정(일반)</a></li>
	              <li><a class="" href="/final/myPage/memberMypageRequest.do">의뢰(일반)</a></li>
	              <li><a class="active" href="/final/myPage/memberMypageProject.do">프로젝트(일반)</a></li>
	              <li><a class="" href="/final/myPage/memberMypageSelectList.do">찜 목록(일반)</a></li>
	              <li><a class="" href="/final/myPage/memberMypagePay.do">결제내역(일반)</a></li>
	            </ul>
	           </div>
	    	</div>
		</div>
		<div class="col-xs-12" style="height:100%;">
			 <div class="col-xs-4" >
			 	<div style="box-shadow:0px 0px 10px 1px rgba(200,50,50,1);margin-top:130px; border-radius:25px;">
				 	<div class="myPageMain">요청중 프로젝트</div>
				 	<div class="myPageMain">1</div>	
			 	</div>
			 </div>
			 <div class="col-xs-4"> 
			 	<div style="box-shadow:0px 0px 10px 1px rgba(50,50,180,1);margin-top:130px; border-radius:25px;">
			 		<div class="myPageMain">진행중 프로젝트</div>
			 		<div class="myPageMain">1</div>
			 	</div>
			 </div>
			 <div class="col-xs-4">
			 	<div style="box-shadow:0px 0px 10px 1px rgba(50,100,50,1);margin-top:130px; border-radius:25px;">
				 	<div class="myPageMain">완료된 프로젝트</div>
				 	<div class="myPageMain">0</div>
			 	</div>
			 </div>
			 
			 <div class="col-xs-12 RequestListSubject"> 
				<div style="margin-top:100px;">
					<span class="ti-angle-left" ></span>
					진행중 프로젝트
					<span class="ti-angle-right"></span>
				</div>
			</div>
			<div class="col-xs-12 RequestListD">
				<div>
					<div class="col-xs-12" style="font-size:25px;border-top:1px solid;"> 
						<div class="col-xs-1">번호</div>
						<div class="col-xs-5">분야</div>
						<div class="col-xs-3">날짜</div>
						<div class="col-xs-2">금액</div>
						<div class="col-xs-1">구분</div>
					</div>
					
					<div class="col-xs-12"> 
						<div class="col-xs-1">1</div>
						<div class="col-xs-5">헤어 , 패션 , 성형 </div>
						<div class="col-xs-3">2018-04-03</div>
						<div class="col-xs-2">미정</div>
						<div class="col-xs-1">요청</div>
					</div>
				</div>
			</div>
			 
			
			<!-- 프로젝트 리스트 -->
			<div class="col-xs-12 RequestListSubject"> 
				<div >
					<span class="ti-angle-left" ></span>
					완료된 프로젝트
					<span class="ti-angle-right"></span>
				</div>
			</div>
			<div class="col-xs-12 RequestListD">
				<div>
					<div class="col-xs-12" style="font-size:25px;border-top:1px solid;"> 
						<div class="col-xs-1">번호</div>
						<div class="col-xs-5">분야</div>
						<div class="col-xs-3">날짜</div>
						<div class="col-xs-2">금액</div>
						<div class="col-xs-1">구분</div>
					</div>
					
					<div class="col-xs-12"> 
						<div class="col-xs-1">1</div>
						<div class="col-xs-5">헤어 , 패션 , 성형 , 헬스</div>
						<div class="col-xs-3">2018-04-03</div>
						<div class="col-xs-2">700,000</div>
						<div class="col-xs-1">완료</div>
					</div>
					<div class="col-xs-12"> 
						<div class="col-xs-1">1</div>
						<div class="col-xs-5">헤어 , 패션</div>
						<div class="col-xs-3">2018-04-03</div>
						<div class="col-xs-2">1,100,000</div>
						<div class="col-xs-1">완료</div>
					</div>
					
					<div class="col-xs-12"> 
						<div class="col-xs-1">1</div>
						<div class="col-xs-5">헤어 , 성형</div>
						<div class="col-xs-3">2018-04-03</div>
						<div class="col-xs-2">300,000</div>
						<div class="col-xs-1">완료</div>
					</div>
					<div class="col-xs-12"> 
						<div class="col-xs-1">1</div>
						<div class="col-xs-5">헤어 , 패션</div>
						<div class="col-xs-3">2018-04-03</div>
						<div class="col-xs-2">12,350,000</div>
						<div class="col-xs-1">완료</div>
					</div>
					<div class="col-xs-12"> 
						<div class="col-xs-1">1</div>
						<div class="col-xs-5">제목이 없나?</div>
						<div class="col-xs-3">2018-04-03</div>
						<div class="col-xs-2">500,000</div>
						<div class="col-xs-1">완료</div>
					</div>
					
				</div>
			</div>
			<div class="col-xs-12" id="pageNation">
				<div>
					<span class="ti-control-backward btn" style="border:0;background:white;color:black;font-size:30px;"></span>
					<input type="button" class="btn-default" value="1">
					<input type="button" class="btn-default" value="2">
					<input type="button" class="btn-default" value="3">
					<input type="button" class="btn-default" value="4">
					<input type="button" class="btn-default" value="5">
					<span class="ti-control-forward btn" style="border:0;background:white;color:black;font-size:30px;"></span>
				</div>
			</div>
		</div>
	</div>
  </body>
</html>
