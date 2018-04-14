<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="theshots is a directory listing template.">
    <meta name="keywords" content="">

    <title>TheShots - Register</title>
    
    <!-- 아이콘 import -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.9/css/all.css" integrity="sha384-5SOiIsAziJl6AWe0HWRKTXlfcSHKmYV4RBF18PPJ173Kzn7jzMyFuTtk8JA7QQG1" crossorigin="anonymous">
	<!-- admin 페이지 js import-->
	<script src="/final/assets/js/admin.js?ver=1.158"></script>
</head>

<body class="sticky-nav" style="font-family:nanum-squareL">

    <!-- Main container -->
    <main>
      <section class="no-border-bottom section-sm">
        <div class="container">
          <div class="row">
            <div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-8 col-md-offset-2">
              <div class="card">
                <div class="card-header">
                  <h6><i class="fas fa-cog" style="color:lightgray"></i> 관리자 페이지</h6>
                </div>
				  
				<div class="card-block">
				 
				 <!-- 관리자 메뉴1 - 회원관리 -->
				 <div class="row">
				  <table class="table admin" id="admin1">
				  	<tr style="color:#f88596;">
				  	  <td data-toggle="collapse" data-target="#admin1_tab" aria-expanded="false" aria-controls="admin1_tab">
				  	  	회원관리 <span class="caret"></span>
				  	  </td>
				  	</tr>
			      </table>
			     </div>
			     
			     <!-- 관리자 메뉴1 - 회원관리 숨김메뉴 -->
				 <div class="collapse" id="admin1_tab">
				   <!-- 검색창 -->
				   <div class="form-group">
				     <br><input id="searchMem" type="text" class="form-control input" placeholder="검색할 회원의 정보를 입력하세요 (아이디, 이름, 연락처, 이메일, 회원유형)" style="height:25px;" onKeyup="fn_searchMemList(1)">
				   </div>
				   <table class="table table-hover table-condensed admin board_list" style="font-size:12px; text-align:center;">
				     <tr style="background-color:#FAFAFA;">
				       <td>아이디</td><td>이름</td><td>연락처</td><td>이메일</td><td>생년월일</td><td>가입일</td><td>구분</td><td>세부정보</td>
				     </tr>
				     
				     <!-- 회원리스트 -->
				     <tbody id="memListBody"></tbody>
				   </table>
				   
				   	<!-- 페이징처리 -->
				    <div id="PAGE_NAVI"></div>
    				<input type="hidden" id="PAGE_INDEX" name="PAGE_INDEX"/>
					<!-- 회원리스트  -->
					<script type="text/javascript">
				        $(document).ready(function(){
				            fn_selectMemList(1);
				        });
				        
				        //검색용
				        function fn_searchMemList(pageNo){
				        	if($("#searchMem").val()!=null || $("#searchMem").val() != ""){
				        	var searchKeyword = $("#searchMem").val();
				            var comAjax = new ComAjax();
				            comAjax.setUrl("<c:url value='/selectMemList.do' />");
				            comAjax.setCallback("fn_selectMemListCallback");
				            comAjax.addParam("PAGE_INDEX", pageNo);
				            comAjax.addParam("PAGE_ROW", 10);
				            comAjax.addParam("searchKeyword", searchKeyword);
				            comAjax.ajax();
				        	}else{
				        		fn_selectMemList(pageNo);
				        	}
				        }

				        function fn_selectMemList(pageNo){
				            var comAjax = new ComAjax();
				            comAjax.setUrl("<c:url value='/selectMemList.do' />");
				            comAjax.setCallback("fn_selectMemListCallback");
				            comAjax.addParam("PAGE_INDEX", pageNo);
				            comAjax.addParam("PAGE_ROW", 10);
				            comAjax.ajax();
				        }
				        
				        function fn_selectMemListCallback(data){
				            var total = data.TOTAL;
				            var body = $("#memListBody");
				            body.empty();
				            if(total == 0){
				                var str = "<tr>" +
				                            "<td colspan='8'>조회된 결과가 없습니다.</td>" +
				                          "</tr>";
				                body.append(str);
				            }
				            else{
				            	if($("#searchMem").val()==null || $("#searchMem").val()==""){
				                var params = {
				                    divId : "PAGE_NAVI",
				                    pageIndex : "PAGE_INDEX",
				                    totalCount : total,
				                    eventName : "fn_selectMemList",
				                	};
				            	}else{
				            	var params = {
						            divId : "PAGE_NAVI",
						            pageIndex : "PAGE_INDEX",
						            totalCount : total,
						            eventName : "fn_searchMemList",
						            };	
				            	}
				                gfn_renderPaging(params);
				                var str = "";
				                $.each(data.list, function(key, value){
				                    str += "<tr>" +
				                                "<td>" + value.MEMBERNO + "</td>" +
				                                "<td>" + value.MEMBERNAME + "</td>" +
				                                "<td>" + value.PHONE+ "</td>" +
				                                "<td>" + value.EMAIL + "</td>" +
												"<td>" + value.BIRTHDAY + "</td>" +
												"<td>" + value.RE_DATE + "</td>" +
												"<td>" + value.MEMBERTYPE + "</td>" +
												"<td><a href='#' data-toggle='modal' data-target='#infoModal' class='memInfo' onClick=fn_openInfo('"+value.MEMBERNO+"')>상세정보</a></td>" +
				                            "</tr>";
				                });
				                body.append(str);
				            }
				        }
				    </script>
				 </div>
			     <!-- END 관리자 메뉴1 - 회원관리 -->
			     
			     
			     
				 <!-- 관리자 메뉴2 - 회원통계 -->
				 <div class="row">
				  <table class="table admin" id="admin2">
				  	<tr style="color:#f88596;">
				  	  <td data-toggle="collapse" data-target="#admin2_tab" aria-expanded="false" aria-controls="admin2_tab">
				  	  	회원통계 <span class="caret"></span>
				  	  </td>
				  	</tr>
			      </table>
			     </div>
			     
			     <!-- 관리자 메뉴2 - 회원통계 숨김메뉴 -->
				 <div class="collapse" id="admin2_tab"><br>
				   <table class="table admin" style="font-size:13px;">
				   	<tr><td></td><td><i class="ti-user"></i> 일반회원 : ${normalUser }</td></tr>
				   	<tr><td></td><td><i class="ti-cut"></i> 전문가회원 : ${proUser }</td></tr>
				   	<tr><td></td><td><i class="ti-server"></i> 전체회원 : ${allUser }</td></tr>
				   </table>
				 </div>
			     <!-- END 관리자메뉴2 - 회원통계 -->
			     
			     
				 <!-- 관리자 메뉴3 - 분야별 실적 -->
				 <div class="row">
				  <table class="table admin" id="admin3">
				  	<tr style="color:#f88596;">
				  	  <td data-toggle="collapse" data-target="#admin3_tab" aria-expanded="false" aria-controls="admin3_tab">
				  	  	분야별 실적 <span class="caret"></span>
				  	  </td>
				  	</tr>
			      </table>
			     </div>
			     
				 <!-- 관리자 메뉴3 - 분야별 실적 숨김메뉴 -->
				 <div class="collapse" id="admin3_tab"><br>
				   <table class="table admin table-condensed" style="font-size:13px;">
				   	<tr style="background-color:#FAFAFA;"> <td></td> <td>결제건</td> <td>매출</td> </tr>
				   	<tr> <td>패션 :</td> <td></td> <td></td> </tr>
				   	<tr> <td>헤어 :</td> <td></td> <td></td> </tr>
				   	<tr> <td>뷰티 :</td> <td></td> <td></td> </tr>
				   	<tr> <td>헬스 :</td> <td></td> <td></td> </tr>
				   	<tr> <td>성형 :</td> <td></td> <td></td> </tr>
				   </table><br>
				 </div>
			     <!-- END 관리자메뉴3 - 분야별 실적 -->
			     
			     
				 <!-- 관리자 메뉴4 - 카테고리설정 -->
				 <div class="row">
				  <table class="table admin" id="admin4">
				  	<tr style="color:#f88596;">
				  	  <td data-toggle="collapse" data-target="#admin4_tab" aria-expanded="false" aria-controls="admin4_tab">
				  	  카테고리 설정 <span class="caret"></span>
				  	  </td>
				  	</tr>
			      </table>
			     </div>
			     
				 <!-- 관리자 메뉴4 - 카테고리설정  숨김메뉴-->
				 <div class="collapse" id="admin4_tab"><br>
				   <div class="col-md-12">
					 <!-- 대분류 -->
				   	 <div class="col-md-6" style="padding:1px">
					  <table class="table table-condensed admin table-bordered" style="font-size:12px;">
					   <thead>
					   	<tr><td style="text-align:center; background-color:#FAFAFA;">
					   		대분류
					   		<button id="cat_add" class="btn btn-round btn-white btn-xs pull-right" style="font-size:11px" onClick="addCat()"><i class="fas fa-plus-circle"></i>&nbsp;추가</button>
					   		</td>
					   	</tr>
					   </thead>
					   	<!-- 대분류 리스트 호출 -->
					   <tbody id="cat_list">
					   </tbody>
					  </table>
					  
					 </div>
					 
					 <!-- 대분류 호출 스크립트-->
					 <script type="text/javascript">
				        $(document).ready(function(){
				        	catList();
				        	$('#sub_cat_thead').hide();
				        });
				     </script>
				     
				     
					 <!-- 중분류 -->
				   	 <div class="col-md-6" style="padding:1px">
					  <table class="table table-condensed admin table-bordered" style="font-size:12px;" id="sub_cat_thead">
					  	<thead>
					   		<tr id="sub_cat_thead_1"><td style="text-align:center; background-color:#FAFAFA;"><span id="title_subcat" style="font-size:12px; color:#0692e7"></span> > 중분류 
					   		<button id="addBtn" class="btn btn-round btn-white btn-xs pull-right" style="font-size:11px" onclick="addSubCat()"><i class="fas fa-plus-circle"></i>&nbsp;추가</button>
					   		</td></tr>
					   	</thead>
					   	<!-- 서브카테고리 리스트 -->
					   	<tbody id="sub_cat_list">
					   	</tbody>
					  </table>
					 </div>
					
				   </div>
				    .
				 </div>
				 <!-- END 관리자 메뉴4 - 카테고리설정 -->
			     
			 </div>
            </div>
          </div>
        </div>
        </div>
      </section>
    </main>
    <!-- END Main container -->

    <!-- Shot description modal -->
    <div id="infoModal" class="modal fade" tabindex="-1" role="dialog">
      <div class="modal-dialog modal-lg" role="document">
        <a class="close-modal" data-dismiss="modal" href="#"><i class="ti-close"></i></a>
        <div class="modal-content">
        	<section class="no-border-bottom section-sm">
  <div class="container-fluid">
    <header class="section-header">
      <h3>Facebook Groups Marketing Site</h3>
      <p>Posted on 31 Jan, 2016 for <a href="user-profile.html">Facebook</a></p>
    </header>


    <div class="row">
      <div class="col-xs-12 col-md-8">

        <!-- Shot and details -->
        <div class="card no-margin-top">
          <div class="card-block">
            
            <img src="assets/img/shot-3.jpg" alt="" data-lity>

            <hr>

            <p>New marketing site for Facebook Groups. We are excited to start publishing stories about great groups and provide useful tips to group admins and members.</p>

            <p>Ut pulvinar libero tortor, laoreet suscipit tellus varius nec. In tristique pretium leo sed accumsan. Mauris ac ex lectus. Fusce vitae imperdiet diam. In imperdiet orci lectus, in pharetra ligula consectetur in. Curabitur pulvinar elit eu nisi bibendum laoreet. Integer vel est convallis, commodo nisl porttitor, feugiat nisl. Proin condimentum condimentum lorem a semper.</p>

          </div>
        </div>
        <!-- END Shot and details -->


        <!-- Comments -->
        <div id="comments" class="card">
          <div class="card-header">
            <h6>Comments (45)</h6>

            <div class="comment-pagination">
              <a class="prev" href="#"><i class="ti-angle-left"></i></a>
              <a class="next" href="#"><i class="ti-angle-right"></i></a>
            </div>
          </div>

          <ul class="comments">
            <li>
              <a href="user-profile.html"><img src="assets/img/avatar-1.jpg" alt=""></a>
              <h6><a href="user-profile.html">Jose</a> <time datetime="2016-02-04 22:30">14 hours ago</time></h6>
              <p>Nam tincidunt diam id nisl accumsan molestie.</p>
            </li>

            <li>
              <a href="user-profile.html"><img src="assets/img/avatar-5.jpg" alt=""></a>
              <h6><a href="user-profile.html">Dumduri</a> <time datetime="2016-02-04 22:30">1 days ago</time></h6>
              <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent scelerisque porta bibendum. Mauris ac libero convallis, facilisis diam quis, porta lorem. Aenean suscipit risus a faucibus porta.</p>
            </li>


            <li>
              <a href="user-profile.html"><img src="assets/img/avatar-1.jpg" alt=""></a>
              <h6><a href="user-profile.html">Jose</a> <time datetime="2016-02-04 22:30">1 week ago</time></h6>
              <p>Ut pulvinar libero tortor, laoreet suscipit tellus varius nec. In tristique pretium leo sed accumsan. Mauris ac ex lectus. Fusce vitae imperdiet diam.</p>
            </li>

            <li>
              <a href="user-profile.html"><img src="assets/img/avatar-5.jpg" alt=""></a>
              <h6><a href="user-profile.html">Dumduri</a> <time datetime="2016-02-04 22:30">1 week ago</time></h6>
              <p>Ut pulvinar libero tortor, laoreet suscipit tellus varius nec. In tristique pretium leo sed accumsan.</p>
            </li>

            <li>
              <a href="user-profile.html"><img src="assets/img/avatar-3.jpg" alt=""></a>
              <h6><a href="user-profile.html">Mary</a> <time datetime="2016-02-04 22:30">2 weeks ago</time></h6>
              <p>Ut pulvinar libero tortor, laoreet suscipit tellus varius nec. Mauris ac ex lectus. Fusce vitae imperdiet diam.</p>
            </li>
          </ul>

          <form class="comment-form">
            <img src="assets/img/avatar-2.jpg" alt="">
            <p><input type="text" class="form-control" placeholder="Leave a comment..."></p>
          </form>

        </div>
        <!-- END Comments -->

      </div>

      <aside class="col-xs-12 col-md-4 shot-sidebar">
        <!-- User widget -->
        <div class="sidebar-block">
          <div class="shot-by-widget">
            <a href="user-profile.html"><img src="assets/img/avatar-4.jpg" alt="avatar"></a>
            <a class="username" href="user-profile.html">Facebook</a>
            <p class="title">Social company</p>
            <p class="subtitle">Ut pulvinar libero tortor, laoreet suscipit tellus varius nec.</p>

            <ul class="user-stats">
              <li><a href="user-profile.html"><i>Shots</i><span>125</span></a></li>
              <li><a href="user-followers.html"><i>Followers</i><span>2.3K</span></a></li>
              <li><a href="user-followers.html"><i>Following</i><span>279</span></a></li>
            </ul>
            <a class="btn btn-success btn-sm" href="#">Following</a>
          </div>
        </div>
        <!-- END User widget -->


        <!-- Shot stats -->
        <div class="sidebar-block">
          <ul class="single-shot-stats">
            <li><i class="fa fa-eye"></i><span>658</span></li>
            <li><a class="like" href="#"><i class="fa fa-heart"></i><span>189</span></a></li>
          </ul>
        </div>
        <!-- END Shot stats -->


        <!-- Details -->
        <div class="sidebar-block">
          <h6>Details</h6>
          <dl class="half-half">
            <dt>Size</dt>
            <dd>5472 x 3648</dd>

            <dt>File size</dt>
            <dd>1.1 MB</dd>

            <dt>File type</dt>
            <dd>Jpeg</dd>

            <dt>Aspect Ratio</dt>
            <dd>4:3</dd>

            <dt>Location</dt>
            <dd>Denmark</dd>

            <dt>License</dt>
            <dd>GPL</dd>

          </dl>
        </div>
        <!-- END Details -->


        <!-- Tags -->
        <div class="sidebar-block">
          <h6>Tags</h6>
          <div class="tag-list">
            <a href="#">Website</a>
            <a href="#">Social</a>
            <a href="#">App</a>
            <a href="#">Light design</a>
            <a href="#">Blue</a>
            <a href="#">Pages</a>
            <a href="#">Facebook</a>
          </div>
        </div>
        <!-- END Tags -->


        <!-- Share -->
        <div class="sidebar-block">
          <h6>Share on</h6>
          <ul class="social-icons text-center">
            <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
            <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
            <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
            <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
            <li><a class="instagram" href="#"><i class="fa fa-instagram"></i></a></li>
          </ul>
        </div>
        <!-- END Share -->


        <!-- More shots -->
        <div class="sidebar-block">
          <h6>More from Facebook</h6>
          <ul class="photo-list cols-2">
            <li><a href="#"><img src="assets/img/shot-3.jpg" alt=""></a></li>
            <li><a href="#"><img src="assets/img/shot-4.jpg" alt=""></a></li>
            <li><a href="#"><img src="assets/img/shot-7.jpg" alt=""></a></li>
            <li><a href="#"><img src="assets/img/shot-6.jpg" alt=""></a></li>
          </ul>
        </div>
        <!-- END More shots -->
        

      </aside>
    </div>
  </div>
</section>
        </div>
      </div>
    </div>
    <!-- END Shot description modal -->

    
  </body>
</html>