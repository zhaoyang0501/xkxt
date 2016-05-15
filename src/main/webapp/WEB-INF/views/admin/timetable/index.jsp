<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ch">
<%@ include file="../common/meta.jsp"%>
<head>
<link href="${pageContext.request.contextPath}/admin/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/falgun/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/falgun/bootstrap-datetimepicker.zh-CN.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/ace/admin.timetable.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/falgun/bootbox.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$(".date").datetimepicker({
			language:  'zh-CN',
	        weekStart: 1,
	        todayBtn:  1,
	        format:'yyyy-mm-dd',
			autoclose: 1,
			todayHighlight: 1,
			startView: 2,
			minView: 2,
			forceParse: 0
	    });
		$(".form_datetime").datetimepicker({
			language : 'zh-CN',
			format : 'yyyy-mm-dd hh:ii',
			autoclose : 1,
			todayHighlight : 1,
			minuteStep:30,
			forceParse : 0
		});
		$(".modal_datetime").datetimepicker({
			language:  'zh-CN',
		    weekStart: 1,
		    todayBtn:  1,
		    format:'hh:ii',
			autoclose: 1,
			todayHighlight: 1,
			startView: 1,
			minuteStep:30,
			minView: 0,
			forceParse: 0
	    });
	});
</script>
</head>
<body>
	<div class="layout">
		<!-- top -->
		<%@ include file="../top.jsp"%>
		<!-- 导航 -->
		<%@ include file="../menu.jsp"%>
		
		<input type="hidden" id="hf_id" />

		<div class="main-wrapper">
			<div class="container-fluid">
				<div class="row-fluid ">
					<div class="span12">
						<div class="content-widgets ">
							<div class="widget-head  bondi-blue" >
								<h3>课表管理</h3>
							</div>
							
							<div class="row-fluid ">
								<a class="btn btn-success" style="float: right; margin: 5px;" onclick="$.timetable.showUserAddModal()"><i class="icon-plus"></i>课程登记</a>
						
								<table class="responsive table table-striped table-bordered"
									>
									<thead>
										<tr>
										<th ></th>
											<th >星期一</th>
											<th >星期二</th>
											<th >星期三</th>
											<th >星期四</th>
											<th >星期五</th>
											<th >星期六</th>
											<th >星期日</th>
										</tr>
									</thead>
									<tbody>
									<tr>
										<td>第一节课（上午）</td>
										 <td>
										 <c:forEach var="bean" items="${list11 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										 <td>
										 <c:forEach var="bean" items="${list12 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										 <td>
										 <c:forEach var="bean" items="${list13 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										 <td>
										 <c:forEach var="bean" items="${list14 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										 <td>
										  <c:forEach var="bean" items="${list15 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										 <td>
										  <c:forEach var="bean" items="${list16 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										<td>
										  <c:forEach var="bean" items="${list17 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
									</tr>
									
									<tr>
										<td>第二节课（上午）</td>
										
										 <td>
										  <c:forEach var="bean" items="${list21 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										 <td>
										  <c:forEach var="bean" items="${list22 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										 <td>
										  <c:forEach var="bean" items="${list23 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										
										 <td>
										  <c:forEach var="bean" items="${list24 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										 <td>
										  <c:forEach var="bean" items="${list25 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										 <td>
										  <c:forEach var="bean" items="${list26 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										
										 <td>
										  <c:forEach var="bean" items="${list27 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
									</tr>
									<tr>
										<td>第三节课（上午）</td>
										 <td>
										  <c:forEach var="bean" items="${list31 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										 <td>
										  <c:forEach var="bean" items="${list32 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										 <td>
										  <c:forEach var="bean" items="${list33 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										
										 <td>
										  <c:forEach var="bean" items="${list34 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										 <td>
										  <c:forEach var="bean" items="${list35 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										 <td>
										  <c:forEach var="bean" items="${list36 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										
										 <td>
										  <c:forEach var="bean" items="${list37 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
									</tr>
									<tr>
										<td>第四节课（下午）</td>
										 <td>
										  <c:forEach var="bean" items="${list41 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										 <td>
										  <c:forEach var="bean" items="${list42 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										 <td>
										  <c:forEach var="bean" items="${list43 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										
										 <td>
										  <c:forEach var="bean" items="${list44 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										 <td>
										  <c:forEach var="bean" items="${list45 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										 <td>
										  <c:forEach var="bean" items="${list46 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										
										 <td>
										  <c:forEach var="bean" items="${list47 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
									</tr>
									<tr>
										<td>第五节课（下午）</td>
										 <td>
										  <c:forEach var="bean" items="${list51 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										 <td>
										  <c:forEach var="bean" items="${list52 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										 <td>
										  <c:forEach var="bean" items="${list53 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										
										 <td>
										  <c:forEach var="bean" items="${list54 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										 <td>
										  <c:forEach var="bean" items="${list55 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										 <td>
										  <c:forEach var="bean" items="${list56 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										
										 <td>
										  <c:forEach var="bean" items="${list57 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
									</tr>
									<tr>
										<td>第六节课（下午）</td>
										  <td>
										  <c:forEach var="bean" items="${list61 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										 <td>
										  <c:forEach var="bean" items="${list62 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										 <td>
										  <c:forEach var="bean" items="${list63 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										
										 <td>
										  <c:forEach var="bean" items="${list64 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										 <td>
										  <c:forEach var="bean" items="${list65 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										 <td>
										  <c:forEach var="bean" items="${list66 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
										
										
										 <td>
										  <c:forEach var="bean" items="${list67 }">
										 		 <span class='table_category'> ${bean.category.name}</span> 
										 		-<span class='table_teacher'> ${bean.teacher.name }</span>
										 		 <span class='table_room'>(${bean.room })</span>
										 		 <br>
										 	</c:forEach>
										</td>
									</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="../foot.jsp"%>
	</div>

	<!-- 编辑新增弹出框 -->
	<div class="modal hide fade" id="_modal">
		<div class="modal-header blue">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<label id="_modal_header_label"></label>
		</div>
		<div class="modal-body" >
			<div class="row-fluid">
				<div class="span12">
					<div class="form-container grid-form form-background left-align form-horizontal">
						<form action="" method="get" id=''>
							<input type="hidden"  name='id' id="id" value="">
							
							<div class="control-group">
							
							<div class="control-group">
								<label for="title" class="control-label">班级：</label>
								<div class="controls">
									<select name='grade.id' >
										<c:forEach items="${grades }" var="bean">
											<option value="${bean.id }">${bean.name }</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="control-group">
								<label for="title" class="control-label">教室：</label>
								<div class="controls">
									<input type="text"  name="room" >
								</div>
							</div>
							<div class="control-group">
								<label for="title" class="control-label">课次：</label>
								<div class="controls">
									<select name='num' >
										<option value="1">第一节</option>
										<option value="2">第二节</option>
										<option value="3">第三节</option>
										<option value="4">第四节</option>
										<option value="5">第五节</option>
										<option value="6">第六节</option>
									</select>
								</div>
							</div>
								<label for="title" class="control-label">星期：</label>
								<div class="controls">
									<select name="week">
										<option value="1">星期一</option>
										<option value="2">星期二</option>
										<option value="3">星期三</option>
										<option value="4">星期四</option>
										<option value="5">星期五</option>
										<option value="6">星期六</option>
										<option value="7">星期日</option>
									</select>
								</div>
							</div>
							
							<div class="control-group">
								<label for="title" class="control-label">上课时间：</label>
								<div class="controls">
									<input type="text" id="startTime" name="begin" class=" modal_datetime" readonly="readonly">
								</div>
							</div>
							
							<div class="control-group">
								<label for="title" class="control-label">下课时间：</label>
								<div class="controls">
									<input type="text"  name="end" class=" modal_datetime" readonly="readonly">
								</div>
							</div>
							<div class="control-group">
								<label for="title" class="control-label">课程：</label>
								<div class="controls">
									<select name='category.id' >
										<c:forEach items="${categorys }" var="bean">
											<option value="${bean.id }">${bean.name }</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="control-group">
								<label for="title" class="control-label">任课老师：</label>
								<div class="controls">
									<select name='teacher.id' >
										<c:forEach items="${teachers }" var="bean">
											<option value="${bean.id }">${bean.name }</option>
										</c:forEach>
									</select>
								</div>
							</div>
							
						</form>
					</div>
				</div>
			</div>
		</div>
		
		<div class="modal-footer center" id="div_footer">
			<a class="btn btn-primary" onclick="$.timetable.saveUser()">保存</a>
			<a href="#" class="btn" data-dismiss="modal" id="closeViewModal">关闭</a>
		</div>
	</div>
</body>
</html>