<%-- 
    Document   : Disciplinas.jsp
    Created on : 17 de abr. de 2023, 14:17:27
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://unpkg.com/alpinejs@3.5.0/dist/cdn.min.js" defer></script>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <div x-data="{
            materia: null,

            getMateria() {
                fetch('fernando.json')
                    .then((response) => response.json())
                    .then((json) => this.materia = json);
            }
            }" x-init="getMateria()">
            <p x-text="materia.materias"> </p>
            </div>   
    </body>
</html>
