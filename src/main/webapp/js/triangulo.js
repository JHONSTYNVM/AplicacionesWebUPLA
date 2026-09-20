document.addEventListener("DOMContentLoaded", function () {

    const formulario =
        document.querySelector("form");

    if (!formulario) {
        return;
    }


    formulario.addEventListener("submit", function () {

        const catetoA =
            document.getElementById("catetoA").value;

        const catetoB =
            document.getElementById("catetoB").value;


        console.log(
            "Cateto A:",
            catetoA
        );


        console.log(
            "Cateto B:",
            catetoB
        );

    });

});