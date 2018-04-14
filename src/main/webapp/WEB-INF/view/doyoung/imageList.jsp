<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="shortcut icon" href="../favicon.ico">
	
<style>
<!--
.detail{cursor: pointer;}
.content-wrap{
    padding-top: 30px;
}
.detailSubject{

    color: #ffffff;
    text-align: left;
    font-size: 16px;
    font-weight: 700;
    line-height: 1.2;
    bottom: 0%;
    position: absolute;
    letter-spacing: 0.1px;
    padding: 10px;
}
.addee{
font-size:30px;
padding: 10px;
}
#added{
display: inline-flex;
		padding: 10px;
}


</style>
<style>
#cho2 {
	position: fixed;
	right: 10px;
	bottom: 10%;
}
#columns {
	column-width: 350px;
	column-gap: 15px;
}

#columns figure {
	display: inline-block;
	border: 1px solid rgba(0, 0, 0, 0.2);
	margin: 0;
	margin-bottom: 15px;
	padding: 10px;
	box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.5);;
}

#columns figure figcaption {
	border-top: 1px solid rgba(0, 0, 0, 0.2);
	padding: 10px;
	margin-top: 11px;
}
</style>
<script type="text/javascript">
$(function(){
	$(".sel").click(function(){
		var url= "/final/tiles/image/list.do";
		   var params= "params="+$(this).attr("title");
		   $.ajax({
		      type:"post"      // 포스트방식
		      ,url:url      // url 주소
		      ,data:params   //  요청에 전달되는 프로퍼티를 가진 객체
		      ,dataType:"json"
		      ,success:function(args){   //응답이 성공 상태 코드를 반환하면 호출되는 함수
		    	   var contents = args.content;
		    		var  re_date =contents.re_date;
		    		var  num =contents.portfolioNo;
		    		var  subject =contents.title;
		    		var  filePath = contents.path;
		    		var  fileName = contents.file_name;
		    		var  fileSize = contents.fileSize;
		    		var  content = contents.contents;
		    		var  readCount = contents.readCount;
		    		var commentCount = args.commentCount;
		    		
				$("#img").prop("src",filePath);
				$("#size1").text("Comments ("+commentCount +")");
				$("#subject").text(subject);
				$("#readCount").text(readCount);
				$("#content").text(content);
				$("#re_date").text(args.time);
				$("#num").prop("value",num);
				var comments = args.comment;
				 
				$(".comments").html("");
				    
				  for(var i=0; i<comments.length; i++) {
			             $(".comments").append(
									'<li><a href="user-profile.html"><img' +
									'src="/MavenWeb/resources/src/assets/img/avatar-1.jpg" alt=""></a>' +
									'<h6> <a href="user-profile.html">'+comments[i].writer+'</a> '+
										'<time datetime="'+comments[i].writer+'">'+comments[i].writer+'</time>'+
									'</h6>	<p>'+comments[i].content+'</p></li>'
			             );
				  }
		   }
		       ,error:function(e) {   // 이곳의 ajax에서 에러가 나면 얼럿창으로 에러 메시지 출력
		          alert(e.responseText);
		       }
		   });
		   /* 뎃글 달수있는 기능을 하는 function  */
	
	});
});
    
/*  $(function(){
	   $("#content2").keydown(function(key) {
		   if (key.keyCode == 13) {
				var url= "/final/tiles/i_board/add.do";
				var writer =$("#writer").val();
 				var num = $("#num").val();	
				var content = $("#content2").val();
				if($("#content2").val()  == ""){
					return false;
				}
				$('#content2').val('');
				 <!--content,writer,num  
				  var params= {"content":content,"writer":writer,"num":num};
				   $.ajax({
				      type:"post"      // 포스트방식
				      ,url:url      // url 주소
				      ,data:params   //  요청에 전달되는 프로퍼티를 가진 객체
				      ,dataType:"json"
				      ,success:function(args){   //응답이 성공 상태 코드를 반환하면 호출되는 함수

						$("#size1").text("Comments ("+args.commentCount +")");
						var comments = args.commen;
					             $(".comments").append(
											'<li><a href="user-profile.html"><img' +
											'src="/MavenWeb/resources/src/assets/img/avatar-1.jpg" alt=""></a>' +
											'<h6> <a href="user-profile.html">'+comments.writer+'</a> '+
												'<time datetime="'+comments.re_date+'">'+comments.re_date+'</time>'+
											'</h6>	<p>'+args.commen.content+'</p></li>'
					             );
				   }
				       ,error:function(e) {   // 이곳의 ajax에서 에러가 나면 얼럿창으로 에러 메시지 출력
				          alert(e.responseText);
				       }
		   });
		   }
	
})
})
 */
