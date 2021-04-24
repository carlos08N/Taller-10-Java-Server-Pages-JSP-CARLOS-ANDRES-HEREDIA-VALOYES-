<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Convesor COP a USD</title>
        <script src="Scripts/script.js"></script>
        <link rel="stylesheet" href="Styles/style.css">
    </head>
    <body>
        <div>
            <h1>Ingrese valor a convetir</h1>
            <br><br><br>
            <form id="Env" action="ResultadoConvesor.jsp" method="get">
                <p>Valor en Pesos(COP): <input id="n1" type="number" name="num"> </p>
                <br><br><br>
                <input type="button" onclick="myFunction()" value="Convertir">
            </form>
        </div>
    </body>
    <!--CARLOS ANDRES HEREDIA VALOYES-->
</html>
