<%@ page contentType="text/html; charset=UTF-8"%>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="theshots is a directory listing template.">
    <meta name="keywords" content="">
    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Raleway:100,300,400,500,600,800%7COpen+Sans:300,400,500,600,700,800%7CMontserrat:400,700' rel='stylesheet' type='text/css'>
    <!-- RawGit CDN chart.css -->
	<link rel="stylesheet" href="https://cdn.rawgit.com/theus/chart.css/v1.0.0/dist/chart.css" />
	
	<!-- 풀캘린더 -->
	<link href="/final/assets/css/fullcalendar.css" rel="stylesheet" />
	<link href="/final/assets/css/fullcalendar.print.min.css" rel="stylesheet" media="print" />
	<link href="/final/assets/css/Schedule.css" rel="stylesheet"/>  
  
  </head>
  
<!-- 전문가 목록 프로필 스타일 -->
<style>
.test{
    overflow: hidden;
   	margin-left: 35px; /* 가운데 정렬 */
}

.test img{
	border-radius: 100%;
    margin: 25px;
    width: 128px;
}

.test > div{
	float: left;
}


 #calendar {
   width: 640px;
   padding: 20px;
 }

</style>

  <body class="sticky-nav">


    <!-- Main container -->
    <main>


      <section class="no-border-bottom section-sm">
        <div class="container">
          <header class="section-header">
            <span>프로젝트 상세보기</span>
            <h3>홍길동님의 프로젝트</h3>
            <div class="test">
            <div><a href="user-profile.html"><img src="/final/assets/img/avatar-2.jpg" alt="avatar"></a><div>헤어 / <b>한지수</b></div></div>
            <div><a href="user-profile.html"><img src="/final/assets/img/avatar-2.jpg" alt="avatar"></a><div>패션 / <b>김도영</b></div></div>
            <div><a href="user-profile.html"><img src="/final/assets/img/avatar-2.jpg" alt="avatar"></a><div>뷰티 / <b>권우진</b></div></div>
            <div><a href="user-profile.html"><img src="/final/assets/img/avatar-2.jpg" alt="avatar"></a><div>성형 / <b>류주형</b></div></div>
            <div><a href="user-profile.html"><img src="/final/assets/img/avatar-2.jpg" alt="avatar"></a><div>헬스 / <b>민송이</b></div></div>
            <div><a href="user-profile.html"><img src="/final/assets/img/avatar-2.jpg" alt="avatar"></a><div>카운셀러 / <b>김소진</b></div></div>
            </div>
          </header>
		
		
		
          <div class="row">
            <div class="col-xs-12 col-sm-8">
              <div class="card">
                <div class="card-header">
                  <h6>프로젝트 진행 내역</h6>
                </div>

                <div class="card-block">
                  <form class="form-horizontal">

                    <table class="table table-sm">
                    	<thead>
                    		<th scope="col"></th>
                    		<th scope="col">분야</th>
                    		<th scope="col">전문가</th>
                    		<th scope="col">진행 내역</th>
                    		<th scope="col">예상 비용</th>
                    	</thead>
                    	<tbody>
                    		<tr>
                    			<th scope="row">1</th>
                    			<td>헤어</td>
                    			<td>한지수</td>
                    			<td>염색, 파마</td>
                    			<td>152,000원</td>
                    		</tr>
                    		<tr>
                    			<th scope="row">2</th>
                    			<td>패션</td>
                    			<td>김도영</td>
                    			<td>멜빵 바지</td>
                    			<td>45,000원</td>
                    		</tr>
                    		<tr>
                    			<th scope="row">3</th>
                    			<td>뷰티</td>
                    			<td>권우진</td>
                    			<td>여드름 치료, 점빼기</td>
                    			<td>120,000원</td>
                    		</tr>
                    		<tr>
                    			<th scope="row">4</th>
                    			<td>성형</td>
                    			<td>류주형</td>
                    			<td>코성형, 눈성형</td>
                    			<td>3,520,000원</td>
                    		</tr>
                    		<tr>
                    			<th scope="row">5</th>
                    			<td>헬스</td>
                    			<td>민송이</td>
                    			<td>근력 집중 운동</td>
                    			<td>400,000원</td>
                    		</tr>
                    	</tbody>
                    
                    </table>
                    
                    <p style="margin-left: 210px;">상세 내용 확인 후, 결제를 진행해주세요.    
                    <!-- PDF 파일 다운로드할 수 있는 버튼 -->
					<button class="btn btn-primary btn-sm" type="submit" style="margin-left: 20px;">상세 내역 다운로드</button></p>
					
                  </form>
                </div>
              </div>
            </div>



            <div class="col-xs-12 col-sm-4">
              <div class="card">
                <div class="card-header">
                  <h6>결 제</h6>
                </div>

                <div class="card-block">
                  <form method="post">
                   <div style="margin-left: 110px; height: 181px;">
                   	<h3>최종 결제 금액</h3>
                  	<h1>119.000원</h1>
                  </div>
                   
                    <div><input type="checkbox"> 결제 정보를 확인하였으며, 구매를 동의합니다.</div> 
                    <br>
                    <p><button class="btn btn-primary btn-sm" type="submit">결제 하기</button></p>
                  </form>
                </div>
              </div>
            </div>
            
            <div class="col-xs-12 col-sm-8" style="width: 1170px;">
              <div class="card">
                <div class="card-header">
                  <h6>상세 내용</h6>
                </div>

                <div class="card-block" style="height: 510px;">
                  <form class="form-horizontal">
                  
                    <!-- <div class="charts" style="width: 600px;">
						진행 현황1<div class="charts__chart chart--p100" data-percent></div>
						진행 현황2<div class="charts__chart chart--p80 chart--red" data-percent></div> 
						진행 현황3<div class="charts__chart chart--p100 chart--blue" data-percent></div>
						진행 현황4<div class="charts__chart chart--p40 chart--green" data-percent></div>
						진행 현황5<div class="charts__chart chart--p20 chart--yellow" data-percent></div>
					</div> -->
					
					<div class="col-xs-6" style="border: 1px solid; width:400px; height:460px; margin-left:5px;">
						채팅창
					</div>
					
					<div class="col-xs-6" style="width:670px; height:460px; margin-left:20px;">
						<div id='calendar'></div>
						<!-- form 태그 안에 버튼은 누르면 submit이 된다, 무언가 기능이 걸려있나봄ㅎㅎㅎㅎ -->
						<div class="btn btn-primary btn-sm" style="margin-left:510px" onclick="document.location='/final/project/reservation.do'">예약 하기</div>
					</div>
					
                    <!-- <div class="form-group">
                      <label for="input2" class="col-sm-2 control-label">Username</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" id="input2" value="DoeDesign">
                      </div>
                    </div>

                    <div class="form-group">
                      <label for="input3" class="col-sm-2 control-label">Email</label>
                      <div class="col-sm-10">
                        <input type="email" class="form-control" id="input3" value="john@doesite.me">
                      </div>
                    </div>

                    <div class="form-group">
                      <label for="input4" class="col-sm-2 control-label">Headline</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" id="input4" value="Front-end Developer">
                      </div>
                    </div>

                    <div class="form-group">
                      <label for="input5" class="col-sm-2 control-label">Location</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" id="input5" value="Los Angeles, US">
                      </div>
                    </div>

                    <div class="form-group">
                      <label for="input6" class="col-sm-2 control-label">Description</label>
                      <div class="col-sm-10">
                        <textarea class="form-control" rows="4" id="input6">Phasellus in ipsum vestibulum, maximus mauris a, venenatis quam. Vestibulum nec mi malesuada ipsum sodales pretium sed non arcu.</textarea>
                      </div>
                    </div>

                    <div class="form-group">
                      <div class="col-sm-offset-2 col-sm-10">
                        <button class="btn btn-primary btn-sm" type="submit">Save changes</button>
                      </div>
                    </div> -->

                  </form>
                </div>
              </div>
            </div>
            
            
            
          </div>

        </div>
      </section>

    </main>
    <!-- END Main container -->

    <!-- Back to top button -->
    <a id="scroll-up" href="#"><i class="ti-angle-up"></i></a>
    <!-- END Back to top button -->


    <!-- Scripts -->
    <script src="/final/assets/js/app.min.js"></script>
    <script src="/final/assets/js/theshots.js"></script>
    <script src="/final/assets/js/custom.js"></script>
    
    <script src="/final/assets/lib/moment.min.js"></script>
	<script src="/final/assets/lib/jquery.min.js"></script>
	<script src="/final/assets/lib/fullcalendar.js"></script>
	<script src="/final/assets/lib/ko.js"></script>
  
  	<script>
