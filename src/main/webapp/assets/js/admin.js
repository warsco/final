//카테고리 대분류 리스트 불러오기
function catList(){
	
	var comAjax = new ComAjax();
	comAjax.setUrl("/final/catList.do");
    comAjax.setCallback("catCallback");
    comAjax.addParam("test", "테스트");
    comAjax.ajax();
}

//카테고리 선택(하위카테고리 리스트생성)
function subCatList(id,fieldno) {
		$(".admin_category").removeClass("clicked");
		$("#"+id).addClass("clicked");
		var category = id;
		
		var title =category;
		$("#title_subcat").empty();
		$("#title_subcat").append(title);
		$('#sub_cat_thead').show();

		
		var comAjax = new ComAjax();
		comAjax.setUrl("/final/subCatList.do");
	    comAjax.setCallback("subCatCallback");
	    comAjax.addParam("category", category);
	    comAjax.addParam("fieldno", fieldno);
	    comAjax.ajax();
};

//카테고리 리스트 콜백
function catCallback(data){
	var str = "";
	var catList = data.catList;
	$("#cat_list").empty();
	$('#sub_cat_thead').hide();

	$.each(catList, function(key, value){
        str += "<tr>"+
				  "<td class='admin_category' id='"+value.CATEGORY+"' onclick=subCatList('"+value.CATEGORY+"',"+value.FIELDNO+")>"+
					"&nbsp;<span>"+value.CATEGORY+"</span>"+
					"<a class='pull-right' style='font-size:10px; margin-left:10px; cursor:pointer;' onclick=delCat("+value.FIELDNO+",'')>삭제</a>"+
					"<a class='pull-right' style='font-size:10px; margin-left:10px; cursor:pointer;' onclick=modCat('"+value.CATEGORY+"')>수정</a>"+
				  "</td>"+
				"</tr>";
    });
    $("#cat_list").append(str);
}

//카테고리 중분류 리스트 콜백
function subCatCallback(data){
	$("#sub_cat_list").empty();
	var str = "";
	
	var subCatList = data.subCatList;
	
	$.each(subCatList, function(key, value){
        str += "<tr>" +
        			"<td class='admin_sub_category' onclick=clickEvent('"+value.SUB_CATEGORY+"') id='cat_" +value.SUB_CATEGORY+ "'>"+
   					
   					"<input type='hidden' value='" +value.CATEGORY+"'/>"+
   					"&nbsp; <span>"+ value.SUB_CATEGORY+"</span>"+
   					"<a class='pull-right' style='font-size:10px; margin-left:10px' onclick=delCat('','"+value.SUB_CATEGORY+"')>삭제</a>"+
   					"<a class='pull-right' style='font-size:10px; margin-left:10px' onclick=modCat('"+value.SUB_CATEGORY+"',"+value.FIELDNO+",'"+value.CATEGORY+"')>수정</a>"+
   					"</td>"+
	         "</tr>";
    });
    $("#sub_cat_list").append(str);
}

//중분류 클릭이벤트(색상)
function clickEvent(id){
	$(".admin_sub_category").removeClass("clicked");
	$("#cat_"+id).addClass("clicked");
}

//대분류 카테고리 등록
function addCat(){
	$(".addCatInput").remove();
	str = "<tr class='addCatInput' style='cursor:pointer;'>"+
			 "<td style='background-color:#ffecfb; border:2px;'><span><label for='add' style='font-size:12px;'>< 카테고리 추가 ></label><br> <input id='add_cat'></span>"+
			 "<a style='font-size:11px; margin-left:5px; margin-right:5px;' onclick='save_addCat()'>저장</a>"+
			 "<a style='font-size:11px;' onclick=cancleAddCat()>취소</a></td>"+
		  "</tr>"
	$("#cat_list").append(str);
}

//중분류 카테고리 등록
function addSubCat(){
	$(".addCatInput").remove();
	str = "<tr class='addCatInput' style='cursor:pointer;'>"+
	"<td style='background-color:#ffecfb; border:2px;'><span><label for='add' style='font-size:12px;'><하위 카테고리 추가 ></label><br> <input id='add_cat'></span>"+
	"<a style='font-size:11px; margin-left:5px; margin-right:5px;' onclick='save_addSubCat()'>저장</a>"+
	"<a style='font-size:11px;' onclick=cancleAddCat()>취소</a></td>"+
	"</tr>"
	$("#sub_cat_list").append(str);
}

//대분류 카테고리 등록 저장
function save_addCat(){
	var category = $("#add_cat").val();
	
	if(category==""){
		alert("1글자 이상 입력해주세요");
		return;
	}
	
	var comAjax = new ComAjax();
	comAjax.setUrl("/final/addCat.do");
    comAjax.setCallback("catCallback");
    comAjax.addParam("category", category);
    comAjax.ajax();
}

