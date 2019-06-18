<%-- 
    Document   : exec_edit
    Created on : 10/06/2019, 00:01:07
    Author     : Lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.User"%>
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
                User pro = new User();
                UsersCrud prd = new UsersCrud();
                if(request.getParameter("nome").equals("") || request.getParameter("email").equals("")){
                    response.sendRedirect("index.jsp");
                }else{
                    pro.setNome(request.getParameter("nome"));
                    pro.setEmail(request.getParameter("email"));
                    pro.setId(Integer.parseInt(request.getParameter("id")));
                    prd.edit(pro);
                    response.sendRedirect("index.jsp");
                }
            }catch(Exception erro){
                throw new RuntimeException("Erro 12: " + erro);
            }
        %>
    </body>
</html>
