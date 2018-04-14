<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="theshots is a directory listing template.">
    <meta name="keywords" content="">

    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Raleway:100,300,400,500,600,800%7COpen+Sans:300,400,500,600,700,800%7CMontserrat:400,700' rel='stylesheet' type='text/css'>
</head>

  <body class="sticky-nav" style="font-family:nanum-square">



    <!-- Main container -->
    <main>
	<form method="post" action="/final/register/registerSignUp.do">
      <section class="no-border-bottom section-sm">
        <div class="container">
          <div class="row">
            <div>
            
             <!-- 왼쪽 카드 (1열)-->
             <div class="col-xs-12 col-md-6">
             
              <!-- (1열 1행)-->
              <div class="card no-margin-top" style="margin:20px 0px 20px 0px">
                <div class="card-header">
                  <h6>회원가입 - 일반회원</h6>
                </div>
                <div class="card-block">
                	<!-- 아이디 -->
                    <div class="form-group">
                      <input class="form-control input-lg" id="memberNo" name="memberNo" type="text" placeholder="아이디">
                    </div>
                    <!-- 비밀번호 -->
                    <div class="form-group">
                      <input class="form-control input-lg" id="passwd" name="passwd" type="password" placeholder="비밀번호">
                    </div>
                    <!-- 비밀번호 재확인 -->
                    <div class="form-group">
                      <input class="form-control input-lg" id="passwd2" name="passwd2" type="password" placeholder="비밀번호 재확인">
                    </div>
              	</div>
              </div>
              
              <!-- (1열 2행)-->
              <div class="card no-margin-top" style="margin:20px 0px 20px 0px">
              	 <div class="card-block">
              	 	<!-- 이름 -->
                    <div class="form-group">
                      <input class="form-control input-lg" id="memberName" name="memberName" type="text" placeholder="이름">
                    </div>
                    <!-- 성별 -->
                    <div class="form-group" style="margin-bottom:15px">
                      <input type="radio" name="gender" id="male" value="남자" style="display:none;">
                      <label for="male" class="btn btn-outline btn-primary btn-xs col-xs-6" style="margin-bottom:15px">남자</label>
                   	  <input type="radio" name="gender" id="female" value="여자"  style="display:none;">
                   	  <label for="female"class="btn btn-outline btn-primary btn-xs col-xs-6" style="margin-bottom:15px">여자</label>
                    </div>
                    <br>
                    <!------ 생일 ------>
                    <div class="form-group"> 
                      <div class="col-xs-2" style="padding:0px">
                      	<input class="form-control input disabled" type="text" value="생일" disabled>
                      </div>
                      <!-- 생일(년도) -->
                      <div class="col-xs-4" style="padding:0px">                  		
                        <input class="form-control input" type="text" id="bday_year" name="bday_year" placeholder="년(4자)" id="year" style="margin-bottom:15px;">
                      </div>
                      <!-- 생일(월) -->
                      <div class="col-xs-3" style="padding:0px">
                    	<select class="form-control" id="bday_month" name="bday_month" style="margin-bottom:15px;">
                    		<option value="0">월</option>
                    		<option value="1">1</option>
                    		<option value="2">2</option>
                    		<option value="3">3</option>
                    		<option value="4">4</option>
                    		<option value="5">5</option>
                   			<option value="6">6</option>
                   			<option value="7">7</option>
                   			<option value="8">8</option>
                   			<option value="9">9</option>
                   			<option value="10">10</option>
                   			<option value="11">11</option>
                   			<option value="12">12</option>
                    	</select>
                      </div>
                      <!-- 생일(일) -->
                      <div class="col-xs-3" style="padding:0px">
                    	<input class="form-control input" id="bday_day" name="bday_name" type="text" placeholder="일" style="margin-bottom:15px;">
                      </div>
                    </div>
                    <!-- 직업 -->
                    <div class="form-group">
                      <input class="form-control input-lg" id="job" name="job" type="text" placeholder="직업">
                    </div>
                    <!-- 이메일 -->
                    <div class="form-group">
                      <input class="form-control input-lg" id="email" name="email" type="email" placeholder="이메일 주소">
                    </div>
                    
                    <!-- 휴대전화 -->
                    <div class="form-group">
                      <input class="form-control input-lg" id="phone" name="phone" type="text" placeholder="휴대전화번호(-를 제외한 숫자만 입력하세요)">
                    </div>
                    
                    <!-- 주소 -->
                    <div class="form-group">
                      <div class="col-xs-8" style="padding:0px; margin-left:0px;">
                      	<input class="form-control input" id="zipcode" name="zipcode" type="text" placeholder="우편번호" value="구현x" readonly>
                      </div>
                      <div class="col-xs-4" style="padding:0px;"><a class="btn btn-outline btn-primary btn-xs col-xs-12" href="#" style="height:34px; padding: 5px 12px;">주소검색</a></div>
                    </div>
                    <div class="form-group">
                      <input class="form-control input" id="adress1" name="adress1" type="text" placeholder="기본주소" readonly>
                      <input class="form-control input" id="adress2" name="adress2" type="text" placeholder="상세주소">
                    </div>
                    <br>
                    </div>
                  </div>
                </div>
                
                <!-- 오른쪽 카드 (2열)-->
             <div class="col-xs-12 col-md-6">
  				
  				  <!-- 2열 1행 -->
  				  <div class="card no-margin-top" style="margin:20px 0px 20px 0px">
  				    <div class="card-header">
  				      <h6>관심분야</h6>
  				    </div>
  				    <div class="card-block">
  				    
  				      <!-- 관심 전문분야 체크박스 -->
  				      <div class="checkbox col-xs-12">
    				  	<label class="col-xs-2"><input type="checkbox">패션</label>
    				  	<label class="col-xs-2"><input type="checkbox">헤어</label>
    				  	<label class="col-xs-2"><input type="checkbox">뷰티</label>
    				  	<label class="col-xs-2"><input type="checkbox">헬스</label>
    				  	<label class="col-xs-2"><input type="checkbox">성형</label>
					  </div>
					  <br><br>
  				    </div>
  				  </div>
  				  
  				  <!-- 2열 2행 -->
  				  <div class="card no-margin-top" style="margin:20px 0px 20px 0px">
  				    <div class="card-header">
  				      <h6>관심사항</h6>
  				    </div>
  				    <div class="card-block">
  				    
  				    <!-- 관심사항 체크박스 -->
  				    <div class="form-group">
  				     <!-- line 1 (스타일)-->
  				      <div class="checkbox col-xs-12">
  				       <label class="control-label col-xs-2" style="padding:0px"><b class="txt-gray">스타일</b></label>
    				  	<label class="col-xs-2"><input type="checkbox">패션</label>
    				  	<label class="col-xs-2"><input type="checkbox">헤어</label>
    				  	<label class="col-xs-2"><input type="checkbox">뷰티</label>
    				  	<label class="col-xs-2"><input type="checkbox">헬스</label>
    				  	<label class="col-xs-2"><input type="checkbox">성형</label>
					  </div>
					  <br>
					  <!-- line 2 (취미)-->
  				      <div class="checkbox col-xs-12">
  				       <label class="control-label col-xs-2" style="padding:0px"><b class="txt-gray">취미</b></label>
    				  	<label class="col-xs-2"><input type="checkbox">스포츠/레져</label>
    				  	<label class="col-xs-2"><input type="checkbox">영화</label>
    				  	<label class="col-xs-2"><input type="checkbox">독서</label>
    				  	<label class="col-xs-2"><input type="checkbox">헬스</label>
    				  	<label class="col-xs-2"><input type="checkbox">성형</label>
					  </div>
					  <br>
					  <!-- line 3 (색상-1)-->
  				      <div class="checkbox col-xs-12">
  				       <label class="control-label col-xs-2" style="padding:0px"><b class="txt-gray">색상</b></label>
    				  	<label class="col-xs-2"><input type="checkbox">화이트 </label>
    				  	<label class="col-xs-2"><input type="checkbox">그레이</label>
    				  	<label class="col-xs-2"><input type="checkbox">블랙</label>
    				  	<label class="col-xs-2"><input type="checkbox">핑크</label>
    				  	<label class="col-xs-2"><input type="checkbox">브라운</label>
					  </div>
					  <!-- line 4 (색상-2)-->
  				      <div class="checkbox col-xs-12">
  				       <label class="control-label col-xs-2" style="padding:0px"></label>
    				  	<label class="col-xs-2"><input type="checkbox">레드 </label>
    				  	<label class="col-xs-2"><input type="checkbox">블루</label>
    				  	<label class="col-xs-2"><input type="checkbox">민트</label>
    				  	<label class="col-xs-2"><input type="checkbox">퍼플</label>
    				  	<label class="col-xs-2"><input type="checkbox">카키</label>
					  </div>
					  <!-- line 5 (색상-3)-->
  				      <div class="checkbox col-xs-12">
  				       <label class="control-label col-xs-2" style="padding:0px"></label>
    				  	<label class="col-xs-2"><input type="checkbox">레드 </label>
    				  	<label class="col-xs-2"><input type="checkbox">블루</label>
    				  	<label class="col-xs-2"><input type="checkbox">민트</label>
    				  	<label class="col-xs-2"><input type="checkbox">퍼플</label>
    				  	<label class="col-xs-2"><input type="checkbox">카키</label>
					  </div>
					  <br>
  				    </div>
  				    <hr style="margin-bottom:0;"><br><hr>
  				  </div>
  				  <!-- 2열 2행 끝 -->
  				</div>
  				<!-- 히든 값 -->
  					<input type="hidden" name="memberType" value="일반회원"/>
  					<!-- 취소,가입버튼 -->
  				  	<div class="form-group" style="margin-top:15px;">
					    <a class="btn btn-primary" href="/final/register/register.do">취소</a>
					  	<button type="submit" id="submit" class="btn btn-primary pull-right">가입하기</button>
					</div>
  				
  				  </div>
  				  
                </div>
              </div>
             </div>
      </section>
      </form>
    </main>
    <!-- END Main container -->

    <!-- Back to top button -->
    <a id="scroll-up" href="#"><i class="ti-angle-up"></i></a>
    <!-- END Back to top button -->
  </body>
</html>