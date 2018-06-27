<%--
  Created by IntelliJ IDEA.
  User: ya0ie
  Date: 2018/6/22
  Time: 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="cn.njucm.po.User"%>
<%@ page import="cn.njucm.dao.DBUtil"%>
<%@ page import="java.util.ArrayList"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>主页</title>
<link href="./static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="./static/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="./static/bootstrap/css/dashboard.css" rel="stylesheet">
<link rel="stylesheet" href="./static/css/public.css">
<link rel="stylesheet" href="./static/css/headerAndFooter.css">
<link rel="stylesheet" href="./static/css/login/login.css">
<style>
.table th, .table td {
	text-align: center;
	vertical-align: middle;
}

</style>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top bg-primary"
		style="margin-bottom: 20px; height: 70px;">
		<div id="header">
			<div id="nav" style="background-color: #fff !important;">
				<div id="logo" class="logo">
					<img title="iMooc" src="./static/images/public/logo.jpg"
						onclick="window.open('./index.html', 'self')">
				</div>
				<ul id="header-nav-items">
					<li><a href="/course/list" target="_self"><span
							id="tedu-font-style">达内</span>&nbsp;&nbsp;-&nbsp;&nbsp; <span
							id="NJUCM-font-style">南京中医药大学计算机科学与技术(嵌入式培养)</span>————designed
							By <span id="team-font-style">天龙特攻队</span> </a></li>
					<li><a href=""><span id="slogan-font-style">Never
								Give Up</span></a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar" style="margin-top: 20px;">
				<ul class="nav nav-sidebar">
					<li class="active"><a href="#"><h4>员工信息列表</h4></a></li>
				</ul>
			</div>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main"
				style="margin-top: 20px">
				<div class="table-responsives" style="margin-left: 5%; float: left">
					<table class="table table-striped" style="font-size: 17px">
						<thead>
							<tr>
								<th>编号</th>
								<th>用户名</th>
								<th>密码</th>
								<th>姓名</th>
								<th>年龄</th>
								<th>性别</th>
								<th>生日</th>
								<th>工资</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<%
									ArrayList<User> users = null;
									users = DBUtil.selectAllUser();
									for (User user : users) {
								%>
								<td class="col-md-1"><%=user.getId()%></td>
								<td class="col-md-2"><%=user.getUsername()%></td>
								<td class="col-md-2"><%=user.getPassword()%></td>
								<td class="col-md-2"><%=user.getRealname()%></td>
								<td class="col-md-1"><%=user.getAge()%></td>
								<td class="col-md-1"><%=user.getSex()%></td>
								<td class="col-md-1"><%=user.getBirthday()%></td>
								<td><%=user.getSalary()%></td>
								<td class="col-md-3"><a class="btn btn-primary btn-sm"
									href="javascript:edit(<%=user.getId()%>)">编辑</a> <a
									class="btn btn-danger btn-sm"
									href="javascript:del(<%=user.getId()%>)">删除</a></td>
							</tr>
							<%
								}
							%>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript"
	src="static/js/public/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	function edit(e) {
		window.location.href = "./edit.jsp?userId=" + e;
	}
	function del(e) {
		if (confirm("确认删除id为" + e + "的用户？")) {
			$.ajax({
				url: "./delete.jsp",
				data: {"userId": e},
				success: function () {
					window.location.reload();
                }
			});
		}
	}
</script>
</html>
