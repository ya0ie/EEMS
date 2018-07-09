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
<link rel="stylesheet" href="./static/css/index.css">

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
					<li><a style="text-decoration: none;" href="#" target="_self"><span
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
			<div class="col-sm-3 col-md-2 sidebar" style="margin-top: 5px;">
				<ul class="nav nav-sidebar">
					<li><a href="index.html"><h4>团队成员</h4></a></li>
					<li class="active"><a href="#"><h4>员工信息列表</h4></a></li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li>&nbsp;</li>
					<li style="background: #cd8585;"><a href="#"
						style="text-decoration: none;"><h4>员工信息搜索</h4></a></li>
					<li>&nbsp;</li>
					<li><input type="text" placeholder="姓名关键字查询"
						class="form-control" style="width: 150px; margin-left: 20px"></li>
				</ul>
			</div>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main "
				style="margin-top: 5px; margin-bottom: 40px">
				<div class="table-responsives ">
					<table class="table table-striped ">
						<thead>
							<tr>
								<th class="col-md-1">编号</th>
								<th class="col-md-2">用户名</th>
								<th class="col-md-1">密码</th>
								<th class="col-md-2">姓名</th>
								<th class="col-md-1">年龄</th>
								<th class="col-md-1">性别</th>
								<th class="col-md-2">生日</th>
								<th>工资</th>
								<th class="col-md-3">操作</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<%
									ArrayList<User> users = null;
									users = DBUtil.selectAllUser();
									for (User user : users) {
								%>
								<td><%=user.getId()%></td>
								<td><%=user.getUsername()%></td>
								<td><%=user.getPassword()%></td>
								<td><%=user.getRealname()%></td>
								<td><%=user.getAge()%></td>
								<td><%=user.getSex()%></td>
								<td><%=user.getBirthday()%></td>
								<td><%=user.getSalary()%></td>
								<td><a class="btn btn-primary btn-sm"
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
	<nav class="navbar navbar-default navbar-fixed-bottom"
		style="height: 75px">
		<div class="container">
			<div class="footer-link" style="float: left; margin-left: 300px">
				<div>
					<ul class="foot-123">
						<li><a href="/about/cooperate" target="_blank" title="企业合作">企业合作</a></li>
						<li><a href="/about/job" target="_blank" title="人才招聘">人才招聘</a></li>
						<li><a href="/about/contact" target="_blank" title="联系我们">联系我们</a>
						</li>
						<li><a href="/about/faq" target="_blank" title="常见问题">常见问题</a></li>
						<li><a href="/user/feedback" target="_blank" title="意见反馈">意见反馈</a>
						</li>
						<li><a href="/about/friendly" target="_blank" title="友情链接">友情链接</a></li>
					</ul>
				</div>
				<div class="footer-copyright" style="margin-left: 15px">
					<p style="color: #93999F">©&nbsp;2018&nbsp;天龙特攻队&nbsp;&nbsp;南京中医药大学
						计算机科学与技术(嵌入式培养)</p>
				</div>
			</div>
		</div>
	</nav>
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
				url : "./delete.jsp",
				data : {
					"userId" : e
				},
				success : function() {
					window.location.reload();
				}
			});
		}
	}
</script>

</html>
