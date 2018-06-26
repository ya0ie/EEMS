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
	<link rel="stylesheet" href="./static/css/public.css">
	<link rel="stylesheet" href="./static/css/headerAndFooter.css">
	<link rel="stylesheet" href="./static/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="./static/bootstrap/css/bootstrap-theme.min.css">
	<title>主页</title>
</head>
<body>
<header>
	<div id="header">
		<div id="nav" style="background-color: #fff !important;">
			<div id="logo" class="logo">
				<img title="iMooc" src="./static/images/public/logo.jpg" onclick="window.open('./index.html', 'self')">
			</div>
			<ul id="header-nav-items">
				<li>
					<a href="/course/list" target="_self"><span id="tedu-font-style">达内</span>&nbsp;&nbsp;-&nbsp;&nbsp;
						<span id="NJUCM-font-style">南京中医药大学计算机科学与技术(嵌入式培养)</span>————designed By
						<span id="team-font-style">天龙特攻队</span>
					</a>
				</li>
				<li>
					<a href=""><span id="slogan-font-style">Never Give Up</span></a>
				</li>
			</ul>
		</div>
	</div>
</header>
	<p style="margin-left: 70%">
		欢迎登录！
		<%-- <%=((User) session.getAttribute("user")).getRealname()%> --%>
	</p>
	<div>
		<table class="table table-striped">
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
					<td><a class="btn btn-sm btn-primary" href="javascript:edit(<%=user.getId()%>)">编辑</a></td>
					<td><a class="btn btn-sm btn-danger" href="javascript:del(<%=user.getId()%>)">删除</a></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>
</body>
<script type="text/javascript" src="static/js/public/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	function edit(e) {
		window.location.href = "./edit.jsp?userId=" + e;
    }
    function del(e) {
	    if (confirm("确认删除id为" + e + "的用户？")) {
            $.post("./delete.jsp", {"userId":e});
		}
    }
</script>
</html>
