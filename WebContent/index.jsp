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
</head>
<body>
	<p style="margin-left: 70%">
		欢迎登录！
		<%=((User) session.getAttribute("user")).getRealname()%>
	</p>
	<div style="overflow: auto; height: 400px; margin-top: 10%">
		<table border="1" style="margin-left: 40%;">
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
			</tr>
			<%
				}
			%>
		</table>
	</div>

</body>
</html>
