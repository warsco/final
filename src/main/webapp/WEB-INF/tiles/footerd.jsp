<%@ page contentType="text/html; charset=UTF-8"%>
<footer class="site-footer no-margin-top">

      <!-- Top section -->
      <div class="container">
        <div class="row">
          <div class="col-sm-12 col-md-5">
            <h6>About</h6>
            <p class="text-justify"><strong>TheShots</strong> is a powerful, responsive, and high-performance image listing template. It's based on Bootstrap and contains a lot of components to easily make an image listing website. This template comes with a simple yet beautiful design which focused on ease of use for users. Take a tour in the website and check our intensive <a href="http://shamsoft.net/theshots/docs" target="_blank">online documentation</a> before make a purchuse!</p>
          </div>

          <div class="col-xs-12 col-sm-4 col-md-2">
            <h6>Company</h6>
            <ul class="footer-links">
              <li><a href="page-about.html">About us</a></li>
              <li><a href="page-typography.html">How it works</a></li>
              <li><a href="page-typography.html">Terms of use</a></li>
              <li><a href="page-typography.html">Privacy policy</a></li>
              <li><a href="page-contact.html">Contact us</a></li>
            </ul>
          </div>

          <div class="col-xs-12 col-sm-4 col-md-2">
            <h6>Support</h6>
            <ul class="footer-links">
              <li><a href="page-faq.html">Help center</a></li>
              <li><a href="#">Tutorials</a></li>
              <li><a href="#">Forums</a></li>
              <li><a href="#">Official blog</a></li>
              <li><a href="#">Ask question</a></li>
            </ul>
          </div>

          <div class="col-xs-12 col-sm-4 col-md-3">
            <h6>Newsletter</h6>
            <p><strong>Subscribe</strong> to our newsletter to receive news, updates, and special offers:</p>
            <br>
            <input type="text" class="form-control" placeholder="Enter your email address">
            <button class="btn btn-primary btn-sm btn-block" type="button"><i class="fa fa-paper-plane"></i> Subscribe</button>
          </div>
        </div>

        <hr>
      </div>
      <!-- END Top section -->

      <!-- Bottom section -->
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-sm-6 col-xs-12">
            <p class="copyright-text">Copyrights &copy; 2016 All Rights Reserved by <a href="http://themeforest.net/user/shamsoft">ShaMSofT</a>.</p>
          </div>

          <div class="col-md-4 col-sm-6 col-xs-12">
            <ul class="social-icons">
              <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
              <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
              <li><a class="instagram" href="#"><i class="fa fa-instagram"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
      <!-- END Bottom section -->
      
      
<script src="/final/resources/src/TabStylesInspiration/js/cbpFWTabs.js"></script>
<script src="/final/resources/src/TabStylesInspiration/js/modernizr.custom.js"></script>
<script>
(function() {
	[].slice.call( document.querySelectorAll( '.tabs' ) ).forEach( function( el ) {
		new CBPFWTabs( el );
	});

})();

var names = [];
var id = [];
var uniqueNames = [];
var uniqueId = [];
$(document).on("click",".category",function() {
					names.push($(this).attr("value"));
					id.push($(this).attr("id"));
					var s = $(this).attr("value");
					var y = $(this).attr("id");

					$(".addee").each(function() {
						if ($(this).attr("id") == y) {
							$(this).remove();
						}
					});

					$("#added")
							.append(
									"<dib class = 'addee' id ="+y+"  value ='"+s+"'><a class ='label label-primary added' >"+
									s
											+ "</a><span class='ti-close'></span><br><br></div>");  
				});
$(document).on("click", ".addee", function() {
	$(this).remove();

})
</script>

      
<script src="/MavenWeb/resources/src/assets/js/app.min.js"></script>
<script src="/MavenWeb/resources/src/assets/js/theshots.js"></script>  
<script src="/MavenWeb/resources/src/assets/js/custom.js"></script>

