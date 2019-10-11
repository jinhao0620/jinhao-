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
		名称：<input type="text" name="name"><br><br>
	
		描述：<input type="text" name="miaoshu"><br><br>
		
		类别：<select name="cid" style="width:150px;">
					<option value="0">---请选择---</option>
				<c:forEach items="${category}" var="c">
					<option value="${c.id}"}>${c.cname}</option>
				</c:forEach>		
		</select><br><br>
		<input type="button" value="添加"  onclick="tj()" />
	</form>
</body>
<script type="text/javascript">
	function tj(){
		$.post("/addplant",$("form").serialize(),function(obj){
			if(obj>0){
				alert("添加成功！")
				location="/"
			}else{
				alert("添加失败！")
			}
		})
	}
</script>
</html>