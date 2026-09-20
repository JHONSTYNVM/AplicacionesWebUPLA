document.addEventListener("DOMContentLoaded", function () {

    const unidad = document.getElementById("unidad");
    const unidadAlto = document.getElementById("unidadAlto");

    if (unidad && unidadAlto) {

        unidad.addEventListener("change", function () {
            unidadAlto.textContent = this.value;
        });

    }

});