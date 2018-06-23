package cn.njucm.dao;

import java.sql.*;
import cn.njucm.po.*;
public class DBUtil {
    static Connection conn = null;
    static String url = "jdbc:mysql://localhost:3306/eedb?characterEncoding=utf8&useSSL=true";
    static String user = "root";
    static String password = "123456";
    //2.1 封装连接功能
    public Connection getConn() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    //2.2封装关闭功能
    public void close(Connection conn, Statement st, ResultSet rs) {
        try {
            if (rs != null)
                rs.close();
            if (st != null)
                st.close();
            if (conn != null)
                conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public User SelectByUserAndPwd(String username,String password) {
        User user=null;
        Connection conn=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        conn = getConn();
        String sql="Select * from emp where username=? and password=?";
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            if(rs.next()) {
                user=new User();
                user.setAge(rs.getInt("age"));
                user.setId(rs.getInt("id"));
                user.setBirthday(rs.getString("birthday"));
                user.setPassword(rs.getString("password"));
                user.setUsername(rs.getString("username"));
                user.setRealname(rs.getString("realname"));
                user.setSalary(rs.getDouble("salary"));
                user.setSex(rs.getString("sex"));
            }
            close(conn, ps, rs);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }
}

