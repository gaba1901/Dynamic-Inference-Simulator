/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servlet;

import model.Rule;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RuleServlet extends HttpServlet {

    private List<Rule> rules;

    @Override
    public void init() throws ServletException {
        rules = new ArrayList<>();
        getServletContext().setAttribute("rules", rules);
    }

@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String resultAttribute = request.getParameter("resultAttribute");
    String resultValue = request.getParameter("resultValue");

    // Validar que resultAttribute y resultValue no sean nulos o vacíos
    if (resultAttribute == null || resultValue == null || resultAttribute.isEmpty() || resultValue.isEmpty()) {
        response.sendRedirect("addRule.jsp?error=Datos+inv%C3%A1lidos");
        return;
    }

    Rule newRule = new Rule(resultAttribute, resultValue);

    // Iterar para capturar hasta 10 condiciones del formulario
    for (int i = 1; i <= 10; i++) {
        String attribute = request.getParameter("attribute" + i);
        String value = request.getParameter("value" + i);

        // Verificar si la condición no es nula o vacía antes de agregarla
        if (attribute != null && !attribute.isEmpty() && value != null && !value.isEmpty()) {
            newRule.addCondition(attribute, value);
        }
    }

    // Obtener la lista de reglas del contexto de la aplicación y agregar la nueva regla
    List<Rule> rules = (List<Rule>) getServletContext().getAttribute("rules");
    if (rules == null) {
        rules = new ArrayList<>();
        getServletContext().setAttribute("rules", rules);
    }
    rules.add(newRule);

    response.sendRedirect("index.jsp");
}


}
