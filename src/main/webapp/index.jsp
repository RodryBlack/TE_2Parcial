<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Seminario"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
    List<Seminario> lista=(List<Seminario>) request.getAttribute("lista");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro  de Seminarios</h1>
        <p><a href="MainController?op=nuevo">Nuevo</a></p>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Titulo</th>
                <th>Expositor</th>
                <th>Fecha</th>
                <th>Horas</th>
                <th>Cupos</th>
                <th></th>
                <th></th>
            </tr>
            
            <c:forEach var="item" items="${lista}">
                <tr>
                <th>${item.id}</th>
                <th>${item.titulo}</th>
                <th>${item.expositor}</th>
                <th>${item.fecha}</th>
                <th>${item.hora}</th>
                <th>${item.cupo}</th>
                <th><a href="MainController?op=editar&id=${item.id}">Editar</<a></th>
                <th><a href="MainController?op=eliminar&id=${item.id}"
                       onclick="return(confirm('Está seguro ???'))">Eliminar</a></th>
            </tr>
                        
            </c:forEach>
            
        </table>
    </body>
</html>
