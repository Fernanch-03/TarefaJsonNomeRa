<%-- 
    Document   : index
    Created on : 17 de abr. de 2023, 14:12:26
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script defer src="https://unpkg.com/alpinejs@3.5.0/dist/cdn.min.js"></script>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <div x-data="{
             name: null,
             ro: null,

            getNome() {
                fetch('fernando.json')
                    .then((response) => response.json())
                    .then((json) => this.name = json)
                    .then((json) => this.ro = json);
            }
            }" x-init="getNome()">
            <p x-text="name.nome"> </p>
            <p x-text="ro.ra"> </p>
            </div>   
    </body>
</html>
