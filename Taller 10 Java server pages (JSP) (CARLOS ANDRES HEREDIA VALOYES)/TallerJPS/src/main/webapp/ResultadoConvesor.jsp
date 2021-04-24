<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado COP->USD</title>
        <link rel="stylesheet" href="Styles/style.css">
    </head>
    <body>
        <div>
            <h1>Resultado</h1>
            <br><br><br>
            <%!DecimalFormat formato1 = new DecimalFormat("#.00"); %>
            <p><%=request.getParameter("num")%> Peso Colombianos Son =<%=formato1.format(Double.parseDouble(request.getParameter("num"))/3663.12)%> (USD)</p>
        </div>
    </body>
</html>
