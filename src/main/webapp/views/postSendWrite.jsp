<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쪽지 작성하기</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
<link rel="stylesheet"
	href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
<link rel="stylesheet" href="dist/css/adminlte.min.css">
</head>
<body>
	<jsp:include page="GroupFit_gnb.jsp" />
	<div class="content-wrapper" style="margin-top: 57.08px">
		<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1>쪽지 쓰기</h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">메인</a></li>
							<li class="breadcrumb-item active">뎁스1</li>
							<li class="breadcrumb-item active">뎁스2</li>
						</ol>
					</div>
				</div>
			</div>
			<!-- /.container-fluid -->
		</section>
<!-- Main content -->
		<section class="content">
			<div class="container-fluid">
				<form action="postSendWrite.do" method="post" enctype="multipart/form-data">
					<table>
						<input type="hidden" name="send_empno" value="${emp.emp_no}"/>
						<tr>
							<th>*작성자</th>
							<td><input type="text" value="${emp.name}" readonly/></td>
						</tr>
						<tr>
							<th>*제목</th>
							<td><input type="text" name="subject"/></td>
						</tr>
						<tr>
							<th>*받는사람 이름</th>
							<td>
								<p>
									<input type="text" name="get_empno"/>
									<a class="btn btn-primary" data-bs-toggle="modal"
									data-bs-target="#search" data-shuffle> 직원 찾기 </a>&nbsp;
								</p>
							</td>
						</tr>
						<tr>
							<th>*첨부파일</th>
							<td><input type="file" name="post_photo"/></td>
						</tr>
						<tr>
							<th>*내용</th>
							<td>
								<textarea name="content"></textarea> 
							</td>
						</tr>
						<input type="submit" value="보내기"/>
						<button type="button" onclick="location.href='./postSendList.go'">목록</button>	
					</table>
				</form>
			</div>
			<!--/. container-fluid -->
		</section>
	</div>
</body>
<script>
function new_window() {
    window.open(
      "empfind.html",
      "EmpFind",
      "width=400, height=300, top=50, left=50"
    );
  }

</script>
</html>