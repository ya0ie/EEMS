<%@ page import="java.util.ArrayList" %>
<%@ page import="cn.njucm.po.User" %>
<%@ page import="cn.njucm.dao.DBUtil" pageEncoding="utf-8" %><%--
  Created by IntelliJ IDEA.
  User: Mr.Robot
  Date: 2018/6/24
  Time: 12:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    ArrayList<User> users = null;
    users = DBUtil.selectAllUser();
    for (User user : users) {
        System.out.println(user.getUsername());
    }
%>

</body>
</html>