$(document).ready(function() {
    $('#calendar').fullCalendar({
      height: 360,
      header: {
        left: 'prev,next',
        center: 'title',
        right: 'today'
      },
      defaultDate: new Date(),
      selectable: false,
      defaultDate: new Date(), 
      navLinks: false, 
      editable: false, 
      eventLimit: true,
      events: [
        {
          title: '패션',
          start: '2018-04-01',
        },
        {
            title: '헤어',
            start: '2018-04-15'
          },
          {
            title: '뷰티',
            start: '2018-04-17',
            end: '2018-04-20'
          },
          {
            title: '헬스',
            start: '2018-04-11',
            end: '2018-04-13'
          },
          {
            title: '성형',
            start: '2018-04-28',
            end: '2018-04-30T12:00'
          }
      ],
      eventClick: function(event){
    	  window.open('http://www.naver.com','테스트','top=20px, left=520px, width=500px, height=540px, menubar=no, toolbar=no');
      }
      
      /* eventClick: function(event) {
    	  var title = event.title;
    	 
    	  var a1 = (event.start).format("YYYY-MM-DD");
    	  var a2 = (event.start).format("HH:mm");
    	  var a3 = a1+"T"+a2;
    	  var start = a3;
    	 
    	  var b1 = (event.end).format("YYYY-MM-DD");
    	  var b2 = (event.end).format("HH:mm");
    	  var b3 = b1+"T"+b2;
    	  var end = b3;
    	  
    	  window.open('/semi/scheduleDel.ls?title='+title+'&start='+start+'&end='+end,'일정 상세보기','top=20px, left=520px, width=500px, height=540px, menubar=no, toolbar=no');
      } */
      
    });
  });
</script>

  </body>
</html>
