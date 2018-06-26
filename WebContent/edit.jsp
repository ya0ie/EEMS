<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<head>
    <title>编辑</title>
</head>
<body>
<%--通过请求对象获取用户和密码：(借助变量)--%>
<%--输出前台传过来的值：--%>
<%--解决数据库问题：加-连-句-执-出-关 --%>
<%
    request.setCharacterEncoding("UTF-8");
    System.out.println("success");
    System.out.println(request.getParameter("userId"));
%>
</body>
</html>
