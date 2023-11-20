// Obtener las instancias de los objetos
var inst_regleta1 = instance_find(obj_regleta1, 0);
var inst_regleta2 = instance_find(obj_regleta2, 0);
var inst_contnumerador = instance_find(obj_contnumerador, 0);
var inst_contdenominador = instance_find(obj_contdenominador, 0);


// Obtener el valor del numerador y del denominador
var valor_numerador = 0;
var valor_denominador = 0;

// Sumar los valores de las regletas en el contenedor del numerador
for (var i = 0; i < array_length(inst_contnumerador); i++) {
 valor_numerador += inst_contnumerador[i].valor;
}

// Sumar los valores de las regletas en el contenedor del denominador
for (var i = 0; i < array_length(inst_contdenominador); i++) {
 valor_denominador += inst_contdenominador[i].valor;
}

// Obtener la respuesta correcta del objeto ejercicio1s
var respuesta_correcta_numerador = obj_ejercicio1s.respuesta_correcta_numerador;
var respuesta_correcta_denominador = obj_ejercicio1s.respuesta_correcta_denominador;

// Comparar los valores obtenidos con la respuesta correcta
if (valor_numerador == respuesta_correcta_numerador && valor_denominador == respuesta_correcta_denominador) {
 // El usuario ha respondido correctamente
 show_message("¡Correcto!");
} else {
 // El usuario ha respondido incorrectamente
 show_message("Incorrecto.");
}