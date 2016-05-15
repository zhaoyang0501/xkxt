<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="leftbar leftbar-close clearfix">
	<div class="admin-info clearfix">
		<div class="admin-thumb">
			<i class="icon-user"></i>
		</div>
		<div class="admin-meta">
			<ul>
				<li class="admin-username" style="margin-top: 10px;">欢迎你 ${sessionScope.adminuser.name} ${sessionScope.role} </li>
				<li><a href="${pageContext.request.contextPath}/admin/loginout">
				<i class="icon-lock"></i> 退出</a></li>
			</ul>
		</div>
	</div>

	<div class="left-nav clearfix">
		<div class="left-primary-nav">
			<ul id="myTab">
				<li  class="active"><a href="#dailyreport" class="icon-calendar" data-original-title="订单"></a></li>
			</ul>
		</div>
		<div class="responsive-leftbar">
			<i class="icon-list"></i>
		</div>
		<div class="left-secondary-nav tab-content" >
			<div class="tab-pane active dailyreport" id="dailyreport">
				<ul id="nav" class="accordion-nav" >
				<c:if test="${sessionScope.role=='管理员'}">
					<li><a href="${pageContext.request.contextPath}/admin/user/index"><i class="icon-pencil"></i>学生管理</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/teacher/index"><i class="icon-pencil"></i>教师管理</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/teacher/create"><i class="icon-pencil"></i>教师登记</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/news/create"><i class="icon-pencil"></i>公告发布</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/category/index"><i class="icon-pencil"></i>课程管理</a></li>	
					<li><a href="${pageContext.request.contextPath}/admin/category/create"><i class="icon-pencil"></i>课程发布</a></li>	
					<li><a href="${pageContext.request.contextPath}/admin/timetable/index"><i class="icon-pencil"></i>课表管理</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/grade/index"><i class="icon-pencil"></i>班级管理</a></li>
		
				</c:if>
				<c:if test="${sessionScope.role=='学生'}">
					<li><a href="${pageContext.request.contextPath}/admin/timetable/userindex"><i class="icon-pencil"></i>选课</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/timetable/usercenterindex"><i class="icon-pencil"></i>我的课表</a></li>
				</c:if>
				<c:if test="${sessionScope.role=='教师'}">
					<li><a href="${pageContext.request.contextPath}/admin/timetable/teacherindex"><i class="icon-pencil"></i>我的课表</a></li>
				</c:if>
				</ul>
			</div>
		</div>
	</div>
</div>