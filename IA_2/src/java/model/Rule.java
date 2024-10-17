/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */


/**
 *
 * @author wava1
 */
package model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class Rule {
    private String resultAttribute;
    private String resultValue;
    private List<Condition> conditions;

    public Rule(String resultAttribute, String resultValue) {
        this.resultAttribute = resultAttribute;
        this.resultValue = resultValue;
        this.conditions = new ArrayList<>();
    }

    public void addCondition(String attribute, String value) {
        conditions.add(new Condition(attribute, value));
    }

    public boolean evaluate(Map<String, String> attributes) {
        for (Condition condition : conditions) {
            String attributeValue = attributes.get(condition.getAttribute());
            if (attributeValue == null || !attributeValue.equals(condition.getValue())) {
                return false;
            }
        }
        return true;
    }

    public String getResultAttribute() {
        return resultAttribute;
    }

    public String getResultValue() {
        return resultValue;
    }

    public List<Condition> getConditions() {
        return conditions;
    }
}


