<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투표/서명 목록</title>
<!-- 공통 css 및 글꼴 입력 부분 시작, title바로 밑에 삽입  -->
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="resources/img/favicon.png" rel="icon">
  <link href="resources/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="resources/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="resources/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="resources/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="resources/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="resources/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Lumia - v4.6.0
  * Template URL: https://bootstrapmade.com/lumia-bootstrap-business-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->

  <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
  
  <script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
  <link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
  <script src="//cdn.quilljs.com/1.3.6/quill.js"></script>
  
  
  
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<style>
header{
font-family: 'Noto Sans KR', sans-serif;
}
footer{
font-family: 'Noto Sans KR', sans-serif;
}
</style>

<!-- 공통 css 및 글꼴 입력 부분 끝  -->
<style>
#votemain{
	font-family: 'Noto Sans KR', sans-serif;
}
	table {
		border-collapse: collapse;
		width: 800px;
		margin : auto;
		font-size : 15px;
		font-family: 'Noto Sans KR', sans-serif;
	}
        
    th{
    	text-align: center;
    }
	td:not(td:nth-of-type(4)) {
		padding: 8px;
		text-align: center;
		border-bottom: 1px solid #ddd;
		text-overflow:ellipsis; overflow:hidden;
		
	}
	td:nth-of-type(4){
		padding: 8px;
		text-align: left;
		border-bottom: 1px solid #ddd;
		text-overflow:ellipsis; overflow:hidden;
		display: block;
	}
        
	tr:not(#trofth):hover {background-color: rgb(207,252,236);}
	
	#paging{
	margin-left: auto;
	margin-top : 20px;
	margin-right: auto;
	display:table;
	}
	#paging ul{
	margin-left:200px;
	}
	#paging a{
	margin-left:10px;
	color: black;
	display:block;
	border: 1px solid black;
	padding-left: 7px;
	padding-right: 7px;
	opacity: 0.5;
	}
	
	#paging a:hover{
	background-color:black;
	color: white;
	display:block;	
	border: 1px solid black;
	padding-left: 7px;
	padding-right: 7px;
	opacity: 0.8;
	}
	.arrowbtn{
	background-color: #DADADA;
	opacity:0.5;
	}
	#votemain{
	padding-top:30px;
	}
	th:nth-of-type(4){
	width:260px;
	}
	td:nth-of-type(4){
	width:260px;
	display: block;
	text-overflow: ellipsis;
	}

	th:nth-of-type(3){
	width:100px;
	}
	td:nth-of-type(3){
	width:100px;
	}
	#clickednum{
	font-weight:900; 
	background-color:#FBFEA4; 
	}
	#clickednum:hover{
	font-weight:900; 
	background-color:black; 
	}
	#enrollbtn{
	margin-left:250px;
	}
	#enrollbtn button{
	font-size:13px;
	border : 1px solid rgba(159,220,120,0.5);
	border-radius:5px;
	background-color: rgba(159,220,120,0.5);
	padding-top:4px;
	padding-bottom:4px;
	box-shadow: 3px 3px 0 rgba(159,220,120,1);
	overflow: hidden;
	white-space: nowrap;
	display: block;
	text-overflow: ellipsis;
	}
	#enrollbtn button:hover{
	font-size:13px;
	border : 1px solid rgba(159,220,120,1);
	border-radius:5px;
	background-color: rgba(159,220,120,1);
	box-shadow: 3px 3px 0 #D04B4D;
	}
	#enrollbtn button:active{
	font-size:13px;
	border : 1px solid rgba(159,220,120,1);
	border-radius:5px;
	background-color: rgba(159,220,120,1);
	box-shadow: 1px 1px 0 #D04B4D;
	position: relative;
	top:2px;
	left:2px;
	}
	
