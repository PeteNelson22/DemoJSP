
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="u" class="com.pack.User" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        Record <br>
    <jsp:getProperty property="name" name="u"/><br>
    <jsp:getProperty property="password" name="u"/><br>
    <jsp:getProperty property="email" name="u"/><br>
    </body>
</html>
