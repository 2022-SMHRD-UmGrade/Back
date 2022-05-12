<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="kr.smhrd.domain.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
		<h2>스프링 웹 엠브이씨 게시판 (우산목록)</h2>
		<div class="panel-body" id="list"></div>
	</div>
</body>

<script src="resources/js/fn.js"></script>
<script>
$(document).ready(()=>{
	qnaList()
})

function htmlView(data){
	var result = "<table class='table table-bordered table-hover'>"
	result += "<tr><th>일련번호</th><th>제목</th><th>내용</th><th>작성일시</th><th>파일경로</th><th>작성자</th><th>조회수</th></tr>"

	   $.each(data, (index, vo)=>{ // 오브젝트안에 있는 데이터 접근.
		   result += "<tr>"
			      result += "<td>"+vo.qna_seq+"</td>"
			      result += "<td>"+vo.qna_title+"</td>"
			      result += "<td>"+vo.qna_content+"</td>"
			      result += "<td>"+vo.qna_file+"</td>"
			      result += "<td>"+vo.qna_date+"</td>"
			      result += "<td>"+vo.qna_id+"</td>"
			      result += "</tr>"
	   })
	   result += "</table>"
	   $("#list").html(result)
}
</script>
</html>
