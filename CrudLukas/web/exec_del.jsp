<%-- 
    Document   : exec_del
    Created on : 10/06/2019, 00:01:28
    Author     : Lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Misc.UsersCrud"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
                UsersCrud prd = new UsersCrud();
                prd.delete(Integer.parseInt(request.getParameter("id")));
                response.sendRedirect("index.jsp");
            }catch(Exception erro){
                throw new RuntimeException("Erro 19: " + erro);
            }
        
        %>
    </body>
</html>