//중분류 카테고리 등록 저장
function save_addSubCat(){
	var sub_category = $("#add_cat").val();
	var category = $("#title_subcat").text();
	if(sub_category==""){
		alert("1글자 이상 입력해주세요");
		return;
	}
	var comAjax = new ComAjax();
	comAjax.setUrl("/final/addCat.do");
    comAjax.setCallback("subCatCallback");
    comAjax.addParam("category", category);
    comAjax.addParam("sub_category", sub_category);
    comAjax.ajax();
}

//카테고리 등록 취소
function cancleAddCat(){
	$(".addCatInput").remove();
}


//카테고리 삭제
function delCat(fieldno, sub_category){
	
	if (confirm("정말 카테고리를 삭제 하시겠습니까? \n대분류 카테고리를 삭제 할 경우 모든 하위 카테고리도 삭제됩니다.") == true){    //확인
		
		var comAjax = new ComAjax();
		comAjax.setUrl("/final/delCat.do");
		
		if(sub_category==''){
			comAjax.setCallback("catCallback");
		}else{
			comAjax.setCallback("subCatCallback");
			comAjax.addParam("category", $("#title_subcat").text());
		}
			
	    comAjax.addParam("fieldno", fieldno);
	    comAjax.addParam("sub_category", sub_category);
	    comAjax.ajax();
	}else{   //취소
		return;
	}
}

//카테고리 수정모드
function modCat(category,sub,bcat){
	var str = "";
	
	var bcat = bcat;
	
	//대분류
	if(sub==null){
	
	var id = category;
	
	str = "<input type='text' value='"+ category +"' name='category' id=mod_"+category+">"+
	  "<a style='font-size:11px; margin-left:5px; margin-right:5px;' onclick=save('"+category+"')>저장</a>" +
	  "<a style='font-size:11px;' onclick=cancle('"+category+"')>취소</a>"
	  
	//중분류
	}else{
	
	var id = "cat_"+category;
	
	str = "<input type='text' value='"+ category +"' name='category' id=mod_"+category+">"+
	  "<a style='font-size:11px; margin-left:5px; margin-right:5px;' onclick=save_sub('"+category+"','"+bcat+"')>저장</a>" +
	  "<a style='font-size:11px;' onclick=cancle('"+category+"','"+bcat+"')>취소</a>"
		
	}
	 
	$("#"+id).children("span").empty();
	 $("#"+id).children("span").append(str);
}

//카테고리(대분류) 이름 수정 저장
function save(category){
		
	if($("#mod_"+category).val()=="" || $("#mod_"+category).val()==null){
		alert("1글자 이상 입력해주세요");
		return;
	}
	
	if (confirm("정말 수정하시겠습니까?") == true){    //확인
		var new_category = $("#mod_"+category).val();
		
		var comAjax = new ComAjax();
		comAjax.setUrl("/final/modifyCat.do");
	    comAjax.setCallback("catCallback");
	    comAjax.addParam("category", category);
	    comAjax.addParam("new_category", new_category);
	    comAjax.ajax();

	}else{   //취소
		cancle(category);
	}
	
}

//카테고리(중분류) 이름 수정 저장
function save_sub(category,bcat){
	
	if($("#mod_"+category).val()=="" || $("#mod_"+category).val()==null){
		alert("1글자 이상 입력해주세요");
		return;
	}

	if (confirm("정말 수정하시겠습니까?") == true){    //확인
		var new_category = $("#mod_"+category).val();

		var comAjax = new ComAjax();
		comAjax.setUrl("/final/modifyCat.do");
		comAjax.setCallback("subCatCallback");
		comAjax.addParam("sub_category", category);
		comAjax.addParam("category", bcat);
		comAjax.addParam("new_category", new_category);
		comAjax.ajax();

	}else{   //취소
		cancle(category,bcat);
	}
	
	
}

//카테고리 수정 취소
function cancle(category,bcat){
	
	if(bcat!=null){
		$("#cat_"+category).children("span").empty();
		$("#cat_"+category).children("span").append(category);
	}else{
		$("#"+category).children("span").empty();
		$("#"+category).children("span").append(category);
	}
	
}



function fn_openInfo(memberNo){
	
	var comAjax = new ComAjax();
    comAjax.setUrl("/final/infoModal.do");
    comAjax.setCallback("fn_renderingInfo");
    comAjax.addParam("memberNo", memberNo);
    comAjax.ajax();
};

function fn_renderingInfo(){
}

function gfn_isNull(str) {
    if (str == null) return true;
    if (str == "NaN") return true;
    if (new String(str).valueOf() == "undefined") return true;   
    var chkStr = new String(str);
    if( chkStr.valueOf() == "undefined" ) return true;
    if (chkStr == null) return true;   
    if (chkStr.toString().length == 0 ) return true;  
    return false;
}

var gfv_ajaxCallback = "";

