<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
<!-- <link rel="stylesheet" type="text/css" href="/MavenWeb/resources/src/CreativeButtons/css/default.css" />
<link rel="stylesheet" type="text/css" href="/MavenWeb/resources/src/CreativeButtons/css/component.css" /> -->	 
<link rel="stylesheet" type="text/css" href="/MavenWeb/resources/src/Elastislide/css/demo.css" />

<link rel="stylesheet" type="text/css" href="/MavenWeb/resources/src/Elastislide/css/elastislide.css" /> --
<link rel="stylesheet" type="text/css" href="/MavenWeb/resources/src/Elastislide/css/custom.css" />
<
<!DOCTYPE>
<html>

<!-- Main container -->

<!-- Shots list -->
<section class="no-border-bottom section-sm">
	<div class="container">
		<div class="row">
			<!--             Shot               -->
			<c:forEach var="item" items="${command}">
				<div class="col-xs-12 col-sm-6 col-md-4 sel" title="${item.num}">
					<div class="shot shot-small " data-toggle="modal"
						data-target="#shot-modal">
						<div class="shot-preview">
							<img src="${item.filePath}" alt="게시판 이미지"
								style="cursor: pointer;"> <span class="like liked"></span>
						</div>
						<div class="shot-info">
							<a href="user-profile.html"><img
								src="/MavenWeb/resources/src/assets/img/avatar-1.jpg"
								alt="avatar"></a>
							<h6>
								<a href="shot-gallery.html">Donec vulputate justo</a>
							</h6>
							<p>
								<time datetime="2016-02-04 22:30">20 mins ago</time>
								in <a href="page-search.html">Website</a>
							</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<!-- END Shot -->
	</div>
