<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	              <li><a class="active" href="/final/myPage/memberMypageInfomodify.do">내 정보 수정(일반)</a></li>
	              <li><a class="" href="/final/myPage/memberMypageRequest.do">의뢰(일반)</a></li>
	              <li><a class="" href="/final/myPage/memberMypageProject.do">프로젝트(일반)</a></li>
	              <li><a class="" href="/final/myPage/memberMypageSelectList.do">찜 목록(일반)</a></li>
	              <li><a class="" href="/final/myPage/memberMypagePay.do">결제내역(일반)</a></li>
	            </ul>
	           </div>
	    	</div>
		</div>
		
		<div class="col-xs-12" style="height:100%;">
			<div style="margin-top:30px;font-size:30px;margin-left:30px;margin-bottom:30px;">내 정보 수정 
			</div>
			<div style=" box-shadow:0px 0px 1px 1px rgba(50,50,50,0.15); height:150px;"> 
				<div class="col-xs-4" style="background-color:#DFDFDF;height:100%;font-size:25px;text-align:center;line-height:6;">프로필 사진</div>
				<div class="col-xs-8">
					<img class="col-xs-4" alt="임지없음" src="/final/image/baseImage.jpg" style="height:145px; margin-top:5px;border-radius:100%;">
					<div class="col-xs-8" style="margin-top:100px;">
						<div class="btn">사진 변경</div> 
						<div class="btn">사진 삭제</div>
					</div>
				</div>
			</div> 
			
			<div style=" box-shadow:0px 0px 1px 1px rgba(50,50,50,0.15); height:130px;">
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
			<div style=" box-shadow:0px 0px 1px 1px rgba(50,50,50,0.15); height:60px;">
				<div class="col-xs-4" style="background-color:#DFDFDF;height:100%;font-size:25px;text-align:center;line-height:2;">이메일</div>
				<div class="col-xs-8" >
					<input class="col-xs-8"  type="text" value="${MemberSession.email}" style="height:70%;width:100%;margin-top:9px;">
				</div>
			</div>
		
			<!-- 일반회원 -->
			
			<div style=" box-shadow:0px 0px 1px 1px rgba(50,50,50,0.15); height:130px;">
				<div class="col-xs-4" style="background-color:#DFDFDF;height:100%;font-size:25;text-align:center;line-height:5.5">주소</div>
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
			
			<div style=" box-shadow:0px 0px 1px 1px rgba(50,50,50,0.15); height:120px;">
				<div class="col-xs-4" style="background-color:#DFDFDF;height:100%; font-size:25px;text-align:center; line-height:4.5;">관심분야</div>
				<div class="col-xs-8 interestCheckbox">
					<div class="col-xs-12">
						<input type="checkbox" name="a" id="a" value=""><label for="a">관심분야</label>
						<input type="checkbox" name="a" id="b" value=""><label for="b">관심분야</label>
						<input type="checkbox" name="a" id="c" value=""><label for="c">관심분야</label>
						<input type="checkbox" name="a" id="d" value=""><label for="d">관심분야</label>
						<input type="checkbox" name="a" id="e" value=""><label for="e">관심분야</label>
					</div>
					<div class="col-xs-12">
						<input type="checkbox" name="a" id="f" value=""><label for="f">관심분야</label>
						<input type="checkbox" name="a" id="g" value=""><label for="g">관심분야</label>
						<input type="checkbox" name="a" id="h" value=""><label for="h">관심분야</label>
						<input type="checkbox" name="a" id="i" value=""><label for="i">관심분야</label>
						<input type="checkbox" name="a" id="j" value=""><label for="j">관심분야</label>
					</div>
				</div>
			</div>			
			<div style=" box-shadow:0px 0px 1px 1px rgba(50,50,50,0.15); height:173px;"> 
				<div class="col-xs-4" style="background-color:#DFDFDF;height:100%;font-size:25px;text-align:center;line-height:7.5;">관심사항</div>
				<div class="col-xs-8 interestCheckbox2" >
					<div class="col-xs-12">
						<input type="checkbox" name="b" id="b1" value=""><label for="b1">관심사항</label>
						<input type="checkbox" name="b" id="b2" value=""><label for="b2">관심사항</label>
						<input type="checkbox" name="b" id="b3" value=""><label for="b3">관심사항</label>
						<input type="checkbox" name="b" id="b4" value=""><label for="b4">관심사항</label>
						<input type="checkbox" name="b" id="b5" value=""><label for="b5">관심사항</label>
					</div>
					<div class="col-xs-12">
						<input type="checkbox" name="b" id="b6" value=""><label for="b6">관심사항</label>
						<input type="checkbox" name="b" id="b7" value=""><label for="b7">관심사항</label>
						<input type="checkbox" name="b" id="b8" value=""><label for="b8">관심사항</label>
						<input type="checkbox" name="b" id="b9" value=""><label for="b9">관심사항</label>
						<input type="checkbox" name="b" id="b10" value=""><label for="b10">관심사항</label>
					</div>
					<div class="col-xs-12">
						<input type="checkbox" name="b" id="b11" value=""><label for="b11">관심사항</label>
						<input type="checkbox" name="b" id="b12" value=""><label for="b12">관심사항</label>
						<input type="checkbox" name="b" id="b13" value=""><label for="b13">관심사항</label>
						<input type="checkbox" name="b" id="b14" value=""><label for="b14">관심사항</label>
						<input type="checkbox" name="b" id="b15" value=""><label for="b15">관심사항</label>
					</div>
				</div>
			</div>			
			<!-- 지도 경로 저장 -->
			<input type="hidden">
			<input type="hidden">
			<div style="text-align:center;margin-top:15px;">
				<input type="submit" class="btn btn-primary" value="수정" style="width:30%">
			</div>
		</div>
	</div>
</body>
</html>