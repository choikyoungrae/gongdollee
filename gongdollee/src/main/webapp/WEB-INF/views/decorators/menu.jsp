<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메뉴</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<style>
/* modal 시작 */
@import url(http://fonts.googleapis.com/css?family=Roboto);
.loginmodal-container {
  padding: 30px;
  max-width: 350px;
  width: 100% !important;
  background-color: #F7F7F7;
  margin: 0 auto;
  border-radius: 2px;
  box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
  overflow: hidden;
  font-family: roboto;
}

.loginmodal-container h1 {
  text-align: center;
  font-size: 1.8em;
  font-family: roboto;
}

.loginmodal-container input[type=submit] {
  width: 100%;
  display: block;
  margin-bottom: 10px;
  position: relative;
}

.loginmodal-container input[type=text], input[type=password] {
  height: 44px;
  font-size: 16px;
  width: 100%;
  margin-bottom: 10px;
  -webkit-appearance: none;
  background: #fff;
  border: 1px solid #d9d9d9;
  border-top: 1px solid #c0c0c0;
  /* border-radius: 2px; */
  padding: 0 8px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
}

#loginPW{
  height: 44px;
  font-size: 16px;
  width: 100%;
  margin-bottom: 10px;
  -webkit-appearance: none;
  background: #fff;
  border: 1px solid #d9d9d9;
  border-top: 1px solid #c0c0c0;
  /* border-radius: 2px; */
  padding: 0 8px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
}

.loginmodal-container input[type=text]:hover, input[type=password]:hover {
  border: 1px solid #b9b9b9;
  border-top: 1px solid #a0a0a0;
  -moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
  -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
  box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
}

.loginmodal-submit {
  /* border: 1px solid #3079ed; */
  border: 0px;
  color: #fff;
  text-shadow: 0 1px rgba(0,0,0,0.1); 
  background-color: #4d90fe;
  padding: 17px 0px;
  font-family: roboto;
  font-size: 14px;
  /* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#4787ed)); */
}

.loginmodal-submit:hover {
  /* border: 1px solid #2f5bb7; */
  border: 0px;
  text-shadow: 0 1px rgba(0,0,0,0.3);
  background-color: #357ae8;
  /* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#357ae8)); */
}

.loginmodal-container a {
  text-decoration: none;
  color: #666;
  font-weight: 400;
  text-align: center;
  display: inline-block;
  opacity: 0.6;
  transition: opacity ease 0.5s;
} 

.login-help{
  font-size: 12px;
  float: right;
}
/* 로그인modal 끝 */
.joinUsmodal-container {
  padding: 30px;
  max-width: 400px;
  width: 100% !important;
  background-color: #F7F7F7;
  margin: 0 auto;
  border-radius: 2px;
  box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
  overflow: hidden;
  font-family: roboto;
}

.joinUsmodal-container h1 {
  text-align: center;
  font-size: 1.8em;
  font-family: roboto;
}

.joinUsmodal-container input[type=submit] {
  width: 28%;
  height:44px;
  display: inline-block;
  margin-bottom: 10px;
  position: absolute;
  font-size: 1.1em;
}

.joinUsmodal-container input[type=reset] {
  width: 49%;
  height:44px;
  display: inline-block;
  margin-bottom: 10px;
  position: relative;
  background-color: #FF5A5A;
  font-size: 1.1em;
}

.joinUsmodal-container input[type=text], input[type=password] {
  height: 33px;
  font-size: 16px;
  width: 75%;
  margin-bottom: 10px;
  -webkit-appearance: none;
  background: #fff;
  border: 1px solid #d9d9d9;
  border-top: 1px solid #c0c0c0;
  /* border-radius: 2px; */
  padding: 0 8px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
}

.joinUsmodal-container input[type=text]:hover, input[type=password]:hover {
  border: 1px solid #b9b9b9;
  border-top: 1px solid #a0a0a0;
  -moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
  -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
  box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
}

.joinUsmodal-submit {
  /* border: 1px solid #3079ed; */
  border: 0px;
  color: #fff;
  text-shadow: 0 1px rgba(0,0,0,0.1); 
  background-color: #4d90fe;
  padding: 17px 0px;
  font-family: roboto;
  font-size: 14px;
  /* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#4787ed)); */
}

