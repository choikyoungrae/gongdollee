<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>홈페이지</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style type="text/css">
/* 동영상 배경 */
.view {
	background-repeat: none;
	height: 974px;
	width : 100%;
}
.secondbase {
    background-color: rgba(255,255,255,.6); 
    margin-top: -90px;
}
/* 도영상 배경 끝 */
</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/decorators/menu.jsp"></jsp:include>
<div class="view hm-white-light jarallax" data-jarallax='{"speed": 0.2}' 
     data-jarallax-video="https://www.youtube.com/watch?v=T46rfacbMlU"> 
</div>
    <script type="text/javascript" src="js/popper.min.js"></script>
    <!-- <script src="https://mdbootstrap.com/previews/docs/latest/js/bootstrap.min.js"></script> -->
    <script src="https://mdbootstrap.com/previews/docs/latest/js/mdb.min.js"></script>
    <script src="https://mdbootstrap.com/previews/docs/latest/js/jarallax.js"></script>
    <script src="https://mdbootstrap.com/previews/docs/latest/js/jarallax-video.js"></script>
    <script>
        new WOW().init();
    </script> 
    <script>
       $(document).ready(function() {
	     var msg = "${msg}";
	
	     if(msg == "loginSuccess"){
   	    	 alert("로그인에 성공하였습니다.\n${name}님 어서오세요");
   	     }else if(msg == "loginFail"){
   	    	 alert("로그인에 실패하였습니다.\n아이디와 비밀번호를 확인해주세요.");
   	     }else if(msg == "joinSuccess"){
		   alert('회원가입에 성공하였습니다.');
	     }else if(msg == "joinFail"){
		   alert('회원가입에 실패하였습니다.');
	     }else if(msg == "overlap"){
			 isOverlap();
	 	 }else if(msg == "notOverlap"){
	 	     isntOverlap();
	 	 }
       });
       
       function isOverlap(){
    	  alert("이 아이디는 사용할 수 없습니다.");
    	  $(window).on('load',function(){
    		$('#joinUs-modal').modal('show');
    	  });
    	  $('#name').val('${name}');  
          $('#pw').val('${pw}');
    	  $('#chkPW').val('${chkPW}');
    	  $('#email').val('${email}');
    	  $("#year").val("${year}").attr("selected", "selected");
    	  $("#month").val("${month}").attr("selected", "selected");
    	  $("#day").val("${day}").attr("selected", "selected");
    	  $("#gender").val("${gender}").attr("checked", "checked");
    	  <c:forEach items="${preference}" var="preference">
    	    if(${preference.value == true}){
    	 	 $('input:checkbox[id="${preference.key}"]').attr("checked", true); 
    	    }
    	  </c:forEach> 	 
      }  
    	  
      function isntOverlap(){
    	  alert("이 아이디는 사용할 수 있습니다.");
    	  $(window).on('load',function(){
    	        $('#joinUs-modal').modal('show');
    	  });
    	  $('#name').val('${name}');
    	  $('#id').val('${id}'); 
    	  $('#pw').val('${pw}');
    	  $('#chkPW').val('${chkPW}');
    	  $('#email').val('${email}');
    	  $("#year").val("${year}").attr("selected", "selected");
    	  $("#month").val("${month}").attr("selected", "selected");
    	  $("#day").val("${day}").attr("selected", "selected");
    	  $("#gender").val("${gender}").attr("checked", "checked");
    	  <c:forEach items="${preference}" var="preference">
    	    if(${preference.value == true}){
    		  $('input:checkbox[id="${preference.key}"]').attr("checked", true);
    	    }
    	  </c:forEach> 	 
    	  $('#id').attr("readonly",true);
    	  $('#checkOverlap').val("checked");
      }
   </script>
</body>
</html>