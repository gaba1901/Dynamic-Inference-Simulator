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
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Rule; // Importar las clases del modelo

@WebServlet("/processInference")
public class ProcessInferenceServlet extends HttpServlet {

    @Override
    public void init() throws ServletException {
        // Cargar reglas desde el contexto de la aplicación (reglas dinámicas)
        List<Rule> reglas = (List<Rule>) getServletContext().getAttribute("rules");
        if (reglas == null) {
            reglas = new ArrayList<>();
            getServletContext().setAttribute("rules", reglas);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int parameterCount = Integer.parseInt(request.getParameter("parameterCount"));
        Map<String, String> userAttributes = new HashMap<>();

        for (int i = 1; i <= parameterCount; i++) {
            String parameterName = request.getParameter("parameterName" + i);
            String parameterValue = request.getParameter("parameterValue" + i);
            if (parameterName != null && parameterValue != null) {
                userAttributes.put(parameterName, parameterValue);
            }
        }

        String resultado = realizarInferencia(userAttributes);
        request.setAttribute("resultado", resultado);
        request.getRequestDispatcher("generateInferenceForm.jsp").forward(request, response);
    }

    private String realizarInferencia(Map<String, String> inputs) {
        List<Rule> reglas = (List<Rule>) getServletContext().getAttribute("rules");
        if (reglas != null) {
            for (Rule regla : reglas) {
                if (regla.evaluate(inputs)) {
                    return regla.getResultAttribute() + " = " + regla.getResultValue();
                }
            }
        }
        return "No se encontró un resultado.";
    }
}