.joinUsmodal-submit:hover {
  /* border: 1px solid #2f5bb7; */
  border: 0px;
  text-shadow: 0 1px rgba(0,0,0,0.3);
  background-color: #357ae8;
  /* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#357ae8)); */
}

.joinUsmodal-container a {
  text-decoration: none;
  color: #666;
  font-weight: 400;
  text-align: center;
  display: inline-block;
  opacity: 0.6;
  transition: opacity ease 0.5s;
} 

.joinUsmodal-chkOverlap{
  height: 33px;
}

.joinUsmodal-title{
  display:block;
}

.joinUsmodal-warning{
  color:red;
  font-size: 0.7em;
}

.birth{
  font-weight:bold;
  font-size:1.2em;
}

#userBirth select{
  height:33px;
}
/* 회원가입 modal 끝 */
/* 아이디 찾기 modal*/
#findIdEmail{
  height: 44px;
  font-size: 16px;
  width: 100%;
  margin-bottom: 10px;
  -webkit-appearance: none;
  background: #fff;
  border: 1px solid #d9d9d9;
  border-top: 1px solid #c0c0c0;
  /* border-radius: 2px; */
  padding: 0 8px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
}
/*아이디 찾기 modal 끝*/
/*비밀번호 찾기 modal*/
#findPWID{
  height: 44px;
  font-size: 16px;
  width: 100%;
  margin-bottom: 10px;
  -webkit-appearance: none;
  background: #fff;
  border: 1px solid #d9d9d9;
  border-top: 1px solid #c0c0c0;
  /* border-radius: 2px; */
  padding: 0 8px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
}
/*비밀번호 찾기 modal 끝*/
</style>
</head>

