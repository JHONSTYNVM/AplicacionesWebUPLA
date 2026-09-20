package com.upla;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/triangulo")
public class TrianguloServlet extends HttpServlet {

    // ==========================================
    // CUANDO ENTRAMOS DIRECTAMENTE A /triangulo
    // ==========================================
    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        // Mostrar la página del triángulo
        request.getRequestDispatcher("/triangulo.jsp")
               .forward(request, response);
    }

    // ==========================================
    // CUANDO PRESIONAMOS "CALCULAR HIPOTENUSA"
    // ==========================================
    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        // Obtener los valores ingresados
        String valorA = request.getParameter("catetoA");
        String valorB = request.getParameter("catetoB");

        try {

            double catetoA = Double.parseDouble(valorA);
            double catetoB = Double.parseDouble(valorB);

            // Teorema de Pitágoras
            double hipotenusa = Math.sqrt(
                    Math.pow(catetoA, 2)
                    +
                    Math.pow(catetoB, 2)
            );

            // Enviar datos al JSP
            request.setAttribute("catetoA", catetoA);
            request.setAttribute("catetoB", catetoB);
            request.setAttribute("hipotenusa",
                    String.format("%.2f", hipotenusa));

            // Mostrar nuevamente la página
            request.getRequestDispatcher("/triangulo.jsp")
                   .forward(request, response);

        } catch (NumberFormatException e) {

            // Si los datos no son válidos
            request.setAttribute(
                    "error",
                    "Ingrese valores numéricos válidos."
            );

            request.getRequestDispatcher("/triangulo.jsp")
                   .forward(request, response);
        }
    }
}