</script>

<body>
        <!-- Page links -->
      <div class="page-links" style="margin-top: -21px;">
        <div class="container">
          <div class="pull-left">
            <ul class="link-list">
              <li><a class="active" href="#">hair</a></li>
              <li><a href="#">Molding</a></li>
              <li><a href="#">sports</a></li>
              <li><a href="#">Exercise</a></li>
              <li><a href="#">passion</a></li>
              <li><button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#detail">Open Modal</button></li>
            </ul>  
          </div>
        </div>
      </div>
      <!-- END Page links -->
    </nav>
    <!-- END Navigation bar -->

    
<!-- detail modal -->

 <!-- Modal -->
  <div class="modal fade" id="detail">
      <!-- Modal content-->
 	<section style="width: 860px; margin: 0 auto; height: 100%;"> 
				<div class="tabs tabs-style-circle">
					<nav>
						<ul>
							<li class ="detail"><span  class="icon icon-plug"><span>hair</span></span></li>
							<li class ="detail"><span  class="icon icon-gift"><span>Molding</span></span></li>
							<li class ="detail"><span  class="icon icon-box"><span>sports</span></span></li>
							<li class ="detail"><span  class="icon icon-date"><span>Exercise</span></span></li>
							<li class ="detail"><span  class="icon icon-plane"><span>passion</span></span></li>
						</ul>
					</nav>
					<div class="content-wrap">
						<section id="section-circle-1">   
						   <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 category" id ="여자헤어" value ="여자헤어">
         				   <div class="shot shot-small">
                		   <div class="shot-preview">
                  			<a class="img" href="#"><img src="/final/resources/src/assets/img/shot-3.jpg" alt=""></a>
                  			<div class ="detailSubject">여자헤어</div>
                		   </div>
           			       </div>
              			   </div>
						   <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 category"id ="여자헤어2" value ="여자헤어2">
         				   <div class="shot shot-small">
                		   <div class="shot-preview">
                  			<a class="img" href="#"><img src="/final/resources/src/assets/img/shot-3.jpg" alt=""></a>
                  			<div class ="detailSubject">여자헤어2</div>
                		   </div>
           			       </div>
              			   </div>
						   <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 category" id ="여자헤어3" value ="여자헤어3">
         				   <div class="shot shot-small">
                		   <div class="shot-preview">
                  			<a class="img" href="#"><img src="/final/resources/src/assets/img/shot-3.jpg" alt=""></a>
                  			<div class ="detailSubject">여자헤어3</div>
                		   </div>
           			       </div>
              			   </div>
						   <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 category" id ="여자헤어3" value ="여자헤어3">
         				   <div class="shot shot-small">
                		   <div class="shot-preview">
                  			<a class="img" href="#"><img src="/final/resources/src/assets/img/shot-3.jpg" alt=""></a>
                  			<div class ="detailSubject">여자헤어3</div>
                		   </div>
           			       </div>
              			   </div>
           					 </section>
						<section id="section-circle-2" class ="detailcontents">
								   <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 category" id ="남자헤어" value ="남자헤어">
         				   <div class="shot shot-small">
                		   <div class="shot-preview">
                  			<a class="img" href="#"><img src="/final/resources/src/assets/img/shot-3.jpg" alt=""></a>
                  			<div class ="detailSubject">남자헤어</div>
                		   </div>
           			       </div>
              			   </div>
              			   	   <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 category" id ="남자헤어1" value ="남자헤어1">
         				   <div class="shot shot-small">
                		   <div class="shot-preview">
                  			<a class="img" href="#"><img src="/final/resources/src/assets/img/shot-3.jpg" alt=""></a>
                  			<div class ="detailSubject">남자헤어1</div>
                		   </div>
           			       </div>
              			   </div>
              			   	   <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 category" id ="남자헤어2" value ="남자헤어2">
         				   <div class="shot shot-small">
                		   <div class="shot-preview">
                  			<a class="img" href="#"><img src="/final/resources/src/assets/img/shot-3.jpg" alt=""></a>
                  			<div class ="detailSubject">남자헤어2</div>
                		   </div>
           			       </div>
              			   </div>
						</section>
						<section id="section-circle-3" class ="detailcontents">
						<p>카테고리가 없습니다.</p>
						</section>
						<section id="section-circle-4" class ="detailcontents">
						<p>카테고리가 없습니다.</p>
						</section>  
						<section id="section-circle-5" class ="detailcontents">
						<p>카테고리가 없습니다.</p>
						</section>
					</div>
					<!-- /content -->
				</div>
				<!-- /tabs -->
			<div id ="added"></div> <!--data-dismiss="modal"  -->
 				<button type="button" id ="fil" class="btn btn-default"  style="position: absolute;right: 20px; bottom: 30px;" onclick="javascript:fil()">확인</button>
 				<button id ="fil2" onclick="javascript:fil()">확인2</button>
			</section>
      </div>

	<!-- Main container -->

	<!-- Shots list -->
	<div id ="columns">
	<c:forEach var="item" items="${command}">
	<figure>
	<img alt="" src="${item.path}" class="sel"  title="${item.portfolioNo}" data-toggle="modal"data-target="#shot-modal" 
	style="cursor: pointer;"> <span class="like liked">11</span>
	<figcaption>
		<div class="shot-info">  
		<a href="user-profile.html"><img
		src="/final/resources/src/assets/img/avatar-1.jpg"
		alt="avatar"></a>
		<h6>
		<a href="shot-gallery.html">Donec vulputate justo</a>
		</h6>
		<p>
		<time datetime="2016-02-04 22:30">20 mins ago</time>
		in <a href="page-search.html">Website</a>
		</p>
		</div></figcaption>
	</figure>
	</c:forEach>
	</div>


	<!-- Back to top button -->
	<a id="scroll-up" href="#"><i class="ti-angle-up"></i></a>
	<!-- END Back to top button -->



	<!-- Shot description modal -->
	<div id="shot-modal" class="modal fade" tabindex="-1" role="dialog">
		<div class="modal-dialog modal-lg" role="document">
			<a class="close-modal" data-dismiss="modal" href="#"><i
				class="ti-close"></i></a>
			<div class="modal-content">

				<section class="no-border-bottom section-sm">
					<div class="container-fluid">
						<header class="section-header">
							<h3 id="subject">Facebook Groups Marketing Site</h3>
							<p>
								Posted on <span id="re_date"> 31 Jan, 2016 </span>for <a
									href="user-profile.html">Facebook</a>
							</p>
						</header>

						<div class="row">
							<div class="col-xs-12 col-md-8">

								<!-- Shot and details -->
								<div class="card no-margin-top">
									<div class="card-block">

										<ul class="image-gallery">
											<li
												data-thumb="/final/resources/src/assets/img/shot-big-1-thumb.jpg"
												data-src="assets/img/shot-big-1.jpg"><img id="img"
												src="/final/resources/src/assets/img/shot-big-1-thumb.jpg"
												alt="thumb"></li>
										</ul>

										<hr>
										<p id="content">New marketing site for Facebook Groups. We
											are excited to start publishing stories about great groups
											and provide useful tips to group admins and members.</p>

									</div>
								</div>
								<!-- END Shot and details -->
								<div id="commentD">
									<!-- Comments -->
									<div id="comments" class="card">
										<div class="card-header">
											<h6 id="size1">Comments (0)</h6>
											<div class="comment-pagination">
												<a class="next" href="#"><i class="ti-angle-down"></i></a>
											</div>
										</div>

										<ul class="comments">
											<li><a href="user-profile.html"><img
													src="/final/resources/src/assets/img/avatar-5.jpg"
													alt=""></a>
												<h6>
													<a href="user-profile.html">Dumduri</a>
													<time datetime="2016-02-04 22:30">1 days ago</time>
												</h6>
												<p>Cum sociis natoque penatibus et magnis dis parturient
													montes, nascetur ridiculus mus. Praesent scelerisque porta
													bibendum. Mauris ac libero convallis, facilisis diam quis,
													porta lorem. Aenean suscipit risus a faucibus porta.</p></li>
										</ul>

										<div class="comment-form">
											<img src="/final/resources/src/assets/img/avatar-2.jpg"
												alt="">
											<p>
												<input type="text" class="form-control" name="content"
													id="content2" placeholder="Leave a comment..." /> <input
													type="hidden" value="도영이" name="writer" id="writer" /> <input
													type="hidden" value="" name="num" id="num" />
											</p>
										</div>
									</div>
								</div>
								<!-- END Comments -->

							</div>

							<aside class="col-xs-12 col-md-4 shot-sidebar">
								<!-- User widget -->
								<div class="sidebar-block">
									<div class="shot-by-widget">
										<a href="user-profile.html"><img
											src="/final/resources/src/assets/img/avatar-4.jpg"
											alt="avatar"></a> <a class="username"
											href="user-profile.html">Facebook</a>
										<p class="title">Social company</p>
										<p class="subtitle">Ut pulvinar libero tortor, laoreet
											suscipit tellus varius nec.</p>

										<ul class="user-stats">
											<li><a href="user-profile.html"><i>Shots</i><span>125</span></a></li>
											<li><a href="user-followers.html"><i>Followers</i><span>2.3K</span></a></li>
											<li><a href="user-followers.html"><i>Following</i><span>279</span></a></li>
										</ul>

										<a class="btn btn-success btn-outline btn-sm" href="#">Follow</a>
									</div>
								</div>
								<!-- END User widget -->


								<!-- Shot stats -->
								<div class="sidebar-block">
									<ul class="single-shot-stats">
										<li><i class="fa fa-eye"></i><span id="readCount">658</span></li>
										<li><a class="like" href="#"><i class="fa fa-heart"></i><span>189</span></a></li>
									</ul>
								</div>
								<!-- END Shot stats -->

								<!-- Details -->
								<div class="sidebar-block">
									<h6>평점</h6>
									<dl class="half-half">
										<dt>점수</dt>
										<dd>
											<div
												style="CLEAR: both; PADDING-RIGHT: 0px; PADDING-LEFT: 0px; BACKGROUND: url(/MavenWeb/resources/src/icon_star2.gif) 0px 0px; FLOAT: left; PADDING-BOTTOM: 0px; MARGIN: 0px; WIDTH: 90px; PADDING-TOP: 0px; HEIGHT: 18px;">
												<p
													style="WIDTH: 29%; PADDING-RIGHT: 0px; PADDING-LEFT: 0px; BACKGROUND: url(/MavenWeb/resources/src/icon_star.gif) 0px 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px; HEIGHT: 18px;">
												</p>
											</div>
										</dd>
									</dl>
								</div>
								<!-- END Details -->


								<!-- Tags -->
								<div class="sidebar-block">
									<h6>Tags</h6>
									<div class="tag-list">
										<a href="#">Website</a> <a href="#">Social</a> <a href="#">App</a>
										<a href="#">Light design</a> <a href="#">Blue</a> <a href="#">Pages</a>
										<a href="#">Facebook</a>
									</div>
								</div>
								<!-- END Tags -->


								<!-- Share -->
								<div class="sidebar-block">
									<h6>Share on</h6>
									<ul class="social-icons text-center">
										<li><a class="facebook" href="#"><i
												class="fa fa-facebook"></i></a></li>
										<li><a class="twitter" href="#"><i
												class="fa fa-twitter"></i></a></li>
										<li><a class="dribbble" href="#"><i
												class="fa fa-dribbble"></i></a></li>
										<li><a class="linkedin" href="#"><i
												class="fa fa-linkedin"></i></a></li>
										<li><a class="instagram" href="#"><i
												class="fa fa-instagram"></i></a></li>
									</ul>
								</div>
								<!-- END Share -->
							</aside>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>

	<!-- END Shot description modal -->
	<div class="main">
		<div class="fixed-bar"  style="margin-left: 10000px;z-index: 10000;" id ="choo"  >
			<!-- Elastislide Carousel -->
			<ul id="carousel" class="elastislide-list">
				<li><a href="#"><img
						src="/MavenWeb/resources/src/Elastislide/images/small/1.jpg"
						alt="image01" /></a></li>
				<li><a href="#"><img
						src="/MavenWeb/resources/src/Elastislide/images/small/2.jpg"
						alt="image02" /></a></li>
				<li><a href="#"><img
						src="/MavenWeb/resources/src/Elastislide/images/small/3.jpg"
						alt="image03" /></a></li>
				<li><a href="#"><img
						src="/MavenWeb/resources/src/Elastislide/images/small/4.jpg"
						alt="image04" /></a></li>
				<li><a href="#"><img
						src="/MavenWeb/resources/src/Elastislide/images/small/5.jpg"
						alt="image05" /></a></li>
				<li><a href="#"><img
						src="/MavenWeb/resources/src/Elastislide/images/small/6.jpg"
						alt="image06" /></a></li>
				<li><a href="#"><img
						src="/MavenWeb/resources/src/Elastislide/images/small/7.jpg"
						alt="image07" /></a></li>
				<li><a href="#"><img
						src="/MavenWeb/resources/src/Elastislide/images/small/8.jpg"
						alt="image08" /></a></li>
				<li><a href="#"><img
						src="/MavenWeb/resources/src/Elastislide/images/small/9.jpg"
						alt="image09" /></a></li>
				<li><a href="#"><img
						src="/MavenWeb/resources/src/Elastislide/images/small/10.jpg"
						alt="image10" /></a></li>
				<li><a href="#"><img
						src="/MavenWeb/resources/src/Elastislide/images/small/11.jpg"
						alt="image11" /></a></li>
				<li><a href="#"><img
						src="/MavenWeb/resources/src/Elastislide/images/small/12.jpg"
						alt="image12" /></a></li>
				<li><a href="#"><img
						src="/MavenWeb/resources/src/Elastislide/images/small/13.jpg"
						alt="image13" /></a></li>
				<li><a href="#"><img
						src="/MavenWeb/resources/src/Elastislide/images/small/14.jpg"
						alt="image14" /></a></li>
				<li><a href="#"><img
						src="/MavenWeb/resources/src/Elastislide/images/small/15.jpg"
						alt="image15" /></a></li>
				<li><a href="#"><img
						src="/MavenWeb/resources/src/Elastislide/images/small/16.jpg"
						alt="image16" /></a></li>
				<li><a href="#"><img
						src="/MavenWeb/resources/src/Elastislide/images/small/17.jpg"
						alt="image17" /></a></li>
				<li><a href="#"><img
						src="/MavenWeb/resources/src/Elastislide/images/small/18.jpg"
						alt="image18" /></a></li>
				<li><a href="#"><img
						src="/MavenWeb/resources/src/Elastislide/images/small/19.jpg"
						alt="image19" /></a></li>
				<li><a href="#"><img
						src="/MavenWeb/resources/src/Elastislide/images/small/20.jpg"
						alt="image20" /></a></li>
			</ul>
			<div style="position: absolute; bottom: 87%; right: 10px; color: red;">
				<span class="ti-close" style="cursor: pointer;" id="clo"></span>
			</div>
			<!-- End Elastislide Carousel -->
		</div>
	</div>
<button class ="btn btn-primary" id="cho2" style="z-index: 100000;">버튼이다</button>



	<script type="text/javascript"
		src="/MavenWeb/resources/src/Elastislide/js/jquerypp.custom.js"></script>
	<script	src="/MavenWeb/resources/src/Elastislide/js/modernizr.custom.17475.js"></script>
	<script type="text/javascript"
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
	<script type="text/javascript"
		src="/final/resources/src/Elastislide/js/jquery.elastislide.js"></script>
	<script type="text/javascript">
		$('#carousel').elastislide({
			minItems : 2
		});
	</script>
</body>
</html>