<body>
<!-- header -->
<header>
<div>
  <nav class="navbar-inverse">  
    <div class="navbar-header">
		<a class="navbar-brand" href="homePage">Gongdollee</a>
	</div>
	<%
	  String sessionID = (String)session.getAttribute("sessionID");
	  if((sessionID == null) || (sessionID.equals(""))){
	%>
	<div class="collapse navbar-collapse js-navbar-collapse">
		<ul class="nav navbar-nav">
			<li><a href="javascript:notLogin();">게시판</a></li>
			<li><a href="javascript:notLogin();">추천</a></li>
			<li><a href="javascript:notLogin();">평가</a></li>
		</ul>
        <ul class="nav navbar-nav navbar-right">          
			<li><a href = "#" id ="sign" data-toggle="modal" data-target="#login-modal">로그인</a></li>
			<li><a href = "#" id ="sign" data-toggle="modal" data-target="#joinUs-modal">회원가입</a></li>
        </ul>
	</div><!-- /.nav-collapse -->
	
	<!-- modal시작부분 -->
    <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
      <div class="modal-dialog">
	    <div class="loginmodal-container">
		  <h1>로그인</h1><br>
		  <form name="loginForm" action="login" onsubmit="return checkLoginForm()" method="POST">
            <label for="loginID" style="font-size: 15px;">아이디</label>
		    <input type="text" name="loginID" id="loginID" placeholder="ID">
            <label for="loginPW" style="font-size: 15px;">비밀번호</label>
		    <input type="password" name="loginPW" id="loginPW" placeholder="Password">
		    <input type="submit" name="login" class="login loginmodal-submit" value="로그인">
		  </form>					
		  <div class="login-help">
		    <a href = "#" id ="sign" data-toggle="modal" data-target="#findID">아이디찾기</a>&nbsp;&nbsp;&nbsp;
		    <a href = "#" id ="sign" data-toggle="modal" data-target="#findPW">비밀번호찾기</a>
		  </div>
	    </div>
      </div>
    </div>
    <div class="modal fade" id="joinUs-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
      <div class="modal-dialog">
	    <div class="joinUsmodal-container">
		  <h1>회원가입</h1><br>
		   <form name="joinForm" action="join" onsubmit="return checkJoinForm()" method="POST">
            <div>
              <label for="name" class="joinUsmodal-title">이름</label>
              <input type="text" name="name" id="name" placeholder="NAME">
            </div>
            <div>
              <label for="id" class="joinUsmodal-title">아이디</label>
              <input type="text" name="id" id="id" placeholder="ID">
              <input type="button" value="중복확인" id="overlapID" class="joinUsmodal-chkOverlap"> 
              <input type="hidden" name="checkOverlap" id="checkOverlap" >         
            </div>
            <div>
              <label for="pw" class="joinUsmodal-title">비밀번호</label>
              <input type="password" name="pw" id="pw" placeholder="PASSWORD">            
            </div>
            <div class="joinUsmodal-warning">
                                비밀번호는 영문과 숫자, 특수문자가
                                포함된 6~12글자로 되어야합니다.
            </div><br>
            <div>
              <label for="chkPW" class="joinUsmodal-title">비밀번호확인</label>
              <input type="password" name="chkPW" id="chkPW" placeholder="PASSWORD">            
            </div>
            <div>
              <label for="email" class="joinUsmodal-title">이메일</label>
              <input type="text" name="email" id="email" placeholder="EMAIL">
            </div>            
            <div class="joinUsmodal-warning">
                                비밀번호 찾기는 gmail밖에 지원이 안됩니다. 반드시 gmail을 써주세요
            </div><br>
            <div id="userBirth">
              <label for="" class="joinUsmodal-title">생년월일</label>
              <select name="year" id="year">
                <%
                  for(int i=2018; i>=1939; i--){
                %>
                <option value="<%= i %>">
                <%= i %>
                <%
                  }
                %>
                </option>
              </select>
              <span class="birth">년</span>
              <select name="month" id="month">
                <%
                  for(int i=1; i<=12; i++){
                %>
                <option value="<%=i %>">
                <%=i %>
                <%
                  }
                %>
                </option>
              </select>
              <span class="birth">월</span>
              <select name="day" id="day">
                <%
                  for(int i=1; i<=31; i++){
                %>
                <option value="<%=i %>">
                <%=i %>
                <%	  
                  }
                %>
                </option>
              </select>
              <span class="birth">일</span>
            </div><br>
            <div>
              <label for="" class="joinUsmodal-title">성별</label>
              <input type="radio" name="gender" id="gender" value="1">남&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="radio" name="gender" id="gender" value="2">여
            </div>
            <div><br>
              <label for="" class="joinUsmodal-title">선호장르</label>
              <input type="hidden" name="preference" id="preference" value="">
              <input type="checkbox" name="musical" id="musical" value="musical">뮤지컬&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="checkbox" name="classic" id="classic" value="classic">클래식&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="checkbox" name="theater" id="theater" value="theater">연극<br>            
              <input type="checkbox" name="opera" id="opera" value="opera">오페라&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="checkbox" name="ballet" id="ballet" value="ballet">발레&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="checkbox" name="etc" id="etc" value="etc">기타
            </div>
            <br>
            <input type="reset" name="reset" class="login joinUsmodal-submit" value="초기화">
            <input type="submit" name="join" class="login joinUsmodal-submit" value="회원가입">          
		  </form>		
	    </div>
      </div>
    </div>
    <!-- /.modal-dialog -->
	<%
	}else{%>
	<div class="collapse navbar-collapse js-navbar-collapse">
		<ul class="nav navbar-nav">
			<li><a href="#board">게시판</a></li>
			<li><a href="#recommand">추천</a></li>
			<li><a href="#review">평가</a></li>
		</ul>
		<c:if test="${sessionID == 'admin' }">
        <ul class="nav navbar-nav navbar-right">          
			<li><a href = "#" id ="sign" data-toggle="modal" data-target="#login-modal">회원관리</a></li>
			<li><a href = "logout" id ="logout">로그아웃</a></li>
        </ul>
        </c:if>
        <c:if test="${sessionID != 'admin' }">
        <ul class="nav navbar-nav navbar-right">          
			<li><a href = "#" id ="sign" data-toggle="modal" data-target="#login-modal">내정보관리</a></li>
			<li><a href = "logout" id ="logout">로그아웃</a></li>
        </ul>
        </c:if>
	</div><!-- /.nav-collapse -->
	<%
	}
	%>
  </nav>
