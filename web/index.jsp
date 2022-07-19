
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form action="process.jsp" method="post">
            <table>
                <tr><td> Name:</td><td><input type="text" name="name"></td></tr>
                <tr><td>Password:</td><td><input type="text" name="password"></td></tr>
                <tr><td>Email:</td><td><input type="text" name="email"></td></tr>
                <tr><td colspan="2"> <input type="submit" value="Register"></td></tr>
             </table>
        </form>
       
    </body>
</html>
