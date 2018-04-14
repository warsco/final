<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

      <!-- Modal -->
      <div class="modal fade" id="myModal" role="dialog">
         <div class="modal-dialog" style="margin-top:15%;"> 

            <!-- Modal content-->
            <div class="modal-content">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">로그인</h4>
               </div>
 
               <br>

                  <div class="container">
                     <div class="col-xs-12 col-sm-1 col-md-1 col-lg-6 header-form-wrapper"> 
						<form class="header-form visible" action="/final/login/loginTry.do" method="post"  style="background:white;padding-top:25px;padding-bottom:30px;">
						
			            <div class="form-group">
			              <input class="form-control input-lg" type="text" name="memberNo" placeholder="아이디" style="box-shadow:0px 0px 1px 1px rgba(50,50,50,0.2);">
			            </div>
			            <div class="form-group">
			              <input class="form-control input-lg" type="password" name="passwd" placeholder="비밀번호" style="box-shadow:0px 0px 1px 1px rgba(50,50,50,0.2);">
			            </div>
			            
			            <p class="small text-muted">아이디찾기 / 비밀번호 찾기</p>
			            <br>
			            
			            <div class="row">
			              <div class="col-xs-6">
			                <button class="btn btn-primary btn-block" type="button" onclick="document.location='/final/register/register.do'">회원가입</button>
			              </div>
			              <div class="col-xs-6">
			                <button class="btn btn-primary btn-block" type="submit">로그인</button>
			              </div>
			            </div>
			          </form>
                     </div>
                  </div>
            </div>
         </div>
</div>
