<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cn.njucm.po.User"%>
<%@ page import="cn.njucm.dao.DBUtil"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
User user=null;
user.setUsername(request.getParameter("edit_username"));
user.setRealname(request.getParameter("edit_realname"));
user.setAge(Integer.valueOf(request.getParameter("edit_age")).intValue());
user.setSex(request.getParameter("edit_sex"));
user.setBirthday(request.getParameter("edit_birthday"));
user.setSalary(Integer.valueOf(request.getParameter("edit_salary")).intValue());
String password=request.getParameter("edit_password");
String spassword=request.getParameter("edit_spassword");
if(password!=spassword){
	System.out.println("密码不一致!");
}else{
	user.setPassword(spassword);
	DBUtil.updateUser(user);
	System.out.println("修改成功!");
}
%>
</body>
</html>