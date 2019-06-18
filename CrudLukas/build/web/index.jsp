<%-- 
    Document   : index
    Created on : 08/06/2019, 22:18:07
    Author     : Lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.User"%>
<%@page import="Misc.UsersCrud"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form action="index.jsp" method="post">
            <label>Nome:</label><br/>
            <input type="text" name="nome"/><br/>
            
            <input type="submit" value="Pesquisar"/>
        </form>
        
        <%
            try{
                out.print("<table border='1'>");
                out.print("<tr>");
                out.print("<th>ID</th><th>Nome</th><th>Email</th><th>Editar</th><th>Excluir</th>");
                out.print("</tr>");
                UsersCrud prd = new UsersCrud();
                if(request.getParameter("nome") == ("") || request.getParameter("nome") == null){
                    ArrayList<User> lista = prd.listAll();
                    for(int num = 0; num < lista.size(); num++){
                        out.print("<tr>");
                        out.print("<td>"+lista.get(num).getId()+"</td>");
                        out.print("<td>"+lista.get(num).getNome()+"</td>");
                        out.print("<td>"+lista.get(num).getEmail()+"</td>");
                        out.print("<td><a href='edit.jsp?id="+lista.get(num).getId()+"&nome="+lista.get(num).getNome()+"&email="+lista.get(num).getEmail()+"'>OK</a></td>");
                        out.print("<td><a href='del.jsp?id="+lista.get(num).getId()+"&nome="+lista.get(num).getNome()+"'>CLIQUE</a></td>");
                        out.print("<td></td>");
                        out.print("</tr>");
                    }                    
                }else{
                    ArrayList<User> lista = prd.listAllName(request.getParameter("nome"));
                    for(int num = 0; num < lista.size(); num++){
                        out.print("<tr>");
                        out.print("<td>"+lista.get(num).getId()+"</td>");
                        out.print("<td>"+lista.get(num).getNome()+"</td>");
                        out.print("<td>"+lista.get(num).getEmail()+"</td>");
                        out.print("<td><a href='edit.jsp?id="+lista.get(num).getId()+"&nome="+lista.get(num).getNome()+"&email="+lista.get(num).getEmail()+"'>CLIQUE</a></td>");
                        out.print("<td><a href='del.jsp?id="+lista.get(num).getId()+"&nome="+lista.get(num).getNome()+"'>CLIQUE</a></td>");
                        out.print("<td></td>");
                        out.print("</tr>");
                    }                    
                }
                out.print("</table>");
            }catch(Exception erro){
                throw new RuntimeException("Erro 21: "+ erro);
            }
        %>
        
        <button><a href="insert.jsp" style="text-decoration:none">Novo Cadastro</a></button>
    </body>
</html>