function ComAjax(opt_formId){

    this.url = "";
    
    this.formId = gfn_isNull(opt_formId) == true ? "commonForm" : opt_formId;
    
    this.param = "";
     
    if(this.formId == "commonForm"){
        var frm = $("#commonForm");
        if(frm.length > 0){
            frm.remove();
        }
        var str = "<form id='commonForm' name='commonForm'></form>";
        $('body').append(str);
    }

    this.setUrl = function setUrl(url){
        this.url = url;
    };
     
    this.setCallback = function setCallback(callBack){
        fv_ajaxCallback = callBack;
    };
 
    this.addParam = function addParam(key,value){
        this.param = this.param + "&" + key + "=" + value;
    };

    
    
    this.ajax = function ajax(){
        if(this.formId != "commonForm"){
            this.param += "&" + $("#" + this.formId).serialize();
        }
        
        if(this.param)
        
        
        $.ajax({
            url : this.url,
            type : "POST",
            data : this.param,
            async : false,
            success : function(data, status) {
                if(typeof(fv_ajaxCallback) == "function"){
                    fv_ajaxCallback(data);
                }
                else {
                    eval(fv_ajaxCallback + "(data);");
                }
            }
        });
    };
}

/*
 * divId : 페이징 태그가 그려질 div pageIndx : 현재 페이지 위치가 저장될 input 태그 id recordCount :
 * 페이지당 레코드 수 totalCount : 전체 조회 건수 eventName : 페이징 하단의 숫자 등의 버튼이 클릭되었을 때 호출될 함수
 * 이름
 */
var gfv_pageIndex = null;
var gfv_eventName = null;

function gfn_renderPaging(params){

    var divId = params.divId; // 페이징이 그려질 div id
    gfv_pageIndex = params.pageIndex; // 현재 위치가 저장될 input 태그
    var totalCount = params.totalCount; // 전체 조회 건수
    var currentIndex = $("#"+params.pageIndex).val(); // 현재 위치
    if($("#"+params.pageIndex).length == 0 || gfn_isNull(currentIndex) == true){
        currentIndex = 1;
    }
     
    var recordCount = params.recordCount; // 페이지당 레코드 수
    if(gfn_isNull(recordCount) == true){
        recordCount = 10;
    }
    var totalIndexCount = Math.ceil(totalCount / recordCount); // 전체 인덱스 수
    gfv_eventName = params.eventName;
     
    $("#"+divId).empty();
    var preStr = "";
    var postStr = "";
    var str = "";
     
    var first = (parseInt((currentIndex-1) / 10) * 10) + 1;
    var last = (parseInt(totalIndexCount+1/10) == parseInt(currentIndex/10)) ? totalIndexCount%10 : 10;
    var prev = (parseInt((currentIndex-1)/10)*10) - 9 > 0 ? (parseInt((currentIndex-1)/10)*10) - 9 : 1;
    var next = (parseInt((currentIndex-1)/10)+1) * 10 + 1 < totalIndexCount ? (parseInt((currentIndex-1)/10)+1) * 10 + 1 : totalIndexCount;
     
    var pageCount = totalCount / recordCount + (totalCount%recordCount == 0? 0 : 1);
    var result = parseInt(currentIndex/10);
    var startPage = result*5+1;
    var endPage = startPage+recordCount-1;
    var searchKeyword = params.searchKeyword;
    if(endPage>pageCount){
    	endPage = pageCount;
    }
    
    if(totalIndexCount > 10){ // 전체 인덱스가 10이 넘을 경우, 맨앞, 앞 태그 작성
        preStr += "<a href='#this' class='pad_5' onclick='_movePage(1)'>[<<]</a>" +
                "<a href='#this' class='pad_5' onclick='_movePage("+prev+")'>[<]</a>";
    }
    else if(totalIndexCount <=10 && totalIndexCount > 1){ // 전체 인덱스가 10보다
															// 작을경우, 맨앞 태그 작성
        preStr += "<a href='#this' class='pad_5' onclick='_movePage(1)'>[<<]</a>";
    }
     
    if(totalIndexCount > 10){ // 전체 인덱스가 10이 넘을 경우, 맨뒤, 뒤 태그 작성
        postStr += "<a href='#this' class='pad_5' onclick='_movePage("+next+")'>[>]</a>" +
                    "<a href='#this' class='pad_5' onclick='_movePage("+totalIndexCount+")'>[>>]</a>";
    }
    else if(totalIndexCount <=10 && totalIndexCount > 1){ // 전체 인덱스가 10보다
															// 작을경우, 맨뒤 태그 작성
        postStr += "<a href='#this' class='pad_5' onclick='_movePage("+totalIndexCount+")'>[>>]</a>";
    }
    
    for(var i=startPage; i<=endPage; i++){
        if(i != currentIndex){
            str += "<a href='#this' class='pad_5' onclick='_movePage("+i+")'>"+i+"</a>";
        }
        else{
            str += "<b><a href='#this' class='pad_5' onclick='_movePage("+i+")'>"+i+"</a></b>";
        }
    }
    $("#"+divId).append(preStr + str + postStr);
}
 
function _movePage(value){
    $("#"+gfv_pageIndex).val(value);
    if(typeof(gfv_eventName) == "function"){
        gfv_eventName(value);
    }
    else {
        eval(gfv_eventName + "(value);");
    }
}
