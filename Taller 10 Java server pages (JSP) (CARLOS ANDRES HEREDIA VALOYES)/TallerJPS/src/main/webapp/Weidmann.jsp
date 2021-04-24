<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <title>Weidmann</title>
    </head>
    <body>
        <div class="container-fluid">
            <nav class="navbar navbar-light bg-dark">
                <div class="container-fluid">
                    <a href="indexOktoberfest.jsp" class="navbar-brand h3 text-light">LICORES</a>
                    <% 
                         Integer ss = (Integer)session.getAttribute("ss");
                        if(ss == null){
                            session.setAttribute("usuario", request.getParameter("user"));
                            session.setAttribute("contraseña", request.getParameter("contra"));
                        }
                        if("jonh".equals((String)session.getAttribute("usuario")) || "smith".equals((String)session.getAttribute("contraseña"))){
                            out.println("<p class=\"h3 text-light\">Sesion Iniciada: John Smith</p>");
                            session.setAttribute("ss", 1);
                        }else{
                            out.println("<form class=\"d-flex\" action=\"Weidmann.jsp\">");
                            out.println("    <input class=\"form-control me-2\" type=\"text\" placeholder=\"Usuario\" aria-label=\"Usuario\" name=\"user\">");
                            out.println("    <input class=\"form-control me-2\" type=\"text\" placeholder=\"Contraseña\" aria-label=\"Contraseña\" name=\"contra\">");
                            out.println("    <button class=\"btn btn-outline-success\" type=\"submit\">Login</button>");
                            out.println("</form>");  
                        }
                    %>  
                </div>
            </nav>
            <br><br><br><br><br><br><br><br>
            <h1 class="h1 text-center">Weidmann</h1>
            <br><br><br><br><br>
            <div class="text-center">    
                <img src="IMG/Weidmann.jpg" alt="Imagen" style="width:500px; height:400px;">
            </div>       
            <br><br><br><br><br><br>
            <p class="h4 text-center">La Weidmann Hefetrüb es una cerveza de trigo que como toda Hefeweissbier no cuenta con la etapa de filtrado, dando ese aspecto turbio característico de este estilo. Se caracteriza por su sabor y aroma frutal, resaltando notas de banana, levadura y naranjas.</p>
            <br><br><br><br><br><br><br><br><br><br>
            <%
                if(ss==null){
                    out.println("<p class=\"h4 text-center\">Inicia Sesion y refresque para mas informacion de compra</p>");
                }else{
                    out.println("<div class=\"text-center\">\n" +
                                "    <img src=\"IMG/jumbologo.png\" alt=\"Imagen\" style=\"width:200px; height:200px;\">\n" +
                                "</div> \n" +
                                "<br><br><br><br>\n" +
                                "<p class=\"h4 text-center\">Compras en Jumbo</p>\n" +
                                "<br><br><br><br>\n" +
                                "<p class=\"h4 text-center\">Línea atención al cliente: Bogotá:(031) 3489898</p>\n" +
                                "<br><br><br><br>\n" +
                                "<p class=\"h4 text-center\">Precio: 9.999</p>\n" +
                                "<br><br><br><br>\n" +
                                "<div class=\"text-center\">\n" +
                                "    <img src=\"https://exitocol.vtexassets.com/assets/vtex.file-manager-graphql/images/c70dabaf-1586-43a4-881f-16ccfe647496___50dc4199e8020554de79a91123175966.svg\" alt=\"Imagen\" style=\"width:200px; height:200px;\">\n" +
                                "</div> \n" +
                                "<br><br><br><br>\n" +
                                "<p class=\"h4 text-center\">Compras en Exito</p>\n" +
                                "<br><br><br><br>\n" +
                                "<p class=\"h4 text-center\">Línea atención al cliente: Bogotá:  (1) 8000 484 800</p>\n" +
                                "<br><br><br><br>\n" +
                                "<p class=\"h4 text-center\">Precio: 7.999</p>\n" +
                                "<br><br><br><br>\n" +"");
                }
            %>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
    </body>
</html>
<!--CARLOS ANDRES HEREDIA VALOYES-->
