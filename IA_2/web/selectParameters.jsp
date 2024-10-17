<%-- 
    Document   : selectParameters
    Created on : 16/10/2024, 8:02:09?p.?m.
    Author     : wava1
--%>
<!DOCTYPE html>
<html>
<head>
    <link href="css/styles.css" rel="stylesheet" type="text/css">
    <title>Seleccionar Par�metros</title>
    <style>
        /* Ocultar todos los par�metros inicialmente */
        .parameter {
            display: none;
        }
    </style>
</head>
<body>
    <h2>Seleccionar Par�metros para la Inferencia</h2>
    <form id="parameterForm" action="generateInferenceForm.jsp" method="post">
        <label for="parameterCount">N�mero de Par�metros:</label>
        <select id="parameterCount" name="parameterCount" required>
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
        </select><br><br>

        <h3>Definir Par�metros:</h3>
        <div id="parameters">
            <!-- Generar 10 campos de par�metros, ocultos inicialmente -->
            <div class="parameter" id="parameter1">
                <label>Nombre del Par�metro 1:</label>
                <input type="text" name="parameterName1" id="parameterName1"><br><br>
            </div>
            <div class="parameter" id="parameter2">
                <label>Nombre del Par�metro 2:</label>
                <input type="text" name="parameterName2" id="parameterName2"><br><br>
            </div>
            <div class="parameter" id="parameter3">
                <label>Nombre del Par�metro 3:</label>
                <input type="text" name="parameterName3" id="parameterName3"><br><br>
            </div>
            <div class="parameter" id="parameter4">
                <label>Nombre del Par�metro 4:</label>
                <input type="text" name="parameterName4" id="parameterName4"><br><br>
            </div>
            <div class="parameter" id="parameter5">
                <label>Nombre del Par�metro 5:</label>
                <input type="text" name="parameterName5" id="parameterName5"><br><br>
            </div>
            <div class="parameter" id="parameter6">
                <label>Nombre del Par�metro 6:</label>
                <input type="text" name="parameterName6" id="parameterName6"><br><br>
            </div>
            <div class="parameter" id="parameter7">
                <label>Nombre del Par�metro 7:</label>
                <input type="text" name="parameterName7" id="parameterName7"><br><br>
            </div>
            <div class="parameter" id="parameter8">
                <label>Nombre del Par�metro 8:</label>
                <input type="text" name="parameterName8" id="parameterName8"><br><br>
            </div>
            <div class="parameter" id="parameter9">
                <label>Nombre del Par�metro 9:</label>
                <input type="text" name="parameterName9" id="parameterName9"><br><br>
            </div>
            <div class="parameter" id="parameter10">
                <label>Nombre del Par�metro 10:</label>
                <input type="text" name="parameterName10" id="parameterName10"><br><br>
            </div>
        </div>
        
        <input type="submit" value="Continuar">
    </form>

    <script>
        // Funci�n para mostrar los par�metros seg�n la cantidad seleccionada usando un switch
        document.getElementById('parameterCount').addEventListener('change', function() {
            const count = parseInt(this.value);

            // Ocultar todos los par�metros inicialmente
            const parameters = document.querySelectorAll('.parameter');
            parameters.forEach(parameter => parameter.style.display = 'none');

            // Mostrar par�metros seg�n la opci�n seleccionada usando switch
            switch (count) {
                case 1:
                    document.getElementById('parameter1').style.display = 'block';
                    break;
                case 2:
                    document.getElementById('parameter1').style.display = 'block';
                    document.getElementById('parameter2').style.display = 'block';
                    break;
                case 3:
                    document.getElementById('parameter1').style.display = 'block';
                    document.getElementById('parameter2').style.display = 'block';
                    document.getElementById('parameter3').style.display = 'block';
                    break;
                case 4:
                    document.getElementById('parameter1').style.display = 'block';
                    document.getElementById('parameter2').style.display = 'block';
                    document.getElementById('parameter3').style.display = 'block';
                    document.getElementById('parameter4').style.display = 'block';
                    break;
                case 5:
                    document.getElementById('parameter1').style.display = 'block';
                    document.getElementById('parameter2').style.display = 'block';
                    document.getElementById('parameter3').style.display = 'block';
                    document.getElementById('parameter4').style.display = 'block';
                    document.getElementById('parameter5').style.display = 'block';
                    break;
                case 6:
                    document.getElementById('parameter1').style.display = 'block';
                    document.getElementById('parameter2').style.display = 'block';
                    document.getElementById('parameter3').style.display = 'block';
                    document.getElementById('parameter4').style.display = 'block';
                    document.getElementById('parameter5').style.display = 'block';
                    document.getElementById('parameter6').style.display = 'block';
                    break;
                case 7:
                    document.getElementById('parameter1').style.display = 'block';
                    document.getElementById('parameter2').style.display = 'block';
                    document.getElementById('parameter3').style.display = 'block';
                    document.getElementById('parameter4').style.display = 'block';
                    document.getElementById('parameter5').style.display = 'block';
                    document.getElementById('parameter6').style.display = 'block';
                    document.getElementById('parameter7').style.display = 'block';
                    break;
                case 8:
                    document.getElementById('parameter1').style.display = 'block';
                    document.getElementById('parameter2').style.display = 'block';
                    document.getElementById('parameter3').style.display = 'block';
                    document.getElementById('parameter4').style.display = 'block';
                    document.getElementById('parameter5').style.display = 'block';
                    document.getElementById('parameter6').style.display = 'block';
                    document.getElementById('parameter7').style.display = 'block';
                    document.getElementById('parameter8').style.display = 'block';
                    break;
                case 9:
                    document.getElementById('parameter1').style.display = 'block';
                    document.getElementById('parameter2').style.display = 'block';
                    document.getElementById('parameter3').style.display = 'block';
                    document.getElementById('parameter4').style.display = 'block';
                    document.getElementById('parameter5').style.display = 'block';
                    document.getElementById('parameter6').style.display = 'block';
                    document.getElementById('parameter7').style.display = 'block';
                    document.getElementById('parameter8').style.display = 'block';
                    document.getElementById('parameter9').style.display = 'block';
                    break;
                case 10:
                    document.getElementById('parameter1').style.display = 'block';
                    document.getElementById('parameter2').style.display = 'block';
                    document.getElementById('parameter3').style.display = 'block';
                    document.getElementById('parameter4').style.display = 'block';
                    document.getElementById('parameter5').style.display = 'block';
                    document.getElementById('parameter6').style.display = 'block';
                    document.getElementById('parameter7').style.display = 'block';
                    document.getElementById('parameter8').style.display = 'block';
                    document.getElementById('parameter9').style.display = 'block';
                    document.getElementById('parameter10').style.display = 'block';
                    break;
                default:
                    break;
            }
        });

        // Mostrar el primer par�metro por defecto al cargar la p�gina
        document.getElementById('parameter1').style.display = 'block';
    </script>
</body>
</html>
