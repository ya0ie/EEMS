<%@ page contentType="text/html;charset=UTF-8" language="java"
	pageEncoding="utf-8"%>
<html>
<head>
<title>编辑</title>
</head>
<%@ page import="cn.njucm.po.User"%>
<%@ page import="cn.njucm.dao.DBUtil"%>

<body>
	<%--通过请求对象获取用户和密码：(借助变量)--%>
	<%--输出前台传过来的值：--%>
	<%--解决数据库问题：加-连-句-执-出-关 --%>
	<%
		User user = null;
		request.setCharacterEncoding("UTF-8");
		int id = Integer.valueOf(request.getParameter("userId")).intValue();
		user = DBUtil.selectById(id);
	%>
	<form id="edit_form" action="./edit_save.jsp" method="post">
		用户名：   <input type="text" id="edit_username" name="username" value=<%=user.getUsername()%>> <br /> 
		密码：       <input type="password" id="edit_password" name="password" value=""> <br /> 
		确认密码： <input type="password" id="edit_spassword" name="spassword" value=""> <br /> 
		真实姓名： <input type="text" id="edit_realname" name="realname" value=<%=user.getRealname()%>><br /> 
		年龄：       <input type="text" id="edit_age" name="age" value=<%=user.getAge()%>><br /> 
		性别：       <input type="text" id="edit_sex" name="sex" value=<%=user.getSex()%>><br /> 
		生日：       <input type="text" id="edit_birthday" name="birthday" value=<%=user.getBirthday()%>> <br /> 
		薪水：       <input type="text" id="edit_salary" name="salary" value=<%=user.getSalary()%>> <br /> 
		<input type="submit" id="edit_ok" value="提交">
		&ensp;&ensp;&ensp;&ensp;&ensp;&ensp; 
		<input type="reset" id="edit_no" value="重置">
	</form>
</body>
</html>
