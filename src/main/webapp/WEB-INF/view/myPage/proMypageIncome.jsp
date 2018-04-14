<%@ page contentType="text/html; charset=UTF-8"%>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="theshots is a directory listing template.">
    <meta name="keywords" content="">
<script src="https://code.jquery.com/jquery-3.2.1.min.js" ></script>
    <style>
    	.graphValue{
    		position:relative;
    		height:100%;
    		box-shadow:0px 0px 2px 2px rgba(50,50,50,0.15);
    	}
    	.graphValue >div{
    		position:absolute;
    	}
    
    	.side_list{
    	margin-bottom:5px;
    	}
    	.side_list > .btn{
    		font-size:20px;
    		background-color:white;
    		border:0; 
    		width:100%;
    		color:black;
    	}
     	.graph>div>div>div{
    		padding:20px;
    		position:relative;
    		height:95%;
    		margin-top:20px;
    		line-height:1.2;
    	}
    	.graph>div>div>div>div{
    		position:absolute;
    		background-color:aliceblue;
    		bottom:0;
    		width:20px;
    		box-shadow:0px 0px 2px 3px rgba(50,50,50,0.15);
    	} 
    	.graphDay>div div{
    		text-align:center;
    	}
    	
    	.myPageMain{
    		text-align:center;
    		font-size:30px;
    	}
    	.dayIncomeCount>div{
    		position:absolute;
    	}
    	.dayIncomeValue>div{
    		position:absolute; 
    	} 

    	.incomeList > div{
			 	padding:0;
		 }
		 .incomeList > div > div{
		 	box-shadow:0px 0px 2px 2px rgba(50,50,50,0.15);
		 	text-align:center;
		 	padding:0;
		 } 
		 .incomeList > div > div{
		 	height:12%;
		 	line-height:2.3;
		 }
		 
		  
		 .incomeList > div:nth-child(1) > div{
		 	height:19%;
		 	font-size:25px;
		 	line-height:2;
		 }
    </style>  
    
  </head>
  <body>
	<!-- 마이페이지 -->
	<div class="container" > 
		<div class="page-links">
	        <div class="container">
	           <div class="pull-left">
	            <ul class="link-list"> 
	              <li><a class="" href="/final/myPage/memberMypage.do">마이페이지(일반)</a></li>
	              <li><a class="active" href="/final/myPage/proMemberMypage.do">마이페이지(전문가)</a></li>  
	              <li><a class="" href="/final/myPage/proMypageInfomodify.do">내 정보 수정(전문가)</a></li>
	              <li><a class="" href="/final/myPage/proMypageRequest.do">의뢰(전문가)</a></li>
	              <li><a class="" href="/final/myPage/proMypageProject.do">프로젝트(전문가)</a></li>
	              <li><a class="" href="/final/myPage/proMypagePortfolio.do">포트폴리오(전문가)</a></li>
	              <li><a class="" href="/final/myPage/proMypageIncome.do">수익내역(전문가)</a></li>
	            </ul> 
	           </div>
	    	</div> 
		</div> 
		
		<div class="col-xs-12" style="height:120%;">
			<div class="col-xs-4" style="height:18%; padding-top:55px;"> 
				<div class="col-xs-12" style="box-shadow:0px 0px 10px 1px rgba(250,200,200,1);height:150px;padding:0;">
					<div class="col-xs-12" style="text-align:center;font-size:25px;height:25%;padding-top:10px;">오늘 수입</div>
					<div class="col-xs-12" style="text-align:center;font-size:45px;line-height:2.5; height:75%;">10,000,000</div>
				</div>
			</div>
			<div class="col-xs-4" style="height:18%; padding-top:55px;">
				<div class="col-xs-12" style="box-shadow:0px 0px 10px 1px rgba(250,200,200,1);height:150px;padding:0;">
					<div class="col-xs-12" style="text-align:center;font-size:25px;height:25%;padding-top:10px;">이번달 수입</div>
					<div class="col-xs-12" style="text-align:center;font-size:45px;line-height:2.5; height:75%;">100,000,000</div>
				</div>
			</div>
			<div class="col-xs-4" style="height:18%; padding-top:55px;">
				<div class="col-xs-12" style="box-shadow:0px 0px 10px 1px rgba(250,200,200,1);height:150px;padding:0;">
					<div class="col-xs-12" style="text-align:center;font-size:25px;height:25%;padding-top:10px;">연 수입</div>
					<div class="col-xs-12" style="text-align:center;font-size:45px;line-height:2.5; height:75%;">1,000,000,000</div>
				</div>
			</div>
			 <div class="col-xs-12" style="height:50%;">
			 	<div class="col-xs-12" style="font-size:30px;padding-top:50px;padding-bottom:30px;text-align:center;height:20%;" >
			 		<span class="ti-control-backward btn" style="border:0;background:white;color:black;font-size:30px;"></span>
			 			2018-04-01 - 2018-04-30
			 		<span class="ti-control-forward btn" style="border:0;background:white;color:black;font-size:30px;"></span>
			 	</div>
			 	
			 	<div class="col-xs-1 graphValue" style="height:75%">
			 			<div style="bottom:93%">100%</div> 
				 		<div style="bottom:70%">75%</div>
				 		<div style="bottom:45%">50%</div>
				 		<div style="bottom:20%">25%</div>
			 	</div>
			 	<div class="col-xs-11 graph" style="height:	75%;box-shadow:0px 0px 2px 2px rgba(50,50,50,0.15); padding:0;">
			 		<div>
			 			<div class="col-xs-12 dayIncomeValue" style="padding:0;">
			 				<div class="col-xs-12"> 
						 		<div style="left:2.5%;height:50%;"></div>
						 		<div style="left:5.6%;height:50%;"></div>   
						 		<div style="left:8.7%;height:50%;"></div>
						 		<div style="left:11.8%;height:50%;"></div>
						 		<div style="left:14.9%;height:50%;"></div> 
						 		<div style="left:18%;height:50%;"></div>
						 		<div style="left:21.1%;height:50%;"></div>
						 		<div style="left:24.2%;height:50%;"></div>
						 		<div style="left:27.4%;height:50%;"></div>  
						 		<div style="left:30.7%;height:50%;"></div>
						 		<div style="left:33.8%;height:50%;"></div>
						 		<div style="left:36.9%;height:50%;"></div>
						 		<div style="left:40%;height:50%;"></div> 
						 		<div style="left:43.1%;height:50%;"></div>
						 		<div style="left:46.2%;height:50%;"></div>
						 		<div style="left:49.3%;height:50%;"></div>
						 		<div style="left:52.4%;height:50%;"></div>
						 		<div style="left:55.5%;height:50%;"></div> 
						 		<div style="left:58.6%;height:50%;"></div>
						 		<div style="left:61.7%;height:50%;"></div>
						 		<div style="left:64.8%;height:50%;"></div> 
						 		<div style="left:67.9%;height:50%;"></div> 
						 		<div style="left:71%;height:50%;"></div>
						 		<div style="left:74.1%;height:50%;"></div>
						 		<div style="left:77.2%;height:50%;"></div>
						 		<div style="left:80.3%;height:50%;"></div>
						 		<div style="left:83.4%;height:50%;"></div> 
						 		<div style="left:86.5%;height:50%;"></div>
						 		<div style="left:89.6%;height:50%;"></div>
						 		<div style="left:92.7%;height:50%;"></div>
						 		<div style="left:95.8%;height:50%;"></div>
			 				</div>
				 		</div> 
			 		</div>
			 	</div>
			 	<div class="col-xs-12 graphDay" style="box-shadow:0px 0px 2px 2px rgba(50,50,50,0.15);padding:0;height:5%;">
			 		<div class="col-xs-1"></div>
				 	<div class="col-xs-11" style="font-size:12px;height:40px;line-height:2.5;padding:0;">
				 		<div class="col-xs-12 dayIncomeCount" style="position:relative;">
					 		<div style="left:3.1%;">1</div>
					 		<div style="left:6.2%;">2</div>
					 		<div style="left:9.3%;">3</div>
					 		<div style="left:12.4%;">4</div> 
					 		<div style="left:15.5%;">5</div>
					 		<div style="left:18.6%;">6</div>
					 		<div style="left:21.7%;">7</div>
					 		<div style="left:24.8%;">8</div>
					 		<div style="left:27.9%;">9</div>
					 		<div style="left:31%;">10</div>
					 		<div style="left:34.1%;">11</div>
					 		<div style="left:37.2%;">12</div>
					 		<div style="left:40.3%;">13</div>
					 		<div style="left:43.4%;">14</div>
					 		<div style="left:46.5%;">15</div>
					 		<div style="left:49.6%;">16</div> 
					 		<div style="left:52.7%;">17</div>
					 		<div style="left:55.8%;">18</div>
					 		<div style="left:58.9%;">19</div>
					 		<div style="left:62%;">20</div>
					 		<div style="left:65.1%;">21</div>
					 		<div style="left:68.2%;">22</div>
					 		<div style="left:71.3%;">23</div>
					 		<div style="left:74.4%;">24</div>
					 		<div style="left:77.5%;">25</div>
					 		<div style="left:80.6%;">26</div>
					 		<div style="left:83.7%;">27</div> 
					 		<div style="left:86.8%;">28</div>
					 		<div style="left:89.9%;">29</div> 
					 		<div style="left:93%;">30</div>  
					 		<div style="left:96.1%;">31</div> 
				 		</div> 
				 	</div>
				 </div>
			 </div>
			 
			 
			 
			 <div class="col-xs-12 incomeList" style="height:25%;padding-top:10px;"> 
			 	<div class="col-xs-12" >
			 		<div class="col-xs-3">날짜</div>
			 		<div class="col-xs-2">의뢰인</div> 
			 		<div class="col-xs-2">성별</div>
			 		<div class="col-xs-3">구분</div>
			 		<div class="col-xs-2">금액</div>
			 	</div>
			 	<div class="col-xs-12" >
			 		<div class="col-xs-3">2018-04-05</div>
			 		<div class="col-xs-2">한지수</div>
			 		<div class="col-xs-2">남성</div>
			 		<div class="col-xs-3">눈성형</div>
			 		<div class="col-xs-2">1,000,000</div> 
			 	</div>
			 	<div class="col-xs-12" >
			 		<div class="col-xs-3">2018-04-05</div>
			 		<div class="col-xs-2">한지수</div>
			 		<div class="col-xs-2">남성</div>
			 		<div class="col-xs-3">눈성형</div>
			 		<div class="col-xs-2">1,000,000</div> 
			 	</div>
			 	<div class="col-xs-12" >
			 		<div class="col-xs-3">2018-04-05</div>
			 		<div class="col-xs-2">한지수</div>
			 		<div class="col-xs-2">남성</div>
			 		<div class="col-xs-3">눈성형</div>
			 		<div class="col-xs-2">1,000,000</div> 
			 	</div>
			 	<div class="col-xs-12" >
			 		<div class="col-xs-3">2018-04-05</div>
			 		<div class="col-xs-2">한지수</div>
			 		<div class="col-xs-2">남성</div>
			 		<div class="col-xs-3">눈성형</div>
			 		<div class="col-xs-2">1,000,000</div> 
			 	</div>
			 	<div class="col-xs-12" >
			 		<div class="col-xs-3">2018-04-05</div>
			 		<div class="col-xs-2">한지수</div>
			 		<div class="col-xs-2">남성</div>
			 		<div class="col-xs-3">눈성형</div>
			 		<div class="col-xs-2">1,000,000</div> 
			 	</div>  
			 </div>
			 <div class="col-xs-12" id="pageNation" style="height:6%;text-align:center;">
				<div>
					<span class="ti-control-backward btn" style="border:0;background:white;color:black;font-size:30px;"></span>
					<input type="button" class="btn-default" value="1">
					<input type="button" class="btn-default" value="2">
					<input type="button" class="btn-default" value="3">
					<input type="button" class="btn-default" value="4">
					<input type="button" class="btn-default" value="5">
					<span class="ti-control-forward btn" style="border:0;background:white;color:black;font-size:30px;"></span>
				</div>
			</div>
		</div>
	</div>

  </body>
</html>