</div>
<div class="modal fade" id="findID" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
      <div class="modal-dialog">
	    <div class="loginmodal-container">
		  <h1>아이디찾기</h1><br>
		  <form name="findIDForm" action="findID" onsubmit="return checkFindIDForm()" method="POST">
            <label for="findIdName" style="font-size: 15px;">이름</label>
		    <input type="text" name="findIdName" id="findIdName" placeholder="NAME">
            <label for="findIdEmail" style="font-size: 15px;">이메일</label>
		    <input type="text" name="findIdEmail" id="findIdEmail" placeholder="EMAIL">
		    <input type="submit" name="findIdSubmit" class="login loginmodal-submit" value="아이디찾기">
		  </form>					
		  <div class="login-help">
		    &nbsp;&nbsp;&nbsp;
		  </div>
	    </div>
      </div>
    </div>
<div class="modal fade" id="findPW" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
      <div class="modal-dialog">
	    <div class="loginmodal-container">
		  <h1>비밀번호찾기</h1><br>
		  <form name="findPWForm" action="findPW" onsubmit="return checkFindPWForm()" method="POST">
            <label for="findPWName" style="font-size: 15px;">이름</label>
		    <input type="text" name="findPWName" id="findPWName" placeholder="NAME">
            <label for="findPWEmail" style="font-size: 15px;">아이디</label>
		    <input type="text" name="findPWID" id="findPWID" placeholder="ID">
		    <input type="submit" name="findPWSubmit" class="login loginmodal-submit" value="비밀번호찾기">
		  </form>					
		  <div class="login-help">
		    &nbsp;&nbsp;&nbsp;
		  </div>
	    </div>
      </div>
    </div>
