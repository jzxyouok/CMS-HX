<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.hx.bean.News"%>
<%@page import="com.hx.bean.Sort"%>
<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>${thisSortName }</title>
<link rel="stylesheet" type="text/css" href="/static/list.css" />
</head>
<body>

	<%@include file="inc/top.jsp"%>

	<div id="main">

		<div class="wrap">
			<%@include file="inc/menu.jsp"%>

			<div id="rightList">
				<div id="path">当前的位置： ${thisSortName }</div>
				<ul id="listBox">
					<c:forEach items="${listNews }" var="news">
						<li><a
							href="NewsServlet?action=selectNewsShow&newsClassId=<%=request.getParameter("newsClassId")%>&newsid=${news.id }">${news.title }</a>
							<span class="datetime">${news.createTime }</span></li>
					</c:forEach>
				</ul>
				<!-- <div id="pagecode">
					共19条 每页12条 页次：1/2 <span style="position: absolute; right: 40px;"><a
						href="">首页</a> | <a href="">上一页</a> | <a href="">下一页</a></span>
				</div> -->
			</div>
			<div class="clear"></div>
		</div>
	</div>

	<%@include file="inc/bottom.jsp"%>
</body>
</html>
