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
            <span>전문가 참여 신청</span>
            <h3>프로젝트 참여 신청</h3>
          </header>

          <div class="row" style="width:600px; margin-left:270px">
              <div class="card">
              <form method="get" action="#">
              	<div class="card-header">
                  <h6>전문가 정보</h6>
                </div>

                <div class="card-block col-xs-12">
                  	<div class="col-xs-3">전문 분야</div>
                  	<div class="col-xs-9"><input class="form-control col" type="text" value="헤어"><br></div>
                  	<div class="col-xs-3">이 름 </div>
                  	<div class="col-xs-9"><input class="form-control" type="text" value="한지수"><br></div>
                  	<div class="col-xs-3">매장 주소</div>
                  	<div class="col-xs-9"><input class="form-control" type="text" value="서울시 도봉구 도봉동 도복순"><br></div>
                  	<div class="col-xs-3">매장 번호</div>
                  	<div class="col-xs-9"><input class="form-control" type="text" value="02)123-1234"><br></div>
                </div>
                
                <hr>
                
                <div class="card-header">
                  <h6>예상 견적</h6>
                </div>

                <div class="card-block">
                                       <table class="table table-sm">
                    	<thead>
                    		<th scope="col"></th>
                    		<th scope="col">진행 사항</th>
                    		<th scope="col">상세 내용</th>
                    		<th scope="col">예상 비용</th>
                    	</thead>
                    	<tbody>
                    		<tr>
                    			<th scope="row">1</th>
                    			<td><input class="form-control" type="text" value="헤어 염색"/></td>
                    			<td><input class="form-control" type="text" value="브라운 07 염색약"/></td>
                    			<td><input class="form-control" type="text" value="122,000"/></td>
                    		</tr>
                    		<tr>
                    			<th scope="row">2</th>
                    			<td><input class="form-control" type="text" value="헤어 파마"/></td>
                    			<td><input class="form-control" type="text" value="C컬펌, 디지털 펌"/></td>
                    			<td><input class="form-control" type="text" value="155,000"/></td>
                    		</tr>
                    		<tr>
                    			<th scope="row">3</th>
                    			<td><input class="form-control" type="text" value="헤어 클리닉"/></td>
                    			<td><input class="form-control" type="text" value="트리트먼트 서비스"/></td>
                    			<td><input class="form-control" type="text" value="0"/></td>
                    		</tr>
                    		<tr>
                    			<th scope="row">4</th>
                    			<td><input class="form-control" type="text" /></td>
                    			<td><input class="form-control" type="text" /></td>
                    			<td><input class="form-control" type="text" /></td>
                    		</tr>
                    	</tbody>
                    
                    </table>
                </div>
                
                <hr>
                
                <div class="card-header">
                  <h6>전문가 의견</h6>
                </div>

                <div class="card-block">
                  <textarea class="form-control" style="width:550px; height:100px">의뢰인 같은 경우, 동그란 얼굴형이라 단발이 잘 어울리실 것 같습니다.</textarea>
                </div>
                
                <hr>
                
                <div class="card-block">
                    <button type="submit" class="btn btn-primary btn-sm" style="margin-left:150px;">신청하기</button>
                    <button type="submit" class="btn btn-primary btn-sm" style="margin-left:60px;">취소하기</button>
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
    <script src="/final/assets/js/app.min.js"></script>
    <script src="/final/assets/js/theshots.js"></script>
    <script src="/final/assets/js/custom.js"></script>

  </body>
</html>