<!-- 자바스크립트 -->
<script>
  $(document).ready(function(){
    $("#overlapID").click(function(){
        overlapID();        
    });
  });
  
  function overlapID(){
	  var id = document.getElementById("id").value;	  
	  var name = document.getElementById("name").value;
	  var pw = document.getElementById("pw").value;
	  var chkPW = document.getElementById("chkPW").value;
	  var email = document.getElementById("email").value; 
	  var year = document.getElementById("year").value;
	  var month = document.getElementById("month").value;
	  var day = document.getElementById("day").value;
	  var gender = joinForm.gender.value
	  var preferences = [joinForm.musical.checked, joinForm.classic.checked, joinForm.theater.checked, joinForm.opera.checked,
          joinForm.ballet.checked, joinForm.etc.checked];
	  var musical = true;
	  var classic = true;
	  var theater = true;
	  var opera = true;
	  var ballet = true;
	  var etc = true;
	  for(var j in preferences){
	    if(preferences[j] == true){
	    	  if(j == 0){
    			musical = true;
    		  }else if(j == 1){
    			classic = true;
    		  }else if(j == 2){
    			theater = true;
    		  }else if(j == 3){
    			opera = true;
    		  }else if(j == 4){
    			ballet = true;
    		  }else if(j == 5){
    			etc = true;
    	 	  }	        
	      }else{
	    	  if(j == 0){
	    		musical = false;
	         }else if(j == 1){
	    		classic = false;
	    	 }else if(j == 2){
	    		theater = false;
	    	 }else if(j == 3){
	    		opera = false;
	    	 }else if(j == 4){
	    		ballet = false;
	    	 }else if(j == 5){
	    		etc = false;
	    	 }	 
	      }  
	  } 
	  
	  location.href="overlapID?id=" + id +"&name=" + name +"&pw=" + pw +"&chkPW=" + chkPW  + "&email=" + email  + "&year=" + year + "&month=" + month
          + "&day=" + day + "&gender=" + gender + "&musical=" + musical + "&classic=" + classic + "&theater=" + theater 
          + "&opera=" + opera + "&ballet=" + ballet + "&etc=" + etc  ;
  }
  
  
  function checkLoginForm(){
	  var isValid = true;
	  if(loginForm.loginID.value == ""){
		  alert("아이디을 꼭 입력해주세요.");
		  isValid = false;
	  } else if(loginForm.loginPW.value == ""){
		  alert("비밀번호를 꼭 입력해주세요.")
		  isValid = false;
	  } 
	  
	  return isValid;
  }
  
  function checkFindIDForm(){
	  var isValid = true;
	  if(findIDForm.findIdName.value == ""){
		  alert("이름을 꼭 입력해주세요.");
		  isValid = false;
	  } else if(findIDForm.findIdEmail.value == ""){
		  alert("이메일을 꼭 입력해주세요.")
		  isValid = false;
	  } 
	  
	  return isValid;
  }
  
  function checkFindPWForm(){
	  var isValid = true;
	  if(findPWForm.findPWName.value == ""){
		  alert("이름을 꼭 입력해주세요.");
		  isValid = false;
	  } else if(findPWForm.findPWID.value == ""){
		  alert("아이디를 꼭 입력해주세요.")
		  isValid = false;
	  } 
	  
	  return isValid;
  }
  
  function checkJoinForm(){
	  var isValid = true;
	  
	  var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
      var pwType = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,12}$/;
      
      var pw = joinForm.pw.value ;
      var email = joinForm.email.value;
      
	  if(joinForm.name.value == ""){
		  alert("이름을 꼭 입력해주세요.");
		  isValid = false;
	  } else if(joinForm.id.value == ""){
		  alert("아이디를 꼭 입력해주세요");
		  isValid = false;
	  } else if(joinForm.checkOverlap.value == ""){
		  alert("아이디 중복체크를 꼭 해주세요");
		  isValid = false;
	  } else if(joinForm.pw.value == ""){
		  alert("비밀번호를 꼭 입력해주세요.")
		  isValid = false;
	  } else if((pw.length < 6) || (pw.length > 12)){
          alert('비밀번호는 6~12글자 이내여야 합니다.')
          isValid = false;
      } else if(pw.match(pwType) == null){
          alert('비밀번호는 영문 , 숫자, 특수문자를 적어도 1개이상 포함해야합니다.')
          isValid = false;
      } else if(joinForm.chkPW.value == ""){
		  alert("비밀번호확인을 꼭 입력해주세요.");
		  isValid = false;
	  } else if(joinForm.chkPW.value != joinForm.pw.value){
		  alert("비밀번호와 비밀번호확인이 일치하지 않습니다.");
		  isValid = false;
	  } else if(joinForm.email.value == ""){
		  alert("이메일을 꼭 입력해주세요.");
		  isValid = false;
	  } else if(email.match(regExp) == null){
          alert('이메일은 반드시 이메일형식을 가져야합니다.');
          isValid = false;
      } else if(joinForm.gender.value == ""){
		  alert("성별을 꼭 체크해주세요.");
		  isValid = false;
	  }else{
	    var preferences = [joinForm.musical.checked, joinForm.classic.checked, joinForm.theater.checked, joinForm.opera.checked,
	    	                  joinForm.ballet.checked, joinForm.etc.checked];
	    var i=0;
	    var havePreference = false;
	    var StringPreference ='';

	    for(var j in preferences){
	    	if(preferences[j] == true){
	    		havePreference = true;
	    		break;
	    	}
	    }
	    
	    var isFirst = 0;
	    for(var j in preferences){
	    	if(preferences[j] == true){
	    		isFirst++;
	    		if(isFirst == 1){
	    		  if(j == 0){
	    			StringPreference = StringPreference + 'musical';
	    		  }else if(j == 1){
	    			StringPreference = StringPreference + 'classic';
	    		  }else if(j == 2){
	    			StringPreference = StringPreference + 'theater';
	    		  }else if(j == 3){
	    			StringPreference = StringPreference + 'opera';
	    		  }else if(j == 4){
	    			StringPreference = StringPreference + 'ballet';
	    		  }else if(j == 5){
	    			StringPreference = StringPreference + 'etc';
	    		  }
	    		}else{
	    			if(j == 1){
		    			StringPreference = StringPreference + ',classic';
		    	    }else if(j == 2){
		    			StringPreference = StringPreference + ',theater';
		    		}else if(j == 3){
		    			StringPreference = StringPreference + ',opera';
		    		}else if(j == 4){
		    			StringPreference = StringPreference + ',ballet';
		    		}else if(j == 5){
		    			StringPreference = StringPreference + ',etc';
		    		}
	    		}
	    	}
	    }
	    document.getElementById('preference').value = StringPreference;
	    if(havePreference == false){
	    	alert("선호장르를 최소 한 개 이상은 체크해주세요.")
	    	isValid = false;
	    }
	    
	  }
	  
	  return isValid;
  }
  
  function notLogin(){
	  alert('로그인시 이용이 가능합니다.');
  }
</script>
</body>
</html>