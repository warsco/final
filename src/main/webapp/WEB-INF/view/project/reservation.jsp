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

  </head>

  <body class="sticky-nav">
    <!-- Main container -->
    <main>

      <section class="no-border-bottom section-sm">
        <div class="container">
          <header class="section-header">
            <span>예약하기</span>
            <h3>프로젝트 예약</h3>
          </header>

          <div class="row" style="width:570px; margin-left:290px">
              <div class="card">
              <form method="get" action="#">
              	<div class="card-header">
                  <h6>매장 정보</h6>
                </div>

                <div class="card-block">
                  <select class="form-control" name="test" style="width: 300px;">
                  	<option>----  예약 매장 분야를 선택하세요.  ----</option>
                  	<option value="a">헤어</option>
                  	<option value="b">패션</option>
                  	<option value="c">뷰티</option>
                  	<option value="d">성형</option>
                  	<option value="e">헬스</option>
                  </select>
                  
                  	<br>
                  	<!-- ajax사용 : select로 분야를 선택했을 때, 밑에 해당 분야 전문가의 매장 정보가 뜬다. -->
                   	<div>
                   	<b>한지수 / 헤어</b><br>
              		서울시 도봉구 도봉동 도복순<br>
                    02)123-1234
                    </div>
                </div>
                
                <hr>
                
                <div class="card-header">
                  <h6>예약 날짜</h6>
                </div>

                <div class="card-block">
                    <input type="date" name="r_date" class="form-control" style="width: 300px;">
                </div>
                
                <hr>
                
                <div class="card-header">
                  <h6>예약 시간</h6>
                </div>

                <div class="card-block">
                    <button type="submit" class="btn btn-primary btn-sm" name="time" value="T09:00">09:00</button>
                    <button type="submit" class="btn btn-primary btn-sm" style="margin-left:5px" name="time" value="T11:00">11:00</button>
                    <button type="submit" class="btn btn-primary btn-sm" style="margin-left:5px" name="time" value="T13:00">13:00</button>
                    <button type="submit" class="btn btn-primary btn-sm" 
                    style="margin-left:5px; background-color: #A6A6A6; border-color: #A6A6A6 !important;" name="time" value="T15:00">15:00</button>
                    <button type="submit" class="btn btn-primary btn-sm" style="margin-left:5px" name="time" value="T17:00">17:00</button>
                    <button type="submit" class="btn btn-primary btn-sm" style="margin-left:5px" name="time" value="T19:00">19:00</button>
                </div>

                </form>
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
    <script src="assets/js/app.min.js"></script>
    <script src="assets/js/theshots.js"></script>
    <script src="assets/js/custom.js"></script>

  </body>
</html>
