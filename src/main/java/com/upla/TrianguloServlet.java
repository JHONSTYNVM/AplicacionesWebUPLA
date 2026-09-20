package com.upla;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "TrianguloServlet", urlPatterns = {"/triangulo"})
public class TrianguloServlet extends HttpServlet {

    @Override
    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        try {

            // Obtener los valores enviados desde el JSP
            double catetoA = Double.parseDouble(
                    request.getParameter("catetoA")
            );

            double catetoB = Double.parseDouble(
                    request.getParameter("catetoB")
            );

            // Calcular la hipotenusa
            double hipotenusa = Math.sqrt(
                    Math.pow(catetoA, 2)
                    + Math.pow(catetoB, 2)
            );

            // Redondear a 2 decimales
            hipotenusa = Math.round(hipotenusa * 100.0) / 100.0;

            // Enviar los resultados al JSP
            request.setAttribute("catetoA", catetoA);
            request.setAttribute("catetoB", catetoB);
            request.setAttribute("hipotenusa", hipotenusa);

            // Regresar a la página
            request.getRequestDispatcher("triangulo.jsp")
                    .forward(request, response);

        } catch (NumberFormatException e) {

            response.sendError(
                    HttpServletResponse.SC_BAD_REQUEST,
                    "Los valores ingresados no son válidos."
            );
        }
    }
}