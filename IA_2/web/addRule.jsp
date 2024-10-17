<%-- 
    Document   : addRule
    Created on : 16/10/2024, 6:21:52?p.?m.
    Author     : wava1
--%>
<%-- 
    Document   : addRule
    Created on : 16/10/2024, 6:21:52?p.?m.
    Author     : wava1
--%>
<!DOCTYPE html>
<html>
<head>
    <link href="css/styles.css" rel="stylesheet" type="text/css">
    <title>Agregar Regla</title>
    <style>
        /* Ocultar todas las condiciones inicialmente */
        .condition {
            display: none;
        }
    </style>
</head>
<body>
    <h2>Agregar Nueva Regla</h2>
    <form id="ruleForm" action="addRule" method="post">
        <label for="resultAttribute">Resultado (Atributo):</label>
        <input type="text" name="resultAttribute" required><br>
        <label for="resultValue">Resultado (Valor):</label>
        <input type="text" name="resultValue" required><br>
        
        <label for="conditionCount">Número de Condiciones:</label>
        <select id="conditionCount" name="conditionCount">
            <!-- Opciones de 1 a 10 -->
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10</option>
        </select><br>

        <h3>Condiciones:</h3>
        <div id="conditions">
            <!-- Generar 10 pares de campos (atributo y valor), ocultos inicialmente -->
            <div class="condition" id="condition1">
                <label>Atributo 1:</label>
                <input type="text" name="attribute1" id="attribute1"><br>
                <label>Valor 1:</label>
                <input type="text" name="value1" id="value1"><br><br>
            </div>
            <div class="condition" id="condition2">
                <label>Atributo 2:</label>
                <input type="text" name="attribute2" id="attribute2"><br>
                <label>Valor 2:</label>
                <input type="text" name="value2" id="value2"><br><br>
            </div>
            <div class="condition" id="condition3">
                <label>Atributo 3:</label>
                <input type="text" name="attribute3" id="attribute3"><br>
                <label>Valor 3:</label>
                <input type="text" name="value3" id="value3"><br><br>
            </div>
            <div class="condition" id="condition4">
                <label>Atributo 4:</label>
                <input type="text" name="attribute4" id="attribute4"><br>
                <label>Valor 4:</label>
                <input type="text" name="value4" id="value4"><br><br>
            </div>
            <div class="condition" id="condition5">
                <label>Atributo 5:</label>
                <input type="text" name="attribute5" id="attribute5"><br>
                <label>Valor 5:</label>
                <input type="text" name="value5" id="value5"><br><br>
            </div>
            <div class="condition" id="condition6">
                <label>Atributo 6:</label>
                <input type="text" name="attribute6" id="attribute6"><br>
                <label>Valor 6:</label>
                <input type="text" name="value6" id="value6"><br><br>
            </div>
            <div class="condition" id="condition7">
                <label>Atributo 7:</label>
                <input type="text" name="attribute7" id="attribute7"><br>
                <label>Valor 7:</label>
                <input type="text" name="value7" id="value7"><br><br>
            </div>
            <div class="condition" id="condition8">
                <label>Atributo 8:</label>
                <input type="text" name="attribute8" id="attribute8"><br>
                <label>Valor 8:</label>
                <input type="text" name="value8" id="value8"><br><br>
            </div>
            <div class="condition" id="condition9">
                <label>Atributo 9:</label>
                <input type="text" name="attribute9" id="attribute9"><br>
                <label>Valor 9:</label>
                <input type="text" name="value9" id="value9"><br><br>
            </div>
            <div class="condition" id="condition10">
                <label>Atributo 10:</label>
                <input type="text" name="attribute10" id="attribute10"><br>
                <label>Valor 10:</label>
                <input type="text" name="value10" id="value10"><br><br>
            </div>
        </div>
        
        <input type="submit" value="Guardar Regla">
    </form>

    <script>
        // Función para mostrar las condiciones según la cantidad seleccionada usando un switch
        document.getElementById('conditionCount').addEventListener('change', function() {
            const count = parseInt(this.value);

            // Ocultar todas las condiciones inicialmente
            const conditions = document.querySelectorAll('.condition');
            conditions.forEach(condition => condition.style.display = 'none');

            // Mostrar condiciones según la opción seleccionada usando switch
            switch (count) {
                case 1:
                    document.getElementById('condition1').style.display = 'block';
                    break;
                case 2:
                    document.getElementById('condition1').style.display = 'block';
                    document.getElementById('condition2').style.display = 'block';
                    break;
                case 3:
                    document.getElementById('condition1').style.display = 'block';
                    document.getElementById('condition2').style.display = 'block';
                    document.getElementById('condition3').style.display = 'block';
                    break;
                case 4:
                    document.getElementById('condition1').style.display = 'block';
                    document.getElementById('condition2').style.display = 'block';
                    document.getElementById('condition3').style.display = 'block';
                    document.getElementById('condition4').style.display = 'block';
                    break;
                case 5:
                    document.getElementById('condition1').style.display = 'block';
                    document.getElementById('condition2').style.display = 'block';
                    document.getElementById('condition3').style.display = 'block';
                    document.getElementById('condition4').style.display = 'block';
                    document.getElementById('condition5').style.display = 'block';
                    break;
                case 6:
                    document.getElementById('condition1').style.display = 'block';
                    document.getElementById('condition2').style.display = 'block';
                    document.getElementById('condition3').style.display = 'block';
                    document.getElementById('condition4').style.display = 'block';
                    document.getElementById('condition5').style.display = 'block';
                    document.getElementById('condition6').style.display = 'block';
                    break;
                case 7:
                    document.getElementById('condition1').style.display = 'block';
                    document.getElementById('condition2').style.display = 'block';
                    document.getElementById('condition3').style.display = 'block';
                    document.getElementById('condition4').style.display = 'block';
                    document.getElementById('condition5').style.display = 'block';
                    document.getElementById('condition6').style.display = 'block';
                    document.getElementById('condition7').style.display = 'block';
                    break;
                case 8:
                    document.getElementById('condition1').style.display = 'block';
                    document.getElementById('condition2').style.display = 'block';
                    document.getElementById('condition3').style.display = 'block';
                    document.getElementById('condition4').style.display = 'block';
                    document.getElementById('condition5').style.display = 'block';
                    document.getElementById('condition6').style.display = 'block';
                    document.getElementById('condition7').style.display = 'block';
                    document.getElementById('condition8').style.display = 'block';
                    break;
                case 9:
                    document.getElementById('condition1').style.display = 'block';
                    document.getElementById('condition2').style.display = 'block';
                    document.getElementById('condition3').style.display = 'block';
                    document.getElementById('condition4').style.display = 'block';
                    document.getElementById('condition5').style.display = 'block';
                    document.getElementById('condition6').style.display = 'block';
                    document.getElementById('condition7').style.display = 'block';
                    document.getElementById('condition8').style.display = 'block';
                    document.getElementById('condition9').style.display = 'block';
                    break;
                case 10:
                    document.getElementById('condition1').style.display = 'block';
                    document.getElementById('condition2').style.display = 'block';
                    document.getElementById('condition3').style.display = 'block';
                    document.getElementById('condition4').style.display = 'block';
                    document.getElementById('condition5').style.display = 'block';
                    document.getElementById('condition6').style.display = 'block';
                    document.getElementById('condition7').style.display = 'block';
                    document.getElementById('condition8').style.display = 'block';
                    document.getElementById('condition9').style.display = 'block';
                    document.getElementById('condition10').style.display = 'block';
                    break;
                default:
                    break;
            }
        });

        // Mostrar la primera condición por defecto al cargar la página
        document.getElementById('condition1').style.display = 'block';
    </script>
</body>
</html>
