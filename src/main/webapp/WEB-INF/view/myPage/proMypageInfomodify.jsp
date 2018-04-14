<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
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
    	.interestCheckbox > div > input{
    		display:none;
    	}
    	.interestCheckbox > div > label{
    		border:1px solid;
    		margin-top:10px;
    		margin-left:10px;
    		width:17%;
    		height:40px;
    	}
    	.interestCheckbox > div{
    		padding:0;
    	}
    	
    	.interestCheckbox2 > div > input{
    		display:none;
    	}

    	.interestCheckbox2 > div > label{
    		border:1px solid;
    		margin-top:10px;
    		margin-left:10px;
    		width:17%;
    		height:40px;
    		
    	}
    	.interestCheckbox2 > div{
    		padding:0;
    	}
    	body > div > div.col-xs-12 > div{
    		margin-bottom:2px;
    	}
    </style>
</head>
<body>
<!-- 마이페이지 -->
	<div class="container">
		<div class="page-links">
	        <div class="container">
	           <div class="pull-left">
	            <ul class="link-list"> 
	              <li><a class="" href="/final/myPage/memberMypage.do">마이페이지(일반)</a></li>
	              <li><a class="" href="/final/myPage/proMemberMypage.do">마이페이지(전문가)</a></li>  
	              <li><a class="active" href="/final/myPage/proMypageInfomodify.do">내 정보 수정(전문가)</a></li>
	              <li><a class="" href="/final/myPage/proMypageRequest.do">의뢰(전문가)</a></li>
	              <li><a class="" href="/final/myPage/proMypageProject.do">프로젝트(전문가)</a></li>
	              <li><a class="" href="/final/myPage/proMypagePortfolio.do">포트폴리오(전문가)</a></li>
	              <li><a class="" href="/final/myPage/proMypageIncome.do">수익내역(전문가)</a></li>
	            </ul>
	           </div>
	    	</div>
		</div>
		<div class="col-xs-12" style="height:85%;">
			<div style="font-size:30px;height:12%;padding:30px 0px 30px 30px;">내 정보 수정 
			</div>
			<div style=" box-shadow:0px 0px 1px 1px rgba(50,50,50,0.15); height:20%;"> 
				<div class="col-xs-4" style="background-color:#DFDFDF;height:100%;font-size:25px;text-align:center;line-height:6;">프로필 사진</div>
				<div class="col-xs-8">
					<img class="col-xs-4" alt="임지없음" src="/final/image/baseImage.jpg" style="height:95%; margin-top:5px;border-radius:100%;">
					<div class="col-xs-8" style="padding-top:16%;height:100%;">
						<div class="btn">사진 변경</div> 
						<div class="btn">사진 삭제</div>
					</div>
				</div>
			</div> 
			
			<div style=" box-shadow:0px 0px 1px 1px rgba(50,50,50,0.15);height:20%;">
				<div class="col-xs-4" style="background-color:#DFDFDF;height:100%;font-size:25px;text-align:center;line-height:5;">비밀번호</div>
				<div class="col-xs-8" style="padding:0;height:100%">
					<div style="height:33.3%">
						<div class="col-xs-4"style="height:80%;line-height:2.5;margin-top:5px;">현재 비밀번호</div>
						<input class="col-xs-8" style="height:80%;margin-top:5px;width:65%;">
					</div>
					<div style="height:33.3%">
						<div class="col-xs-4"style="height:80%;line-height:2.5;margin-top:5px;">새로운 비밀번호</div>
						<input class="col-xs-8" style="height:80%;margin-top:5px;width:65%;">
					</div>
					<div style="height:33.3%">
						<div class="col-xs-4"style="height:80%;line-height:2.5;margin-top:5px;" >새로운 비밀번호 확인</div>
						<input class="col-xs-8" style="height:80%;margin-top:5px;width:65%;">
					</div>
				</div>
			</div>
			
			<div style=" box-shadow:0px 0px 1px 1px rgba(50,50,50,0.15);height:6%;">
				<div class="col-xs-4" style="background-color:#DFDFDF;height:100%;font-size:25px;text-align:center;line-height:2;">이메일</div>
				<div class="col-xs-8" >
					<input class="col-xs-8"  type="text" value="abc@naver.com" style="height:70%;width:100%;margin-top:9px;">
				</div>
			</div>
			<!-- 일반회원 -->
			<div style=" box-shadow:0px 0px 1px 1px rgba(50,50,50,0.15);height:17%;">
				<div class="col-xs-4" style="background-color:#DFDFDF;height:100%;font-size:25;text-align:center;line-height:5.5">매장 주소</div>
				<div class="col-xs-8" style="height:100%; padding:0;">
					<div class="col-xs-12" style="height:33.3%">
						<input class=" col-xs-8" type="text" placeholder="우편번호" style="height:80%; margin-top:5px;">
						<input class="col-xs-4" type="button" value="우편번호 찾기" style="height:80%; margin-top:5px;">
					</div>
					<div class="col-xs-12" style="height:33.3%"> 
						<input class="col-xs-12" type="text" placeholder="기본주소" style="height:80%; margin-top:5px;">
					</div>
					<div class="col-xs-12" style="height:33.3%">
						<input class="col-xs-12" type="text" placeholder="상세주소" style="height:80%; margin-top:5px;">
					</div>
				</div>
			</div>
			<div style=" box-shadow:0px 0px 1px 1px rgba(50,50,50,0.15);	height:8%;">
				<div class="col-xs-4" style="background-color:#DFDFDF;height:100%;font-size:25px;text-align:center;line-height:2;">핸드폰번호</div>
				<div class="col-xs-8" >
					<input class="col-xs-8"  type="text" value="010-0000-0000" style="height:70%;width:100%;margin-top:9px;">
				</div>
			</div>
			<!-- 지도 경로 저장 -->
			<input type="hidden">
			<input type="hidden">
			<div style="text-align:center;padding-top:30px; height:17%;">
				<input type="submit" class="btn btn-primary" value="수정" style="width:30%">
			</div>
		</div>
	</div>
</body>
</html>