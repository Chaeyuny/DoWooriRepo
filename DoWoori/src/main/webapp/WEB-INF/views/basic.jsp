<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 프로젝트의 contextpath 값을 동적으로 가져오는 방법  / 모든 페이지에 있어야 함-->
<c:set var = "cpath" value="${pageContext.request.contextPath}"/>

<!-- 프로젝트 내 다른 파일을 한 페이지에 뜨도록 포함시키는 방법, ""안에는 파일경로! -->
<%@include file="../views/include/chat.jsp" %>

<!DOCTYPE html>
<html>
<head>
<title>basic</title>

   <!-- 캘린더 템플릿 -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="resources/fonts/icomoon/style.css">
    <link href='resources/fullcalendar/packages/core/main.css' rel='stylesheet' />
    <link href='resources/fullcalendar/packages/daygrid/main.css' rel='stylesheet' />
    
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/style.css">

   <!-- 기본 -->
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <link rel="stylesheet" href="resources/vendors/typicons.font/font/typicons.css">
   <link rel="stylesheet" href="resources/vendors/css/vendor.bundle.base.css">
   <link rel="stylesheet" href="resources/vendors/select2/select2.min.css">
   <link rel="stylesheet" href="resources/vendors/select2-bootstrap-theme/select2-bootstrap.min.css">
   <link rel="stylesheet" href="resources/css/vertical-layout-light/style.css">
   <link rel="shortcut icon" href="resources/images/favicon.png" />
<meta charset="UTF-8">
</head>