</style>
<!-- jquery cdn -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>
<jsp:include page="../header4admin.jsp" flush="true" />
<main id="adminmain">
<section id="votemain">

 <table>
        <tr id="trofth">
          <th>번호</th>
          <th>종류</th>
          <th>진행여부</th>
          <th>제목</th>
          <th>시작일</th>
          <th>마감일</th>
        </tr>
       <c:forEach var="map" items="${volist}">
		<tr>
		  <td>${map['VOTE_NO'] }</td>
		  <td> <!-- category가 0이면 서명, 1이면 투표  -->
		  <c:choose>
			<c:when test="${map['category'] eq '0'}">서명</c:when>
			<c:when test="${map['category'] eq '1'}">투표</c:when>
		</c:choose>
		 </td>
		  <td> <!-- DEADLINE과 today 비교  -->
		  <c:choose>
			<c:when test="${today <=  map['DEADLINE'] && today >=  map['STARTDATE']}"><span style="color:rgb(216, 31, 31);">진행중</span><b> ~</b></c:when>
			<c:when test="${today <  map['STARTDATE'] }"><span style="color:#6ACFE1;">대기중</span> &#x0221E;</c:when>
			<c:otherwise><span style="color:#EBA487;">종료</span> <b>&check;</b></c:otherwise>
		</c:choose>
		  </td>
		  <td><a href="votedetail?vote_no=${map['VOTE_NO'] }"><nobr>${map['VOTE_TITLE'] }<nobr></a></td>
		  <td>${map["STARTDATE"] }</td>
		  <td>${map["DEADLINE"] }</td>
		   <c:choose>
		  <c:when test="${today <  map['STARTDATE'] }"><td><a href="#" onclick="delvote();" style="color:#6ACFE1;">삭제</a></td></c:when>
			</c:choose>
		</tr>
       </c:forEach>
	<!-- 	mv.addObject("volist",volist);
		mv.addObject("currentPage",currentPage);
		mv.addObject("limit",limit);
		mv.addObject("startPage",startPage);
		mv.addObject("endPage",endPage);
		mv.addObject("maxPage",maxPage); -->
      </table>
			
			
<span id=paging>
      <ul class="pagination">
      <c:if test="${startPage ne '1'}">
       <li><a href="javascript:PageMove(${startPage-1})" class="arrowbtn">&#10094;</a></li>
      </c:if>
       
    <c:forEach var="i" begin="${startPage}" end="${endPage }" step="1">
                  <c:choose>
                      <c:when test="${i eq currentPage && i <= maxPage}">
                <li class="active"><a href="javascript:PageMove(${i})" id="clickednum">${i}</a></li>
                      </c:when>
                      <c:otherwise>
                        <li><a href="javascript:PageMove(${i})">${i}</a></li>
                      </c:otherwise>
                  </c:choose>
              </c:forEach>
              <c:if test="${endPage ne maxPage}">
			<li><a href="javascript:PageMove(${endPage+1})" class="arrowbtn">&#10095;</a></li>
			</c:if>
			<li id="enrollbtn">
			<button onclick="goenroll()">투표/서명 등록</button>
			</li>
      </ul>
</span>

</section>
</main>
<jsp:include page="../footer.jsp" flush="true" />


<script>
function PageMove(page){
    location.href = "votelist?clickedPage="+page;
  };
function goenroll(){
	location.href = "enrollvote";
};

function delvote(){
	//console.log("진입");
	var slt = $(event.target);
	var delNum = slt.parents('tr').children().first().text();
	
	console.log("삭제할 번호 : " + delNum);
	
	$.ajax({
		url : "deletevote.do",
		data : { delNum : delNum, adminId : '${admin.adminId }' },
		type : "post",
		success : function(result){
			alert(result);
			location.reload();
		},
		error : function(request, status, errorData){
			alert("error code : " + request.status + "\n"
				+ "message : " + request.responseText + "\n"
				+ "error : " + errorData
			);
			alert("삭제 실패");
			location.reload();
		}
	}); //ajax
			
	}; // delvote();
	


</script>
</body>
</html>