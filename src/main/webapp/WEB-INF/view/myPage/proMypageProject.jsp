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
			margin-top:100px;
			font-size:30px;
		}
		
		.RequestListD >div{
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
	              <li><a class="" href="/final/myPage/proMemberMypage.do">마이페이지(전문가)</a></li>  
	              <li><a class="" href="/final/myPage/proMypageInfomodify.do">내 정보 수정(전문가)</a></li>
	              <li><a class="" href="/final/myPage/proMypageRequest.do">의뢰(전문가)</a></li>
	              <li><a class="active" href="/final/myPage/proMypageProject.do">프로젝트(전문가)</a></li>
	              <li><a class="" href="/final/myPage/proMypagePortfolio.do">포트폴리오(전문가)</a></li>
	              <li><a class="" href="/final/myPage/proMypageIncome.do">수익내역(전문가)</a></li>
	            </ul>
	           </div>
	    	</div>
		</div>
		<div class="col-xs-12" style="height:85%;">
			 <div class="col-xs-4" style="height:27%;padding-top:12%;">
			 	<div style="box-shadow:0px 0px 10px 1px rgba(200,50,50,1); border-radius:25px;">
				 	<div class="myPageMain">요청중 프로젝트</div>
				 	<div class="myPageMain">1</div>	
			 	</div>
			 </div>
			 <div class="col-xs-4" style="height:27%;padding-top:12%;"> 
			 	<div style="box-shadow:0px 0px 10px 1px rgba(50,50,180,1);border-radius:25px;">
			 		<div class="myPageMain">진행중 프로젝트</div>
			 		<div class="myPageMain">1</div>
			 	</div>
			 </div>
			 <div class="col-xs-4" style="height:27%;padding-top:12%;">
			 	<div style="box-shadow:0px 0px 10px 1px rgba(50,100,50,1); border-radius:25px;">
				 	<div class="myPageMain">완료된 프로젝트</div>
				 	<div class="myPageMain">0</div>
			 	</div>
			 </div>
	
			<!-- 의뢰 요청 리스트 -->
			<div class="col-xs-12 RequestListSubject" style="height:22%;"> 
				<div>
					<span class="ti-arrow-left btn" style="border:0;background:white;color:black;font-size:25px;" ></span>
					전체
					<span class="ti-arrow-right btn" style="border:0;background:white;color:black;font-size:25px;"></span>
				</div>
			</div>
			<div class="col-xs-12 RequestListD" style="height:35%;">
				<div>
					<div class="col-xs-12" style="font-size:25px;border-top:1px solid;"> 
						<div class="col-xs-1">번호</div>
						<div class="col-xs-2">분야</div>
						<div class="col-xs-3">의뢰인</div>
						<div class="col-xs-3">날짜</div>
						<div class="col-xs-2">금액</div>
						<div class="col-xs-1">구분</div>
					</div>
					
					<div class="col-xs-12"> 
						<div class="col-xs-1">1</div>
						<div class="col-xs-2">헤어</div>
						<div class="col-xs-3">한지수헤어디자이너</div>
						<div class="col-xs-3">2018-04-03</div>
						<div class="col-xs-2">미정</div>
						<div class="col-xs-1">요청</div>
					</div>
					<div class="col-xs-12"> 
						<div class="col-xs-1">1</div>
						<div class="col-xs-2">헤어</div>
						<div class="col-xs-3">한지수헤어디자이너</div>
						<div class="col-xs-3">2018-04-03</div>
						<div class="col-xs-2">미정</div>
						<div class="col-xs-1">완료</div>
					</div>
					<div class="col-xs-12"> 
						<div class="col-xs-1">1</div>
						<div class="col-xs-2">헤어</div>
						<div class="col-xs-3">한지수헤어디자이너</div>
						<div class="col-xs-3">2018-04-03</div>
						<div class="col-xs-2">미정</div>
						<div class="col-xs-1">진행</div>
					</div>
					<div class="col-xs-12"> 
						<div class="col-xs-1">1</div>
						<div class="col-xs-2">헤어</div>
						<div class="col-xs-3">한지수헤어디자이너</div>
						<div class="col-xs-3">2018-04-03</div>
						<div class="col-xs-2">미정</div>
						<div class="col-xs-1">취소</div>
					</div>
					<div class="col-xs-12"> 
						<div class="col-xs-1">1</div>
						<div class="col-xs-2">헤어</div>
						<div class="col-xs-3">한지수헤어디자이너</div>
						<div class="col-xs-3">2018-04-03</div>
						<div class="col-xs-2">미정</div>
						<div class="col-xs-1">요청</div>
					</div>
				</div>
			</div>
			<div class="col-xs-12" id="pageNation" style="height:16%;">
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