<body>
    <div class="container-scroller">
      <!-- partial:partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
          <a class="navbar-brand brand-logo" href="${cpath}/basic.do"><img src="resources/images/logob.png" alt="logo"/></a>
          <a class="navbar-brand brand-logo-mini" href="${cpath}/basic.do"><img src="resources/images/logo-mini.svg" alt="logo"/></a>
          <button class="navbar-toggler navbar-toggler align-self-center d-none d-lg-flex" type="button" data-toggle="minimize">
            <span class="typcn typcn-th-menu"></span>
          </button>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
          <ul class="navbar-nav navbar-nav-right">
            <li class="nav-item dropdown d-flex">
              <a class="nav-link count-indicator dropdown-toggle d-flex justify-content-center align-items-center" id="messageDropdown" href="#" data-toggle="dropdown">
                <i class="typcn typcn-message-typing"></i>
                <span class="count bg-success">2</span>
              </a>
              <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="messageDropdown">
                <p class="mb-0 font-weight-normal float-left dropdown-header">메세지</p>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <img src="resources/images/faces/face4.jpg" alt="image" class="profile-pic">
                  </div>
                  <div class="preview-item-content flex-grow">
                    <h6 class="preview-subject ellipsis font-weight-normal">David Grey
                    </h6>
                    <p class="font-weight-light small-text mb-0">
                      The meeting is cancelled
                    </p>
                  </div>
                </a>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <img src="resources/images/faces/face2.jpg" alt="image" class="profile-pic">
                  </div>
                  <div class="preview-item-content flex-grow">
                    <h6 class="preview-subject ellipsis font-weight-normal">Tim Cook
                    </h6>
                    <p class="font-weight-light small-text mb-0">
                      New product launch
                    </p>
                  </div>
                </a>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <img src="resources/images/faces/face3.jpg" alt="image" class="profile-pic">
                  </div>
                  <div class="preview-item-content flex-grow">
                    <h6 class="preview-subject ellipsis font-weight-normal"> Johnson
                    </h6>
                    <p class="font-weight-light small-text mb-0">
                      Upcoming board meeting
                    </p>
                  </div>
                </a>
              </div>
            </li>
            <li class="nav-item nav-profile dropdown">
              <a class="nav-link dropdown-toggle  pl-0 pr-0" href="#" data-toggle="dropdown" id="profileDropdown">
                <i class="typcn typcn-user-outline mr-0"></i>
                <span class="nav-profile-name">${uvo.name}</span>
              </a>
              <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
                <a class="dropdown-item" onclick="CheckSession()">
                <i class="typcn typcn-power text-primary"></i>
                로그아웃
                </a>
              </div>
            </li>
          </ul>
          <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
            <span class="typcn typcn-th-menu"></span>
          </button>
        </div>
      </nav>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item">
            <div class="d-flex sidebar-profile">
              <div class="sidebar-profile-image">
                <img src="resources/images/faces/face21.jpg" alt="image">
                <span class="sidebar-status-indicator"></span>
              </div>
              <div class="sidebar-profile-name">
                <p class="sidebar-name">
                  ${uvo.name} 
                </p>
                <p class="sidebar-designation">
                  ${uvo.spot} 
                </p>
              </div>
            </div>
            <div class="nav-search">
              <div class="input-group">
                <input type="text" class="form-control" placeholder="Google 검색" aria-label="search" aria-describedby="search">
                <div class="input-group-append">
                  <span class="input-group-text" id="search">
                    <i class="typcn typcn-zoom"></i>
                  </span>
                </div>
              </div>
            </div>
            <p class="sidebar-menu-title">Menu</p>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${cpath}/basic.do">
              <i class="typcn typcn-device-desktop menu-icon"></i>
              <span class="menu-title">마이페이지</span>
            </a>
          </li>
            
          <li class="nav-item">
            <a class="nav-link" href="${cpath}/company.do">
              <i class="typcn typcn-chart-pie-outline menu-icon"></i>
              <span class="menu-title">회사 정보</span>
            </a>
          </li>
  
          <li class="nav-item">
            <a class="nav-link" href="${cpath}/document.do?userId=${uvo.id}&deptNum=${uvo.deptNum}">
              <i class="typcn typcn-pen menu-icon"></i>
              <span class="menu-title">기안문 제출 현황</span>
            </a>
          </li>
          <c:if test="${uvo.position eq '팀장'}">
             <li class="nav-item">
               <a class="nav-link" href="${cpath}/approve.do">
                 <i class="typcn typcn-clipboard menu-icon"></i>
                 <span class="menu-title">결재 대기 현황</span>
               </a>
             </li>    
         </c:if>
        </ul>
       
      </nav>
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper main">

            <div class="row">
              <div class="col-lg-12 d-flex grid-margin stretch-card">
             
              </div>
            </div>
            <div class="row cal">
              <div class="col-lg-5 d-flex grid-margin stretch-card">
                <div class="card">
               <div id='calendar'></div>
                </div>
              </div>
              
              <div class="col-lg-6 d-flex grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                  
                    <!-- 관리자 로그인 시 나오는 화면 -->
                  	<c:if test="${uvo.position eq '팀장'}">
                  		<div class="d-flex flex-wrap justify-content-between">
	                         <!-- 임의로 넣었는데 버튼 위치 조정 해주세용 -->
	                      <h4 class="card-title mb-3">결재 현황 목록  <button class="btn btn-primary btn-sm" onclick="location.href='${cpath}/approve.do'">GO →</button></h4>                     
	                    </div>
	                    <div class="table-responsive">
	                      <table class="table">
	                         <tr class="lists">
	                          <th>번호</th>
	                          <th>유형</th>
<!-- 	                          <th>제출자</th> -->
	                          <th>제출일자</th>  
	                          <th>진행구분</th>     
	                        </tr>
	                      </table>
	                    </div>
                  	</c:if>
                  	
                  	
                  	<!-- 일반 사원 로그인 시 나오는 화면 -->
                  	<c:if test="${uvo.position ne '팀장'}">
	                    <div class="d-flex flex-wrap justify-content-between">
	                         <!-- 임의로 넣었는데 버튼 위치 조정 해주세용 -->
	                      <h4 class="card-title mb-3">기안문 제출 현황   <button class="btn btn-primary btn-sm" onclick="location.href='${cpath}/document.do'">GO →</button></h4>                     
	                    </div>
	                    <div class="table-responsive">
	                      <table class="table">
	                         <tr class="lists">
	                          <th>번호</th>
	                          <th>유형</th>
	                          <th>제출일자</th>  
	                          <th>진행구분</th>     
	                        </tr>
	                      </table>
	                    </div>
                    </c:if>
                  </div>
                </div>
              </div>
              
            </div>
          </div>
        </div>
      </div>
    </div>
    
