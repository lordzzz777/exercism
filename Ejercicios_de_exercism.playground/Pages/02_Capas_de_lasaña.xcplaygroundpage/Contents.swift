import Foundation


// ----**** Capas de lasaña ****----

// Introducción:

// ---- Variables ----

// Los valores se pueden asociar con nombres definiendo
// una variable y asignando un valor a esa variable.
// Ese nombre se puede usar para hacer referencia a ese
// valor en todo el programa. Las variables son mutables,
// lo que significa que el valor
// se puede cambiar en cualquier momento.

// Las variables se definen utilizando la palabra clave var.

var variableName = 10

// Swift es un lenguaje de tipo seguro y de tipo estático, 
// lo que significa que todos los valores tienen un tipo
// en tiempo de compilación. Puede especificar explícitamente
// el tipo de una variable o dejar que el compilador infiera
// el tipo en función del valor asignado.

// Al asignar un valor a una variable, hay dos formas,
// ya sea a través de la escritura explícita a través
// de anotaciones de tipo o a través de la escritura implícita.

var explicitVar: Int = 10 // Explicitly typed
var implicitVar = 10      // Implicitly typed

// La actualización del valor de una variable
// se realiza utilizando el operador =.

// *** Nota: ***
// El tipo de variable se fija una vez que se define inicialmente.

var someInt: Int

// This would trigger a compiler error
// print(someInt) // Variable 'someInt' used before being initialized

// Assign a value to the names
someInt = 169

print(someInt) // Prints '169'

// ---- Constantes ----

// Las constantes son similares a las variables en el sentido de que
// están asociadas con un nombre y un valor, pero el valor de una
// constante no se puede cambiar una vez que se asigna inicialmente y,
// por lo tanto, es inmutable. Las constantes se definen usando
// la palabra clave let.

let constantName = 10          // constant
let explicitConstant: Int = 10 // Explicitly typed constant

// Suma, resta y multiplicación

// Swift tiene operadores de suma, resta y multiplicación.
// Los operadores son +, - y * respectivamente.

print(1 + 1) // Prints 2
print(2 - 1) // Prints 1
print(2 * 2) // Prints 4

// En Swift, las funciones son un trozo de código que realiza una tarea.
// Una función tiene un tipo de retorno y, por lo tanto,
// se puede utilizar como un valor y analizar como
// argumentos para otras funciones.
// En Swift se definen las funciones utilizando la palabra clave
// func seguida del nombre de la función, los argumentos separados
// por comas y un tipo de retorno.

// Los argumentos se definen mediante una etiqueta de argumento,7
// un nombre de parámetro seguido de dos puntos y luego un tipo.
// El tipo de devolución se define por a -> seguido
// del tipo del valor de retorno.

/*
 func functionName(argumentName parameterName: ArgumentType) -> ReturnType {
  // function body
  }
*/
// Los argumentos de Swift son un poco especiales en comparación con
// otros idiomas, usan etiquetas de argumentos. La etiqueta de
// argumento se utiliza al llamar a la función.

// El nombre del parámetro se utiliza dentro del cuerpo de la función
// para hacer referencia al valor del argumento.

// Si solo asigna un nombre al argumento, se utilizará tanto como la 
// etiqueta del argumento como como el nombre del parámetro.

// Al asignar el nombre de la etiqueta del argumento como: _,
// por lo que el argumento no tendrá una etiqueta al llamar
// a la función, por ejemplo: functionName(argumentValue)
 
/*
 Para llamar a una función, utiliza el nombre de la función seguido
 de la etiqueta del argumento y el valor del argumento, así:
 
 func functionName(argumentLabel parameterName: ArgumentType) -> ReturnType {
   // function body
 }

 // calling the function
 functionName(argumentLabel: argumentValue)
 
 Todos los argumentos son inmutables de forma predeterminada y no se pueden
 cambiar dentro de la función. Cuando una función tenga un tipo de retorno,
 asegúrese de devolver un valor de ese tipo. Eso se hace usando la palabra
 clave return seguida del valor a devolver.
 */

func addTen(number value: Int) -> Int {
  return value + 10
}

// calling the function
addTen(number: 10) // Returns 20


// Cuando las funciones no devuelven un valor, tienen un tipo de retorno
// de Vacío, que es el mismo que (), pero el tipo de retorno
// también se puede omitir en estos casos.

// COMENTARIOS

// Swift admite dos tipos de comentarios. Los comentarios
// de una sola línea están precedidos
// por // y los comentarios de varias
// líneas se insertan entre /* y */.



// ****************** Ejercico ******************

// Instrucciones:

// En este ejercicio vas a escribir un código para ayudarte
// a cocinar una lasaña brillante de tu libro de cocina favorito.
// Tienes cuatro tareas, todas relacionadas
// con el tiempo dedicado a cocinar la lasaña.


