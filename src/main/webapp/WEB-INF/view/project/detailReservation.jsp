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

      <section class="no-border-bottom">
        
        <div class="container" style="width:900px;">
          <header class="section-header">
            <span>예약 상세보기</span>
            <h2>프로젝트 예약 세부 사항</h2>
          </header>

          <div class="row equal-cols">

            <div class="col-xs-12 col-sm-6">

              <div class="card">
                <div class="card-header">
                  <h6>세부 내용</h6>
                </div>

                <div class="card-block">
                  <form>
                  	<div class="col-xs-3">예약 분야</div>
                    <div class="col-xs-9"><input type="text" class="form-control input-lg" value="헤어"><br></div>
                    <div class="col-xs-3">예약 시간</div>
                    <div class="col-xs-9"><input type="text" class="form-control input-lg" value="2018-04-02, 15:00"><br></div>
                    <div class="col-xs-3">상세 내용</div>
                    <div class="col-xs-9"><input type="text" class="form-control input-lg" value="염색, 파마"><br></div>
                    	
                    <button type="submit" class="btn btn-primary btn-sm" style="width:130px; margin-left:45px;">예약 수정</button>
                    <button type="submit" class="btn btn-primary btn-sm" style="width:130px; margin-left:30px;">예약 삭제</button>
                  	
                  </form>
                </div>
              </div>
              
              <div class="card">
              	<div class="card-header">
                  <h6>전문가/매장 정보</h6>
                </div>
                <div class="card-block">
                  <dl class="icon-holder">
                  	<dt><i class="fa fa-user"></i></dt>
                    <dd>한지수</dd>
                    
                    <dt><i class="fa fa-map-marker"></i></dt>
                    <dd>서울시 도봉구 도봉동 도봉순, 머리 잘헤어</dd>

                    <dt><i class="fa fa-phone"></i></dt>
                    <dd>(+82) 031 123 1234</dd>

                    <dt><i class="fa fa-fax"></i></dt>
                    <dd>(+1) 123 456 7890</dd>

                    <dt><i class="fa fa-envelope"></i></dt>
                    <dd>hellojsu@example.com</dd>
                  </dl>
                </div>
              </div>

            </div>
            
            <div class="col-xs-12 col-sm-6">
              <div class="contact-map-wrapper">
                <div id="contact-map"></div>
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
	
	<!-- 구글맵 -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC997musn4YLRcWBP2vto_lagaGx_lt-ww&callback=initMap" async defer></script>
	<script>
      function initMap() {
    	var point = {lat:37.570169, lng:126.98309900000004};
        var map = new google.maps.Map(document.getElementById('contact-map'), {
          center: point, //좌표
          zoom: 17 //줌
        });
        var marker = new google.maps.Marker({
        	position: point,
        	map: map
        });
      }
    </script>
    
  </body>
</html>