</body>
    <script src="resources/vendors/js/vendor.bundle.base.js"></script>
    <script src="resources/js/off-canvas.js"></script>
    <script src="resources/js/hoverable-collapse.js"></script>
    <script src="resources/js/template.js"></script>
    <script src="resources/js/settings.js"></script>
    <script src="resources/js/todolist.js"></script>
    <script src="resources/vendors/progressbar.js/progressbar.min.js"></script>
    <script src="resources/vendors/chart.js/Chart.min.js"></script>
    <script src="resources/js/dashboard.js"></script>

    <!-- 캘린더 스크립트 -->
    <script src="resources/js/popper.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src='resources/fullcalendar/packages/core/main.js'></script>
    <script src='resources/fullcalendar/packages/interaction/main.js'></script>
    <script src='resources/fullcalendar/packages/daygrid/main.js'></script>

    <script>
    function CheckSession(){
       if(sessionStorage.getItem("loginKey") == null){
          window.location.replace("${cpath}/logout.do")
       }
    }
    
    //캘린더
      document.addEventListener('DOMContentLoaded', function() {
       var calendarEl = document.getElementById('calendar');

       var calendar = new FullCalendar.Calendar(calendarEl, {
         plugins: [ 'interaction', 'dayGrid' ],
         defaultDate: '2022-08-12',
         editable: true,
         eventLimit: true, // allow "more" link when too many events
         events: [
           {
             title: '미팅',
             start: '2022-08-15'
           },
           {
             title: '출장',
             start: '2022-08-24',
             end: '2022-08-25'
           },
           {
             title: '마감일',
             url: 'http://google.com/',
             start: '2022-08-26'
           }
         ]
       });

       calendar.render();
  });
      
      
      
      


      // 팀장이 로그인 했을때와 아닐 때 로드하는 함수 구분
       $(document).ready(function(){
         
         if('${uvo.position}' === '팀장'){
             loadAdmin('${uvo.id}');
/*              loadUser('${uvo.deptNum}'); */
         }else{
        	 loadContents('${uvo.id}');
         }

     })

     
     
//-----------기안문 목록 로드 (일반사원 로그인 시)------------

     //DB에서 기안문 제출 목록 가져오는 함수
     function loadContents(userId){
        $.ajax({
           url : '${cpath}/formContentAjax.do',
           data : {'userId':userId},
           type : 'get',
           dataType : 'json',
           success:contentView,           
           error : function(){
              alert('실패!');
           }
        })
        
        
     }
     
	//기안문 목록 출력
     function contentView(data){
        var flist = "";
        var num = 1;
        
        $.each(data, function(index, con){

          flist += "<tr>"
          flist += "<td>"+num+"</td>"
          flist += "<td>"+con.docuType+"</td>"
          flist += "<td>"+con.indate+"</td>"
          
          /*강조하고 싶어영  */
          flist += "<td>"+con.division+"</td>"
		  num += 1;
        })
        
      $('.lists').after(flist);

     }
     

     

//-----------승인현황 목록 로드 (결재자 로그인 시)------------

	 //결재자에게 할당된 승인목록 DB에서 가져오는 함수
     function loadAdmin(adminId){
        $.ajax({
           url : '${cpath}/approveAjax.do',
           data : {'adminId':adminId},
           type : 'get',
           dataType : 'json',
           success:adminView,           
           error : function(){
              alert('실패!');
           }
        })
     }
     

     

     var dicWriter = {};
     var userName = "";


     

     function adminView(data){
        var flist = "";
	    var num = 1;
        
	    $.each(data, function(index, con){

           if(con.utime !== null){
              var time = con.utime;
           }else{
              var time = "종일";
           }
    	   

                  
           flist += "<tr>"
               flist += "<td>"+num+"</td>"
           	   flist += "<td id = 'info'>"+con.docuType+"</td>"
               flist += "<td>"+con.division+"</td>"
               flist += "<td>"+con.indate+"</td>"
           flist += "</tr>"
	        num += 1;
        })
        
      $('.lists').after(flist);

     }
     
    </script>
    <script src="resources/js/main.js"></script>
</html>