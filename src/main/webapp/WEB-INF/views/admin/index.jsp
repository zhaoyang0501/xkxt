<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ch">
<head>
<%@ include file="common/meta.jsp"%>
<link href="${pageContext.request.contextPath}/admin/css/fullcalendar.css" rel= "stylesheet">
<script src="${pageContext.request.contextPath}/admin/js/falgun/fullcalendar.min.js"></script>

<link>
</head>
<body>
	<div class="layout">
		<!-- Navbar
    ================================================== -->
		<!-- top -->
		<%@ include file="top.jsp"%>

		<!-- 导航 -->
		<%@ include file="menu.jsp"%>
		<div class="main-wrapper">
			<div class="container-fluid">
				<div class="row-fluid">
				<div class="span12">
					<div class="switch-board gray">
						<ul class="clearfix switch-item">
							<li><span class="notify-tip">${usernum }</span><a href="javascript:void(0);" class="brown"><i class="icon-user"></i><span>会员数</span></a></li>
							<li><span class="notify-tip">${num1 }</span><a href="javascript:void(0);" class=" blue-violate"><i class="icon-lightbulb"></i><span>教师数</span></a></li>
						</ul>
					</div>
				</div>
				</div>
					<div class="row-fluid">
				<div class="span12">
					<div class="content-widgets gray ">
						<div class="widget-head bondi-blue">
							<h3><i class="icon-ambulance"></i>公告</h3>
						</div>
						<div class="ribbon-wrapper-green">
							<div class="ribbon-green">
								NEWS
							</div>
						</div>
						<div class="widget-container">
							<h3>${news.title }</h3>
							<p>
							${news.context }
							</p>
						</div>
					</div>
				</div>
				</div>
			</div>
		</div>
		<!-- foot -->
		<%@ include file="foot.jsp"%>
	</div>

</body>
</html>