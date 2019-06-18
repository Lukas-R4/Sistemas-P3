<%-- 
    Document   : edit
    Created on : 10/06/2019, 00:21:41
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
        
        <form action="exec_edit.jsp" method="post">
            <label>ID:</label><br/>
            <input type="text" name="id" value="<%=request.getParameter("id")%>"/><br/>
            
            <label>Nome:</label><br/>
            <input type="text" name="nome" value="<%=request.getParameter("nome")%>"/><br/>
            
            <label>Email:</label><br/>
            <input type="text" name="email" value="<%=request.getParameter("email")%>"/><br/>
            
            <input type="submit" value="Alterar"/>
            <button type="submit" action="index.jsp">Home</button>
            
        </form>
    </body>
</html>
