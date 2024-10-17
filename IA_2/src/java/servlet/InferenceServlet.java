/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servlet;

/**
 *
 * @author wava1
 */

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InferenceServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Crear un mapa para almacenar los atributos y valores ingresados por el usuario
        Map<String, String> userAttributes = new HashMap<>();

        // Iterar sobre todos los parámetros recibidos
        request.getParameterMap().forEach((key, value) -> {
            if (value.length > 0 && value[0] != null && !value[0].isEmpty()) {
                userAttributes.put(key, value[0]);
            }
        });

        // Aquí puedes usar el mapa 'userAttributes' para hacer la inferencia con las reglas cargadas
        // Lógica de inferencia basada en 'userAttributes'...

        // Redirigir a la página de resultados o mostrar los resultados en esta misma página
        response.sendRedirect("result.jsp");
    }
}
