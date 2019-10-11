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
	<table>
		<tr>
			<td><input type="button" value="添加" onclick="location='/addp'"></td>
			<td colspan="5">
				<form action="/" id="fenye" method="post">
					<input type="hidden" name="pageNum" value="${page.pageNum}">
					查询内容：<input type="text" name="mname" value="${map.mname}"><input type="submit" value="搜索">
				</form>
			</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="c">全选</td>
			<td>序号</td>
			<td>植物名称</td>
			<td>描述</td>
			<td>类别</td>
			<td>操作</td>
		</tr>
		<c:forEach items="${list}" var="l"> 
		<tr>
			<td><input type="checkbox" name="ck" value="${l.id}"></td>
			<td>${l.id}</td>
			<td>${l.name}</td>
			<td>${l.miaoshu}</td>
			<td>${l.cname}</td>
			<td>
				<input type="button" value="查看" onclick="location='/look?id=${l.id}'">
				<input type="button" value="修改" onclick="location='/upda?id=${l.id}'">
				<input type="button" value="删除" onclick="sc(${l.id})">
			</td>
		</tr>	
		</c:forEach>
		<tr>
			<td><input type="button" value="批量删除" onclick="plsc()"></td>
			<td colspan="5">
					<input type="button" value="首页" onclick="page(1)">
					<input type="button" value="上一页" onclick="page(${page.pageNum-1})">
					<input type="button" value="下一页" onclick="page(${page.pageNum+1})">
					<input type="button" value="尾页" onclick="page(${page.pages})">
					当前是第${page.pageNum}页/共计${page.pages}页
			</td>
		</tr>
	</table>
</body>
<script type="text/javascript">
	$("[name='c']").click(function(){
		$("[name='ck']").prop("checked",this.checked);
	})
	
	function page(pageNum){
		$("[name='pageNum']").val(pageNum)
		$("#fenye").submit();
	}
	
	function sc(id){
		$.post("/dele",{id:id},function(obj){
			if(obj>0){
				alert("删除成功！")
				location="/"
			}else{
				alert("删除失败！")
			}
		},"json")
	}
	
	function plsc(){
		var arr="";
		$("[name='ck']:checked").each(function(){
			arr +=","+$(this).val();
		})
		arr=arr.substring(1)
		if(arr.length==0){
			alert("你没有选中想删除的id!!!")
		}else{
			$.post("/deleteAll",{arr:arr},function(obj){
				if(obj>0){
					alert("删除成功！")
					location="/"
				}else{
					alert("删除失败！")
					location=""
				}
			})
		}
		
	}
</script>
</html>