</section>
<!-- END Shots list -->
<!-- END Main container -->



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
											data-thumb="/MavenWeb/resources/src/assets/img/shot-big-1-thumb.jpg"
											data-src="assets/img/shot-big-1.jpg"><img id="img"
											src="/MavenWeb/resources/src/assets/img/shot-big-1-thumb.jpg"
											alt="thumb"></li>

										<li
											data-thumb="/MavenWeb/resources/src/assets/img/shot-big-2-thumb.jpg"
											data-src="/MavenWeb/resources/src/assets/img/shot-big-2.jpg">
											<img
											src="/MavenWeb/resources/src/assets/img/shot-big-2-thumb.jpg"
											alt="thumb">
										</li>

										<li
											data-thumb="/MavenWeb/resources/src/assets/img/shot-big-3-thumb.jpg"
											data-src="/MavenWeb/resources/src/assets/img/shot-big-3.jpg">
											<img
											src="/MavenWeb/resources/src/assets/img/shot-big-3-thumb.jpg"
											alt="thumb">
										</li>

										<li
											data-thumb="/MavenWeb/resources/src/assets/img/shot-big-4-thumb.jpg"
											data-src="/MavenWeb/resources/src/assets/img/shot-big-4.jpg">
											<img
											src="/MavenWeb/resources/src/assets/img/shot-big-4-thumb.jpg"
											alt="thumb">
										</li>
									</ul>

									<hr>
									<p id="content">New marketing site for Facebook Groups. We
										are excited to start publishing stories about great groups and
										provide useful tips to group admins and members.</p>

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
												src="/MavenWeb/resources/src/assets/img/avatar-5.jpg" alt=""></a>
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
										<img src="/MavenWeb/resources/src/assets/img/avatar-2.jpg"
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
										src="/MavenWeb/resources/src/assets/img/avatar-4.jpg"
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
								<h6>Details</h6>
								<dl class="half-half">
									<dt>Size</dt>
									<dd>5472 x 3648</dd>

									<dt>File size</dt>
									<dd id="size">1.1 MB</dd>
									<dt>File type</dt>
									<dd id="extension">Jpeg</dd>

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


							<!-- More shots -->
							<div class="sidebar-block">
								<h6>More from Facebook</h6>
								<ul class="photo-list cols-2">
									<li><a href="#"><img
											src="/MavenWeb/resources/src/assets/img/shot-3.jpg" alt=""></a></li>
									<li><a href="#"><img
											src="/MavenWeb/resources/src/assets/img/shot-4.jpg" alt=""></a></li>
									<li><a href="#"><img
											src="/MavenWeb/resources/src/assets/img/shot-7.jpg" alt=""></a></li>
									<li><a href="#"><img
											src="/MavenWeb/resources/src/assets/img/shot-6.jpg" alt=""></a></li>
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

  <button class="btn btn-2 btn-2i" class ="ti-angle-up" id ="cho">추천</button>
  
			<div class="fixed-bar">
				<ul id="carousel" class="elastislide-list">
					<li><a href="#"><img src="/MavenWeb/resources/src/Elastislide/images/small/1.jpg"
							alt="image01" /></a></li>
					<li><a href="#"><img src="/MavenWeb/resources/src/Elastislide/images/small/2.jpg"
							alt="image02" /></a></li>
					<li><a href="#"><img src="/MavenWeb/resources/src/Elastislide/images/small/3.jpg"
							alt="image03" /></a></li>
					<li><a href="#"><img src="/MavenWeb/resources/src/Elastislide/images/small/4.jpg"
							alt="image04" /></a></li>
					<li><a href="#"><img src="/MavenWeb/resources/src/Elastislide/images/small/5.jpg"
							alt="image05" /></a></li>
					<li><a href="#"><img src="/MavenWeb/resources/src/Elastislide/images/small/6.jpg"
							alt="image06" /></a></li>
					<li><a href="#"><img src="/MavenWeb/resources/src/Elastislide/images/small/7.jpg"
							alt="image07" /></a></li>
					<li><a href="#"><img src="/MavenWeb/resources/src/Elastislide/images/small/8.jpg"
							alt="image08" /></a></li>
					<li><a href="#"><img src="/MavenWeb/resources/src/Elastislide/images/small/9.jpg"
							alt="image09" /></a></li>
					<li><a href="#"><img src="/MavenWeb/resources/src/Elastislide/images/small/10.jpg"
							alt="image10" /></a></li>
					<li><a href="#"><img src="/MavenWeb/resources/src/Elastislide/images/small/11.jpg"
							alt="image11" /></a></li>
					<li><a href="#"><img src="/MavenWeb/resources/src/Elastislide/images/small/12.jpg"
							alt="image12" /></a></li>
					<li><a href="#"><img src="/MavenWeb/resources/src/Elastislide/images/small/13.jpg"
							alt="image13" /></a></li>
					<li><a href="#"><img src="/MavenWeb/resources/src/Elastislide/images/small/14.jpg"
							alt="image14" /></a></li>
					<li><a href="#"><img src="/MavenWeb/resources/src/Elastislide/images/small/15.jpg"
							alt="image15" /></a></li>
					<li><a href="#"><img src="/MavenWeb/resources/src/Elastislide/images/small/16.jpg"
							alt="image16" /></a></li>
					<li><a href="#"><img src="/MavenWeb/resources/src/Elastislide/images/small/17.jpg"
							alt="image17" /></a></li>
					<li><a href="#"><img src="/MavenWeb/resources/src/Elastislide/images/small/18.jpg"
							alt="image18" /></a></li>
					<li><a href="#"><img src="/MavenWeb/resources/src/Elastislide/images/small/19.jpg"
							alt="image19" /></a></li>
					<li><a href="#"><img src="/MavenWeb/resources/src/Elastislide/images/small/20.jpg"
							alt="image20" /></a></li>
				</ul>
				<!-- End Elastislide Carousel -->
			<div style="position: absolute; bottom: 87%; right: 10px; color: red;">
				<span class="ti-close" style="cursor: pointer;" id ="clo"></span>
			</div>
			</div>

</body>
</html>
