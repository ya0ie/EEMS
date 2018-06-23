<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ page import="cn.njucm.dao.DBUtil"%>
<%@ page import="cn.njucm.po.User" %>
<html>
<head>
    <title>登录处理-响应请求</title>
</head>
<body>
<%--通过请求对象获取用户和密码：(借助变量)--%>
<%--输出前台传过来的值：--%>
<%--解决数据库问题：加-连-句-执-出-关 --%>
<%
    request.setCharacterEncoding("UTF-8");
    String username=request.getParameter("user");
    String password=request.getParameter("pwd");
%>
<%
    DBUtil Db=new DBUtil();
    User user=Db.SelectByUserAndPwd(username,password);
    if(user!=null){
    response.sendRedirect("index.jsp");
    session.setAttribute("name",user);
}else{
    System.out.println("login.html");
}
%>
</body>
</html>
