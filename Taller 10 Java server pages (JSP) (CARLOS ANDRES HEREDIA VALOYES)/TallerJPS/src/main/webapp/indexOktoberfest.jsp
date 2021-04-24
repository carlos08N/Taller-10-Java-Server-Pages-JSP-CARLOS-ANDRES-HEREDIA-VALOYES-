<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Oktoberfest en Colombia!</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
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
                            out.println("<form class=\"d-flex\" action=\"indexOktoberfest.jsp\">");
                            out.println("    <input class=\"form-control me-2\" type=\"text\" placeholder=\"Usuario\" aria-label=\"Usuario\" name=\"user\">");
                            out.println("    <input class=\"form-control me-2\" type=\"text\" placeholder=\"Contraseña\" aria-label=\"Contraseña\" name=\"contra\">");
                            out.println("    <button class=\"btn btn-outline-success\" type=\"submit\">Login</button>");
                            out.println("</form>");  
                        }
                    %>  
                </div>
            </nav>
            <br><br><br><br><br><br><br><br>
            <h1 class="h1 text-center">Haga click en la pagina que quiere Visitar</h1>
            <br><br><br><br>
            <div class="container">
                <div class="row">
                    <div class="col-sm-5 col-md-6"><a href="Astra.jsp"><img src="IMG/Astralogo.jpg" alt="Imagen" style="width:500px; height:400px;"></a></div>
                    <div class="col-sm-5 offset-sm-2 col-md-6 offset-md-0"><a href="Becks.jsp"><img src="IMG/Beck’slogo.jpg"  alt="Imagen" style="width:500px;height:400px;"></a></div>
                </div>
                <br><br>
                <div class="row">
                    <div class="col-sm-6 col-md-5 col-lg-6"><a href="Weidmann.jsp"><img src="IMG/Weidmannlogo.png" alt="Imagen" style="width:500px; height:400px;"></a></div>
                    <div class="col-sm-6 col-md-5 offset-md-2 col-lg-6 offset-lg-0"><a href="Erdinger.jsp"><img src="IMG/Erdingerlogo.jpg" alt="Imagen" style="width:500px; height:400px;"></a></div>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
    </body>
</html>
<!--CARLOS ANDRES HEREDIA VALOYES-->
