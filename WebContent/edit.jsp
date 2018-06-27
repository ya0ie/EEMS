<%@ page contentType="text/html;charset=UTF-8" language="java"
	pageEncoding="utf-8"%>
<html>
<head>
	<link rel="stylesheet" href="./static/css/public.css">
	<link rel="stylesheet" href="./static/css/headerAndFooter.css">
	<link rel="stylesheet" href="./static/css/edit.css">
	<link rel="stylesheet" href="./static/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="./static/bootstrap/css/bootstrap-theme.min.css">
	<title>编辑</title>
</head>
<%@ page import="cn.njucm.po.User"%>
<%@ page import="cn.njucm.dao.DBUtil"%>

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
	<%--通过请求对象获取用户和密码：(借助变量)--%>
	<%--输出前台传过来的值：--%>
	<%--解决数据库问题：加-连-句-执-出-关 --%>
	<%
		User user = null;
		request.setCharacterEncoding("UTF-8");
		int id = Integer.valueOf(request.getParameter("userId")).intValue();
		user = DBUtil.selectById(id);
	%>
<div id="form-container" style="margin-left:40%">
	<form id="edit_form" action="./edit_save.jsp" method="post">
		<div class="form-group">
			<label >用户名</label>
			<input type="text" class="form-control" id="edit_username" name="username" value=<%=user.getUsername()%>>
		</div>
		<div class="form-group">
			<label>密码</label>
			<input type="password" class="form-control" id="edit_password" name="password" value="">
		</div>
		<div class="form-group">
			<label >确认密码</label>
			<input type="password" class="form-control" id="edit_spassword" name="spassword" value="">
		</div>
		<div class="form-group">
			<label >真实姓名</label>
			<input type="text" class="form-control" id="edit_realname" name="realname" value=<%=user.getRealname()%>>
		</div>
		<div class="form-group">
			<label >年龄</label>
			<input type="text" class="form-control" id="edit_age" name="age" value=<%=user.getAge()%>>
		</div>
		<div class="form-group">
			<label >性别</label>
			<input type="text" class="form-control" id="edit_sex" name="sex" value=<%=user.getSex()%>>
		</div>
		<div class="form-group">
			<label >生日</label>
			<input type="text" class="form-control" id="edit_birthday" name="birthday" value=<%=user.getBirthday()%>>
		</div>
		<div class="form-group">
			<label >薪水</label>
			<input type="text" class="form-control" id="edit_salary" name="salary" value=<%=user.getSalary()%>>
		</div>
		<input class="btn btn-danger" type="submit" id="edit_ok" value="提交">
		&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
		<input class="btn btn-warning" type="reset" id="edit_no" value="重置">
	</form>
</div>
</body>
</html>
