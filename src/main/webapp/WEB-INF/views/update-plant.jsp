<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet" href="/vandor/font-awesome-4.7.0/css/font-awesome.css">
<link href="<%=request.getContextPath()%>/css/css.css" rel="stylesheet">
<script type="text/javascript" src="/vandor/jquery/jquery-1.8.2.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<form action="" method="post">
		<input type="hidden" value="${plant.id}" name="id">
		名称：<input type="text" name="name" value="${plant.name}"><br><br>
	
		描述：<input type="text" name="miaoshu" value="${plant.miaoshu}"><br><br>
		
		类别：<select name="cid" style="width:150px;">
				<c:forEach items="${category}" var="c">
					<option value="${c.id}" ${plant.cid==c.id?"selected":""}>${c.cname}</option>
				</c:forEach>
		</select><br><br>
		<input type="button" value="修改"  onclick="xg()">
	</form>
</body>
<script type="text/javascript">

	function xg(){
		$.post("/update",$("form").serialize(),function(obj){
			if(obj>0){
				alert("修改成功")
				location="/";
			}else{
				alert("修改失败")
			}
		})
	}
</script>
</html>