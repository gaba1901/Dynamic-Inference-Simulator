<%-- 
    Document   : index
    Created on : 16/10/2024, 6:21:44?p.?m.
    Author     : wava1
--%>

<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
    <title>Simulador de Inferencia Dinámico</title>
     <link href="css/styles.css" rel="stylesheet" type="text/css">
</head>
<body>
    <h1>Simulador de Inferencia Dinámico hacia adelante</h1>
    <a href="addRule.jsp">Agregar Regla</a> | <a href="selectParameters.jsp">Realizar Inferencia</a>

    <h2>Reglas Agregadas</h2>
    <ul>
        <%
            // Obtener las reglas del contexto de la aplicación
            List<model.Rule> rules = (List<model.Rule>) application.getAttribute("rules");
            if (rules != null && !rules.isEmpty()) {
                for (model.Rule rule : rules) {
        %>
            <li>
                <b>Resultado:</b> <%= rule.getResultAttribute() %> = <%= rule.getResultValue() %><br>
                <b>Condiciones:</b>
                <ul>
                    <%
                        for (model.Condition condition : rule.getConditions()) {
                    %>
                        <li><%= condition.getAttribute() %> = <%= condition.getValue() %></li>
                    <%
                        }
                    %>
                </ul>
            </li>
        <%
                }
            } else {
        %>
            <li>No hay reglas agregadas aún.</li>
        <%
            }
        %>
    </ul>
</body>
</html>
