
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<jsp:useBean id="u" class="com.pack.User" scope="session"></jsp:useBean>
<jsp:setProperty name="u" property="*"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
   String url = "jdbc:mysql://localhost:3306/nelson";
   String username = "root";
    String password = "NELSON22";
     
    Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(url,username,password);
        String sql = "insert into nelson.users values(?,?,?)";
        PreparedStatement pst = con.prepareStatement(sql);
        String name=request.getParameter("name");
        String pass=request.getParameter("password");
        String email=request.getParameter("email");
        pst.setString(1,name);
        pst.setString(2,pass);
        pst.setString(3,email);
        
        pst.executeUpdate();
       
        %>
        
        
        
        Record: <br><br>
        <jsp:getProperty property="name" name="u"/><br>
        <jsp:getProperty property="password" name="u"/><br>
        <jsp:getProperty property="email" name="u"/><br><br>
        
        <a href="second.jsp">Visit</a>
    </body>
</html>
