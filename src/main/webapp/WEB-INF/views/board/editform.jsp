<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<meta charset="UTF-8">
	<title>Edit Form</title>
</head>
<body>
<br>
<h1>&nbsp;Edit Form</h1>
<hr>
<form:form modelAttribute="boardVO" method="POST" action="../editok">
	<form:hidden path="seq"/>
	<table id="edit" class="table table-bordered" style="width:30%;">
		<tr><td>카테고리:</td><td><form:input path="category"/></td></tr>
		<tr><td>제목</td><td><form:input path="title"/></td></tr>
		<tr><td>글쓴이</td><td><form:input path="writer"/></td></tr>
		<tr><td>내용</td><td><form:textarea cols="50" rows="5" path="content" /></td></tr>
	</table>
	<input type="submit" value="수정하기"/>
	<input type="button" value="취소하기" onclick="history.back()" />
</form:form>

</body>
</html>