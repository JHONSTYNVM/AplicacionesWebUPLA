<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Proyecto 01 - Área y Perímetro</title>

    <link rel="stylesheet" href="css/rectangulo.css">
</head>

<body>

    <header class="encabezado">
        <div class="marca">
           <img src="img/upla.png" alt="Logo UPLA" class="logo-upla">

            <div class="separador"></div>

            <div class="titulo-proyecto">
                <h1>PROYECTO 01</h1>
                <p>Aplicación web para hallar el área y el perímetro de un rectángulo.</p>
            </div>
        </div>

        <div class="modo">
            Modo Educativo Activo
        </div>

        <div class="configuracion">
            ⚙
        </div>
    </header>


    <main class="contenedor">

        <!-- PANEL DE ENTRADA -->
        <section class="panel entrada">

            <div class="titulo-seccion">
                <div class="icono">📐</div>

                <div>
                    <h2>Dimensiones del Rectángulo</h2>
                    <p>
                        Ingresa los valores numéricos para calcular
                        de forma inmediata el área y el perímetro.
                    </p>
                </div>
            </div>


            <form action="rectangulo" method="POST">

                <!-- ANCHO -->
                <div class="campo">

                    <label for="ancho">
                        Ancho (Base)
                        <span>(b)</span>
                    </label>

                    <div class="entrada-unidad">

                        <input
                            type="number"
                            id="ancho"
                            name="ancho"
                            step="any"
                            min="0.01"
                            value="${ancho != null ? ancho : ''}"
                            placeholder="Ingrese el ancho"
                            required>

                        <select name="unidad" id="unidad">
                            <option value="cm"
                                ${unidad == 'cm' || unidad == null ? 'selected' : ''}>
                                cm
                            </option>

                            <option value="m"
                                ${unidad == 'm' ? 'selected' : ''}>
                                m
                            </option>
                        </select>

                    </div>

                    <small>
                        La dimensión horizontal paralela al eje X
                    </small>

                </div>


                <!-- ALTO -->
                <div class="campo">

                    <label for="alto">
                        Alto (Altura)
                        <span>(h)</span>
                    </label>

                    <div class="entrada-unidad">

                        <input
                            type="number"
                            id="alto"
                            name="alto"
                            step="any"
                            min="0.01"
                            value="${alto != null ? alto : ''}"
                            placeholder="Ingrese el alto"
                            required>

    <span class="unidad-fija" id="unidadAlto">
    ${unidad != null ? unidad : 'cm'}
    </span>


                    </div>

                    <small>
                        La dimensión vertical paralela al eje Y
                    </small>

                </div>


                <!-- BOTÓN -->
                <button type="submit" class="boton-calcular">
                    🧮
                    Calcular Geometría
                </button>

            </form>

        </section>


        <!-- RESULTADO DEL ÁREA -->
        <section class="panel resultado">

            <div class="etiqueta">
                ÁREA RESULTANTE
            </div>

            <div class="formula">
                A = b × h
            </div>

            <div class="valor">
                ${area != null ? area : '0'}
                <span>
                    ${unidad != null ? unidad : 'cm'}²
                </span>
            </div>

            <p class="explicacion">

                ${area != null
                    ? 'Espacio de superficie total: '
                      .concat(ancho)
                      .concat(' × ')
                      .concat(alto)
                      .concat(' = ')
                      .concat(area)
                      .concat(' ')
                      .concat(unidad)
                      .concat('²')
                    : 'Ingresa las dimensiones para obtener el área.'}

            </p>

        </section>


        <!-- RESULTADO DEL PERÍMETRO -->
        <section class="panel resultado">

            <div class="etiqueta">
                PERÍMETRO RESULTANTE
            </div>

            <div class="formula">
                P = 2 × (b + h)
            </div>

            <div class="valor">
                ${perimetro != null ? perimetro : '0'}
                <span>
                    ${unidad != null ? unidad : 'cm'}
                </span>
            </div>

            <p class="explicacion">

                ${perimetro != null
                    ? 'Suma de contornos: 2 × ('
                      .concat(ancho)
                      .concat(' + ')
                      .concat(alto)
                      .concat(') = ')
                      .concat(perimetro)
                      .concat(' ')
                      .concat(unidad)
                    : 'Ingresa las dimensiones para obtener el perímetro.'}

            </p>

        </section>


        <!-- FÓRMULAS -->
        <section class="panel formulas">

            <div class="titulo-seccion">
                <div class="icono">▣</div>

                <div>
                    <h2>Fórmulas y Propiedades</h2>
                </div>
            </div>

            <div class="formula-info">

                <h3>ÁREA (A)</h3>

                <strong>
                    A = base × altura
                </strong>

                <p>
                    Mide el espacio bidimensional encerrado dentro
                    de los límites del rectángulo.
                    Se expresa en unidades cuadradas (cm² o m²).
                </p>


                <h3>PERÍMETRO (P)</h3>

                <strong>
                    P = 2 × (base + altura)
                </strong>

                <p>
                    Representa la longitud total de la frontera
                    o contorno del rectángulo.
                    Se expresa en unidades de longitud (cm o m).
                </p>

            </div>

        </section>


        <!-- REPRESENTACIÓN VISUAL -->
        <section class="panel visual">

            <div class="titulo-seccion">

                <div class="icono">▧</div>

                <div>
                    <h2>Representación Visual Dinámica</h2>
                    <p>
                        Esquema proporcional con cotas de medida.
                    </p>
                </div>

            </div>


            <div class="grafico">

                <div class="etiqueta-ancho">
                    Ancho (Base) =
                    ${ancho != null ? ancho : '16'}
                    ${unidad != null ? unidad : 'cm'}
                </div>


                <div class="rectangulo">

                    <div class="medida-izquierda">
                        ${alto != null ? alto : '10'}
                        ${unidad != null ? unidad : 'cm'}
                    </div>

                    <div class="resultado-centro">

                        Área =
                        ${area != null ? area : '160'}
                        ${unidad != null ? unidad : 'cm'}²

                        <small>
                            (Base × Altura)
                        </small>

                    </div>

                    <div class="medida-derecha">

                        Alto (Altura)<br>

                        ${alto != null ? alto : '10'}
                        ${unidad != null ? unidad : 'cm'}

                    </div>

                </div>


                <div class="etiqueta-abajo">

                    ${ancho != null ? ancho : '16'}
                    ${unidad != null ? unidad : 'cm'}

                </div>

            </div>

        </section>
</main>

<script src="js/rectangulo.js"></script>

</body>
</html>