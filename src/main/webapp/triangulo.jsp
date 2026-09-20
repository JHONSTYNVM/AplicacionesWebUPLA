<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Proyecto 01 - Teorema de Pitágoras</title>

    <link rel="stylesheet" href="css/triangulo.css">
</head>

<body>

<header class="encabezado">

    <div class="marca">

        <img src="img/upla.png"
             alt="Logo UPLA"
             class="logo-upla">

        <div class="separador"></div>

        <div class="titulo-proyecto">

            <h1>PROYECTO 01</h1>

            <p>
                Aplicación de escritorio para hallar la hipotenusa
                de un triángulo rectángulo
            </p>

        </div>

    </div>

    <div class="teorema">
        Teorema de Pitágoras
    </div>

</header>


<main class="contenedor">


    <!-- =========================
         MEDIDAS DE LOS CATETOS
         ========================= -->

    <section class="panel medidas">

        <div class="titulo-seccion">

            <div class="icono">
                📐
            </div>

            <div>

                <h2>
                    Medidas de los Catetos
                </h2>

                <p>
                    Ingresa las longitudes de los lados perpendiculares
                    para hallar el valor exacto de la hipotenusa.
                </p>

            </div>

        </div>


        <form action="triangulo" method="POST">


            <div class="campos">

                <!-- CATETO A -->

                <div class="campo">

                    <div class="cabecera-campo">

                        <label for="catetoA">
                            CATETO HORIZONTAL (A)
                        </label>

                        <span class="variable">
                            Variable a
                        </span>

                    </div>

                    <div class="entrada">

                        <input
                            type="number"
                            id="catetoA"
                            name="catetoA"
                            step="any"
                            min="0.01"
                            value="${catetoA != null ? catetoA : ''}"
                            placeholder="Ingrese el valor"
                            required>

                        <span class="unidad">
                            u
                        </span>

                    </div>

                </div>


                <!-- CATETO B -->

                <div class="campo">

                    <div class="cabecera-campo">

                        <label for="catetoB">
                            CATETO VERTICAL (B)
                        </label>

                        <span class="variable">
                            Variable b
                        </span>

                    </div>

                    <div class="entrada">

                        <input
                            type="number"
                            id="catetoB"
                            name="catetoB"
                            step="any"
                            min="0.01"
                            value="${catetoB != null ? catetoB : ''}"
                            placeholder="Ingrese el valor"
                            required>

                        <span class="unidad">
                            u
                        </span>

                    </div>

                </div>

            </div>


            <button
                type="submit"
                class="boton-calcular">

                🧮
                Calcular Hipotenusa

            </button>

        </form>

    </section>


    <!-- =========================
         REPRESENTACIÓN VISUAL
         ========================= -->

    <section class="panel representacion">

        <div class="titulo-seccion">

            <div class="icono">
                🖼
            </div>

            <div>

                <h2>
                    Representación Visual
                </h2>

                <p>
                    Esquema proporcional del triángulo rectángulo
                    según los valores ingresados.
                </p>

            </div>

        </div>


   <div class="grafico-triangulo">

    <svg viewBox="0 0 700 430"
         xmlns="http://www.w3.org/2000/svg"
         class="svg-triangulo">

        <!-- FONDO DE CUADRÍCULA -->
        <defs>

            <pattern id="grid"
                     width="25"
                     height="25"
                     patternUnits="userSpaceOnUse">

                <circle
                    cx="2"
                    cy="2"
                    r="1.5"
                    fill="#d9effb"/>

            </pattern>

        </defs>


        <rect
            x="0"
            y="0"
            width="700"
            height="430"
            fill="url(#grid)"/>


        <!-- CATETO VERTICAL -->

        <line
            x1="180"
            y1="85"
            x2="180"
            y2="330"
            class="cateto-vertical"/>


        <!-- CATETO HORIZONTAL -->

        <line
            x1="180"
            y1="330"
            x2="520"
            y2="330"
            class="cateto-horizontal"/>


        <!-- HIPOTENUSA -->

        <line
            x1="180"
            y1="85"
            x2="520"
            y2="330"
            class="hipotenusa"/>


        <!-- ÁNGULO DE 90° -->

        <path
            d="M180 300 L210 300 L210 330"
            class="angulo-recto"/>


        <!-- ETIQUETA CATETO B -->

        <rect
            x="105"
            y="185"
            width="120"
            height="48"
            rx="15"
            class="etiqueta-blanca"/>

        <text
            x="165"
            y="216"
            text-anchor="middle"
            class="texto-etiqueta">

            b = ${catetoB != null ? catetoB : '4'} u

        </text>


        <!-- ETIQUETA HIPOTENUSA -->

        <rect
            x="375"
            y="125"
            width="125"
            height="48"
            rx="15"
            class="etiqueta-hipotenusa"/>

        <text
            x="437"
            y="156"
            text-anchor="middle"
            class="texto-hipotenusa">

            c = ${hipotenusa != null ? hipotenusa : '5'} u

        </text>


        <!-- ETIQUETA CATETO A -->

        <rect
            x="315"
            y="350"
            width="120"
            height="48"
            rx="15"
            class="etiqueta-blanca"/>

        <text
            x="375"
            y="381"
            text-anchor="middle"
            class="texto-etiqueta">

            a = ${catetoA != null ? catetoA : '3'} u

        </text>

    </svg>

</div>


        <div class="informacion">

            <div class="info-icono">
                ⓘ
            </div>

            <p>
                El teorema establece que el cuadrado de la hipotenusa
                (c) es igual a la suma de los cuadrados de los catetos
                (a y b).
            </p>

        </div>

    </section>


    <!-- =========================
         RESULTADO
         ========================= -->

    <section class="panel resultado">

        <div class="titulo-resultado">

            <div class="icono resultado-icono">
                ✓
            </div>

            <h2>
                Resultado del Cálculo
            </h2>

            <span class="estado">
                ✓ CÁLCULO EXITOSO
            </span>

        </div>


        <div class="resultado-contenido">

            <div>

                <h3>
                    HIPOTENUSA OBTENIDA (C)
                </h3>

                <div class="numero">

                    ${hipotenusa != null ? hipotenusa : '5.00'}

                    <span>
                        unidades
                    </span>

                </div>

            </div>


            <div class="formula-resultado">

                c =
                √(
                ${catetoA != null ? catetoA : '3'}²
                +
                ${catetoB != null ? catetoB : '4'}²
                )

            </div>

        </div>


        <div class="formula-aplicada">

            <h3>
                🧮 Fórmula Aplicada:
            </h3>

            <div class="formula-box">

                <strong>
                    c² = a² + b²
                </strong>

                <span></span>

                <strong>
                    c = √(a² + b²)
                </strong>

            </div>

        </div>

    </section>


</main>


<script src="js/triangulo.js"></script>

</body>
</html>