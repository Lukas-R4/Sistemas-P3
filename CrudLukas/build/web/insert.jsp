<%-- 
    Document   : insert
    Created on : 10/06/2019, 00:21:29
    Author     : Lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form action="exec_insert.jsp" method="post">
            <!--<label>ID:</label><br/>
            <input type="text" name="id"/><br/>-->
            
            <label>Nome:</label><br/>
            <input type="text" name="nome"/><br/>
            
            <label>Email:</label><br/>
            <input type="text" name="email"/><br/>
            
            <input type="submit" value="Cadastrar"/>
            <button type="submit" action="index.jsp">Home</button>
            
            
        </form>
        
    </body>
</html>
