package com.upla;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "RectanguloServlet", urlPatterns = {"/rectangulo"})
public class RectanguloServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Recibimos los datos enviados desde el formulario
        String anchoTexto = request.getParameter("ancho");
        String altoTexto = request.getParameter("alto");
        String unidad = request.getParameter("unidad");

        try {
            // Convertimos los valores a números
            double ancho = Double.parseDouble(anchoTexto);
            double alto = Double.parseDouble(altoTexto);

            // Validamos que sean valores positivos
            if (ancho <= 0 || alto <= 0) {
                request.setAttribute("error",
                        "El ancho y el alto deben ser mayores que cero.");
                request.getRequestDispatcher("index.jsp").forward(request, response);
                return;
            }

            // Cálculos
            double area = ancho * alto;
            double perimetro = 2 * (ancho + alto);

            // Enviamos los resultados al JSP
            request.setAttribute("ancho", ancho);
            request.setAttribute("alto", alto);
            request.setAttribute("unidad", unidad);
            request.setAttribute("area", area);
            request.setAttribute("perimetro", perimetro);

            // Regresamos a la página principal
            request.getRequestDispatcher("index.jsp").forward(request, response);

        } catch (NumberFormatException e) {

            // Si el usuario ingresa algo que no es un número
            request.setAttribute("error",
                    "Por favor, ingresa valores numéricos válidos.");

            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.sendRedirect("index.jsp");
    }
}