<%-- 
    Document   : generateInferenceForm
    Created on : 16/10/2024, 8:02:56?p.?m.
    Author     : wava1
--%>

<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
    <link href="css/styles.css" rel="stylesheet" type="text/css">
    <title>Realizar Inferencia</title>
</head>
<body>
    <h2>Realizar Inferencia</h2>
    <form id="inferenceForm" action="processInference" method="post">
        <%
            // Obtener el número de parámetros desde el request o establecer un valor predeterminado si no está presente
            String parameterCountStr = request.getParameter("parameterCount");
            int parameterCount = parameterCountStr != null ? Integer.parseInt(parameterCountStr) : 0;

            // Generar dinámicamente los campos de entrada
            for (int i = 1; i <= parameterCount; i++) {
                String paramName = request.getParameter("parameterName" + i);
        %>
                <label for="parameterValue<%= i %>"><%= paramName != null ? paramName : "Parámetro " + i %>:</label>
                <input type="text" name="parameterValue<%= i %>" id="parameterValue<%= i %>" required><br><br>
                <input type="hidden" name="parameterName<%= i %>" value="<%= paramName %>">
        <%
            }
        %>
        <input type="hidden" name="parameterCount" value="<%= parameterCount %>">
        <input type="submit" value="Inferir">
    </form>

    <%
        String resultado = (String) request.getAttribute("resultado");
        if (resultado != null) {
    %>
        <h3>Resultado de la Inferencia:</h3>
        <p><%= resultado %></p>
    <%
        }
    %>
</body>
</html>
