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
	              <li><a class="" href="/final/myPage/memberMypageInfomodify.do">내 정보 수정(일반)</a></li>
	              <li><a class="" href="/final/myPage/memberMypageRequest.do">의뢰(일반)</a></li>
	              <li><a class="" href="/final/myPage/memberMypageProject.do">프로젝트(일반)</a></li>
	              <li><a class="" href="/final/myPage/memberMypageSelectList.do">찜 목록(일반)</a></li>
	              <li><a class="active" href="/final/myPage/memberMypagePay.do">결제내역(일반)</a></li>
	            </ul>
	           </div>
	    	</div>
		</div>
		
		<div class="col-xs-12" style="height:100%;">
			 <div class="col-xs-4" >
			 	<div style="border:1px solid;margin-top:130px; border-radius:25px;">
				 	<div class="myPageMain">요청중 의뢰</div>
				 	<div class="myPageMain">1</div>	
			 	</div>
			 </div>
			 <div class="col-xs-4"> 
			 	<div style="border:1px solid;margin-top:130px; border-radius:25px;">
			 		<div class="myPageMain">진행중 의뢰</div>
			 		<div class="myPageMain">1</div>
			 	</div>
			 </div>
			 <div class="col-xs-4">
			 	<div style="border:1px solid;margin-top:130px; border-radius:25px;">
				 	<div class="myPageMain">완료된 의뢰</div>
				 	<div class="myPageMain">0</div>
			 	</div>
			 </div>
			
			<!-- 의뢰 요청 리스트 -->
			<div class="col-xs-12 RequestListSubject"> 
				<div>
					<span class="ti-arrow-left" ></span>
					전체
					<span class="ti-arrow-right"></span>
				</div>
			</div>
			<div class="col-xs-12 RequestListD">
				
			</div>
		</div>
	</div>
  </body>
</html>