// 1. Defina el tiempo esperado del horno en minutos
/*
 Defina la constante expectedMinutesInOven,
 que almacena cuántos minutos debe estar la
 lasaña en el horno. Según el libro de cocina,
 el tiempo esperado del horno en minutos es de 40:
 
 expectedMinutesInOven
   Returns 40
 
 
       ****** Aclaracion del enunciado ******
 
 El enunciado pide que definas una constante llamada expectedMinutesInOven
 que almacene la cantidad de minutos que la lasaña debe estar en el horno.
 Según el libro de cocina, el tiempo esperado en minutos es de 40. Entonces,
 el código proporcionado asigna el valor 40 a la constante expectedMinutesInOven.
 
*/

let expectedMinutesInOven = 40


// 2. Calcula el tiempo restante del horno en minutos

/*
 Defina la función remainingMinutesInOven(elapsedMinutes:)
 que toma el argumento elapsedMinutes que contiene el número
 de minutos que la lasaña ya ha estado en el horno.
 La función debe devolver cuántos minutos aún tiene
 que permanecer en el horno la lasaña, en función del tiempo esperado
 del horno en minutos desde la tarea anterior.
 
 remainingMinutesInOven(elapsedMinutes: 30)
   Returns 10
 
 
      ****** Aclaracion del enunciado ******
 
 El problema pide que define una función llamada remainingMinutesInOven.
 La función toma un argumento llamado elapsedMinutes, que representa el
 número de minutos que la lasaña ya ha estado en el horno.
 El objetivo de la función es calcular cuántos minutos más debe permanecer
 la lasaña en el horno, basándose en el tiempo total esperado en el horno.

 El enunciado menciona un ejemplo para aclarar la tarea. 
 Si la lasaña ha estado en el horno durante 30 minutos y
 el tiempo total esperado en el horno es de 40 minutos,
 entonces el resultado de llamar a la función
 remainingMinutesInOven con elapsedMinutes igual a 30
 debería ser 10, ya que aún quedan 10 minutos para alcanzar
 el tiempo total esperado.
 
*/

func remainingMinutesInOven(elapsedMinutes: Int) -> Int {
             return expectedMinutesInOven - elapsedMinutes
}


// 3. Calcula el tiempo de preparación en minutos

/*
 Defina la función preparationTimeInMinutes(layers:) que toma las
 capas de argumento que contienen el número
 de capas que agregó a la lasaña.
 La función debe devolver la cantidad de minutos que pasó preparando
 la lasaña, suponiendo que cada capa tarde 2 minutos en prepararse.
 
 preparationTimeInMinutes(layers: 2)
   Returns 4
 
 
      ****** Aclaracion del enunciado ******
 
 El problema pide que define una función llamada preparationTimeInMinutes.
 La función toma un argumento llamado layers, que representa el número de
 capas que se han agregado a la lasaña.
 El objetivo de la función es calcular la cantidad total de minutos que ha
 pasado preparando la lasaña,
 asumiendo que cada capa tarda 2 minutos en prepararse.

 El enunciado proporciona un ejemplo para aclarar la tarea. 
 Si se han agregado 2 capas a la lasaña, entonces el resultado
 de llamar a la función preparationTimeInMinutes con layers
 igual a 2 debería ser 4, ya que se asume que cada capa
 toma 2 minutos en prepararse y se han agregado 2 capas en total.
 
 */

func preparationTimeInMinutes(layers: Int) -> Int {
                return layers * 2
}


// 4. Calcula el tiempo total de trabajo en minutos

/*
 Defina la función totalTimeInMinutes(layers:elapsedMinutes:)
 que toma dos argumentos:
 el parámetro de capas es el número de capas que agregó a la lasaña,
 y el parámetro elapsedMinutes es el número de minutos que la lasaña
 ha estado en el horno. La función debe devolver cuántos minutos en
 total has trabajado en cocinar la lasaña, que es la suma del tiempo
 de preparación en minutos, y el tiempo en minutos que la lasaña
 ha pasado en el horno en este momento.
 
 totalTimeInMinutes(layers: 3, elapsedMinutes: 20)
   Returns 26
 
 
      ****** Aclaracion del enunciado ******
 
 El problema pide que define una función llamada totalTimeInMinutes.
 Esta función toma dos argumentos: layers y elapsedMinutes.
 El primero representa el número de capas que se han agregado a la lasaña,
 y el segundo es el número de minutos que la lasaña ha estado en el horno.
 El objetivo de la función es calcular cuántos minutos en total has
 trabajado en cocinar la lasaña.
 Este total se obtiene sumando el tiempo de preparación en minutos
 (calculado por la función preparationTimeInMinutes) y el tiempo en
 minutos que la lasaña ha pasado en el horno hasta el momento.

 El enunciado proporciona un ejemplo para aclarar la tarea.
 Si se han agregado 3 capas a la lasaña y ha transcurrido un
 total de 20 minutos en el horno, entonces el resultado de
 llamar a la función totalTimeInMinutes con layers igual a 3
 y elapsedMinutes igual a 20 debería ser 26. Esto se calcula
 sumando el tiempo de preparación
 (6 minutos, ya que 3 capas * 2 minutos por capa) y el tiempo
 en el horno (20 minutos), lo que da un total de 26 minutos.
 
 */

func totalTimeInMinutes(layers: Int, elapsedMinutes: Int) -> Int {
    return elapsedMinutes + preparationTimeInMinutes(layers: layers)
}



