<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="theshots is a directory listing template.">
    <meta name="keywords" content="">

    <title>TheShots - Register</title>

    <!-- Styles -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.9/css/all.css" integrity="sha384-5SOiIsAziJl6AWe0HWRKTXlfcSHKmYV4RBF18PPJ173Kzn7jzMyFuTtk8JA7QQG1" crossorigin="anonymous">

</head>

  <body class="sticky-nav" style="font-family:nanum-square">

    <!-- Main container -->
    <main>
	<form method="post">
      <section class="no-border-bottom section-sm">
        <div class="container">
          <div class="row">
            <div>
            
             <!-- 왼쪽 카드 (1열)-->
             <div class="col-xs-6 col-md-4 col-md-offset-2">
             
              <!-- (1열 1행)-->
              <div class="card no-margin-top">
                <div class="card-header">
                  <h6>회원가입 - 일반회원</h6>
                </div>
                <div class="card-block">
                	<div class="row">
                	  <div class="col-md-12">
                	    <i class="fas fa-user col-md-8 col-md-offset-2" style="font-size:120px; color:gray; text-align: center;"></i>
                	  </div>
                	</div>
                </div>
                	<div class="card-block">
                	  <div>
                		<a class="btn btn-primary btn-block" href="/final/register/regiNormal.do">일반회원 가입하기</a>
                	  </div>
  				    </div>
              	</div>
              </div>
             </div>              
             <!-- 오른쪽 카드 (2열)-->
             <div class="col-xs-6 col-md-4">
  				
  			  <!-- 2열 1행 -->
  			    <div class="card no-margin-top">
  				  <div class="card-header">
  				    <h6>회원가입 - 전문가</h6>
  				  </div>
  				  <div class="card-block">
  				    <div class="row">
  				      <div class="col-md-12">
                	    <i class="fas fa-user-md col-md-8 col-md-offset-2" style="font-size:120px; color:gray; text-align: center;"></i>
                	  </div>
                	</div>
                  </div>
                  <div class="card-block">
                	<div>
                      <a class="btn btn-primary btn-block" href="/final/register/regiPro.do"><b>전문가</b> 가입하기</a>
                	</div>
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