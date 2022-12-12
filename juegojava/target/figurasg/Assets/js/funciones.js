const createNewNumbers = () => [...new Array(5)].map(_ => Math.floor(Math.random() * 5) + 1);
 
let combinacion=createNewNumbers();
console.log(combinacion);
 
// Creamos el evento "click" para cada boton
document.querySelectorAll("input[type=button]").forEach(el => el.addEventListener("click", pulsacion));
 
// Funcion para eliminar el evento "click" de los botones y deshabilitarlos
// Esta función se ejecuta una vez encontrados los 5 numeros
const removeEvent = () => document.querySelectorAll("input[type=button]").forEach(el => {
    el.removeEventListener("click", pulsacion)
    el.disabled=true;
});
 
// Establecemos la variable que contendra los numeros introducidos por el usuario
let numeros=[];
 
// Funcion que se ejecuta en cada pulsacion de los botones
function pulsacion(e) {
 
    // Añadimos el nuevo numero al array de "numeros"
    numeros.push(parseInt(this.value));
 
    if (arraySame(combinacion.slice(0, numeros.length), numeros)==false) {
        numeros=error(numeros, "ko");
    }
    if (combinacion.length == numeros.length) {
        numeros=error(numeros, "ok");
        removeEvent()
    }
    mostrarNumeros(numeros);
}
 
/**
 * Funcion que muestra los numeros
 *
 * @param array arr - Recibe el array de numeros a mostrar
 */
const mostrarNumeros = arr => {
    document.getElementById("pulsacion").innerText=arr.join(", ");
}
 
/**
 * Funcion que compara dos arrays
 *
 * @param array arr1
 * @param array arr2
 *
 * @return boolean
 */
const arraySame = (arr1, arr2) => {
    return arr1.every((value, index) => value === arr2[index]);
}
 
/**
 * Funcion que es llamada cuando se instroduce un valor que no es correcto
 *
 * @param array  arr       - array con los valores
 * @param string styleName - Nombre del estilo a mostrar [ok|ko]
 */
const error = (arr, styleName) => {
    const div=document.createElement("div");
    div.innerText=arr.join(", ");
    div.classList.add(styleName);
    document.getElementById("pulsaciones").appendChild(div);
    return [];
}