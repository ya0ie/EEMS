<%--
  Created by IntelliJ IDEA.
  User: ya0ie
  Date: 2018/6/22
  Time: 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="cn.njucm.po.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>主页</title>
  </head>
  <body>
欢迎登录！
<%= ((User)session.getAttribute("user")).getRealname()%>
  </body>
</html>
