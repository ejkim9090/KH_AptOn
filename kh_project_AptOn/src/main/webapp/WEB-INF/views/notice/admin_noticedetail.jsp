<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <title>노원 롯데캐슬 관리자</title>
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
  
  <style>
  #adminmain{
	margin-top:100px;
}
 #mainsection {
 	float: left;
 	width: 1200px;
 }
  
  </style>
  
<!-- jquery cdn -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

</head>
<body>
<jsp:include page="../header4admin.jsp" flush="true" />

<main id="adminmain">
<section id="mainsection">
	<table id="maintable">
	<c:forEach items="${noticelist}" var="detail">
		 <thead>
            <tr>
                <th>제목</th>
                <td>${detail.notice_title }</td>
            </tr>
            <tr>
                <th>글 번호: </th>
                <td>${detail.notice_num }</td>
                <th>작성자: </th>
                <td>${detail.admin_id }</td>
                <th>작성일: </th>
                <td>${detail.notice_date }</td> 
            </tr>
        </thead>
        <tbody>
                <tr>
   
                <td>${detail.notice_content}</td>
                </tr>
	
	</table>
	<button onclick = "location.href = '/apton/noticeupdate?no=${detail.notice_num}'">수정</button>
	<button onclick = "location.href = '/apton/adnoticelist' ">목록</button>
</c:forEach>	
	</form>
	
<script>


</script>	
	
	
</section>
</main>
<br>
adminmain 바깥의 영역입니다. 사이드바에 밀려나지 않습니다.


    
</body>
</html>