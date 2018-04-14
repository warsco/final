	$(".sel").click(function(){ 
		alert("Asd");
		var url= "/MavenWeb/tiles/image/list.do";
		   var params= "params="+$(this).attr("title");
		   $.ajax({
		      type:"post"      // 포스트방식
		      ,url:url      // url 주소
		      ,data:params   //  요청에 전달되는 프로퍼티를 가진 객체
		      ,dataType:"json"
		      ,success:function(args){   //응답이 성공 상태 코드를 반환하면 호출되는 함수
		    	   var contents = args.content;
		    		var  re_date =contents.re_date;
		    		var  num =contents.num;
		    		var  subject =contents.subject;
		    		var  filePath = contents.filePath;
		    		var  fileName = contents.fileName;
		    		var  fileSize = contents.fileSize;
		    		var  content = contents.content;
		    		var  extension = contents.extension;
		    		var  readCount = contents.readCount;
		    		var commentCount = args.commentCount;
		    		
				$("#img").prop("src",filePath);
				$("#extension").text(extension);
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


$(function(){
	   $("#content2").keydown(function(key) {
		   if (key.keyCode == 13) {
				var url= "/MavenWeb/tiles/i_board/add.do";
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
			
			
