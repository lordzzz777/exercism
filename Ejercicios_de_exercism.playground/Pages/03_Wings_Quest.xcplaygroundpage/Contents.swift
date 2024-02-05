import Foundation


// Manejo de Booleanos

// Swift tiene un tipo conocido como Bool, se utiliza para representar
// los valores verdadero y falso.

// Operadores lógicos

// Swift tiene 3 operadores lógicos (!, ||, &&) que se utilizan para
// combinar Bools y hacer expresiones que producen diferentes valores.

// Y => (&&):
// El operador and en Swift está representado por && y devuelve
// verdadero si ambos valores dados son verdaderos, de lo contrario,
// devuelve falso. Cuando se utiliza el operador y, se coloca un Bool
// en el lado derecho del && y otro en el lado izquierdo.

true && true  // true
true && false // false

// O => (||):
// El operador or en Swift está representado por || y devuelve verdadero
// si al menos uno de los valores dados es verdadero.
// Si ambos valores son falsos, entonces devuelve falso.
// Al usar el operador o se debe colocar un bool en el lado derecho del
// || y otro en el lado izquierdo.

true || true   // true
true || false  // true
false || false // false

// No => (!):
// ¡El no operador en Swift está representado por! Y devuelve verdadero
// si el Bool dado es falso, y devuelve falso si se da verdadero.
// Cuando se utiliza el no operador,
// se debe colocar un Bool después del operador (!).

!true  // false
!false // true

// Usando paréntesis(())
// Cuando trabajes con booleanos, puedes usar paréntesis explícitos para
// decidir qué Bools evaluar primero. El resultado puede diferir
// dependiendo de cómo se utilicen los paréntesis. En Swift,
// lo que está entre paréntesis se evalúa primero.

true && false && false || true   // true
true && false && (false || true) // false

// Dado que lo que está entre paréntesis se evalúa primero,
// en el siguiente ejemplo, el operador not se aplicará a
// la expresión dentro de los paréntesis.

!true && false   // false
!(true && false) // true

// ***** Nota *****
// Solo debe usar paréntesis cuando afecten al resultado,
// de lo contrario, deberían omitirse.
// ****************


// Instrucciones
// Estás en proceso de desarrollar el nuevo y muy apreciado juego Wings Quest.
// En el juego eres un pájaro que se mueve y recoge semillas.
// El jugador gana recogiendo todas las semillas.
// Si el jugador entra en contacto con un águila, entonces el jugador perderá
// todas sus semillas y perderá el juego. Hay una excepción a esta regla:
// el jugador puede tener un power-up activo que
// lo hace volar más alto que otras aves.

// Tu objetivo es escribir algunas reglas que se utilizarán en el juego.


// ------- Enunciado del ejercicio: -------

// **** Instrucciones ****
// Estás en proceso de desarrollar el nuevo y muy apreciado juego Wings Quest.
// En el juego eres un pájaro que se mueve y recoge semillas.
// El jugador gana recogiendo todas las semillas.
// Si el jugador entra en contacto con un águila, entonces el jugador perderá
// todas sus semillas y perderá el juego. Hay una excepción a esta regla:
// el jugador puede tener un power-up activo
// que lo hace volar más alto que otras aves.

// Tu objetivo es escribir algunas reglas que se utilizarán en el juego.


// **** ENUNCIADO: ****
/*
    --------------- 1º parte del problema ---------------
 
 En el juego, el pájaro obtendrá puntos de bonificación si toca un
 águila mientras tiene un power-up.
 Defina la función bonusPoints(powerUpActive:touchingEagle:) que
 toma dos argumentos powerUpActive, que se mantiene si el ave tiene
 un power-up activo, y el argumento touchingEagle que se mantiene si
 el pájaro está tocando un águila. La función debe devolver true solo
 si el ave tiene un encendido activo y está tocando un águila,
 y falso de lo contrario.

 El resultado que debe de dar tras realizar la prueba:
 bonusPoints(powerUpActive: false, touchingEagle: true)
 
   tiene que devolver => false
 
 *************** Explicacion del enunciado ***************
 
 El enunciado te está pidiendo que definas una función llamada
 bonusPoints que toma dos argumentos: 
 powerUpActive y touchingEagle.
 La función debe devolver true solo si powerUpActive es true y 
 touchingEagle es true, y false en cualquier otro caso.
*/

// mi Solución:
func bonusPoints(powerUpActive: Bool, touchingEagle: Bool) -> Bool {
   return powerUpActive && touchingEagle
}
print(bonusPoints(powerUpActive: false, touchingEagle: true))

/*
 --------------- 2º parte del problema ---------------
 
 En el juego, el jugador obtiene puntos al recoger una semilla o un power-up.
 Defina la puntuación de la función (touchingPowerUp:touchingSeed:) que toma
 dos argumentos tocandoPowerUp, que sostiene si el pájaro está tocando un
 encendido, el argumento touchingSeed que sostiene si el pájaro está tocando
 una semilla. La función debe devolver verdadero si el ave está tocando un
 encendido o una semilla, y devolver falso de lo contrario.
 
 El resultado que debe de dar tras realizar la prueba:
 score(touchingPowerUp: true, touchingSeed: true)
 
 tiene que devolver => true
 
 *************** Explicacion del enunciado ***************
 
 El enunciado describe un juego en el que un jugador obtiene puntos al recoger
 una semilla o un power-up. La función score(touchingPowerUp:touchingSeed:)
 toma dos argumentos booleanos: touchingPowerUp, que indica si el pájaro está
 tocando un power-up, y touchingSeed,
 que indica si el pájaro está tocando una semilla.
 La función debe devolver true si el ave está tocando un power-up o una semilla,
 y false en caso contrario.
 */

func score(touchingPowerUp: Bool, touchingSeed: Bool) -> Bool {
    return touchingSeed || touchingPowerUp
}
print(score(touchingPowerUp: true, touchingSeed: true))

/*
 Este código utiliza el operador lógico OR (||) para evaluar si el pájaro está
 tocando una semilla (touchingSeed) o un power-up (touchingPowerUp).
 Si alguna de las condiciones es verdadera, la función devuelve true, indicando
 que el ave está tocando una semilla o un power-up.
 Si ambas condiciones son falsas, la función devuelve false.
 */


/*
 --------------- 3º parte del problema ---------------
 
 Defina la función lose(powerUpActive:touchingEagle:) que toma dos argumentos
 powerUpActive, que se mantiene si el ave tiene un encendido activo, y el
 argumento touchingEagle que se mantiene si el ave está tocando un águila.
 La función debe devolver true si el personaje es un águila y no tiene un
 encendido activo, y devolver false de lo contrario.
 
 El resultado que debe de dar tras realizar la prueba:
 lose(powerUpActive: false, touchingEagle: true)
 
 tiene que devolver => true
 
 *************** Explicacion del enunciado ***************
 
 El enunciado te pide que definas una función llamada lose que toma dos argumentos:
 powerUpActive y touchingEagle. La función debe devolver true si el personaje
 es un águila y no tiene un encendido activo, y false en cualquier otro caso
 */

// entrega true si touchingEagle == true &&  powerUpActive == false
func lose(powerUpActive: Bool, touchingEagle: Bool) -> Bool {
    return touchingEagle == true && powerUpActive == false
}
print(lose(powerUpActive: false, touchingEagle: true))

/*
 La función utiliza la expresión touchingEagle == true para verificar si el personaje
 está tocando un águila y powerUpActive == false para verificar si el encendido
 no está activo.
 Si ambas condiciones son verdaderas, la función devuelve true, indicando que el
 personaje debería perder el juego. En cualquier otro caso, devuelve false.
 */


/*
 --------------- 3º parte del problema ---------------
 
 Defina la función win(hasPickedUpAllSeeds:powerUpActive:touchingEagle:)
 que toma los argumentos:
 
 hasPickedUpAllSeedssi el pájaro ha recogido todas las semillas.
 
 powerUpActivesi el pájaro tiene un encendido activo.
 
 touchingEaglesi el pájaro es un águila.
 
 La función debe devolver true si el ave ha reunido todas las semillas y no
 ha perdido en base a los argumentos definidos en la parte 3,
 y devolver false de lo contrario.
 
 El resultado que debe de dar tras realizar la prueba:
 win(hasPickedUpAllSeeds: false, powerUpActive: true, touchingEagle: false)
 
 tiene que devolver => false
 
 *************** Explicacion del enunciado ***************
 
 El enunciado está solicitando la definición de una función llamada win que toma
 tres argumentos booleanos:
 hasPickedUpAllSeeds, powerUpActive, y touchingEagle.
 La función debe devolver true si el pájaro ha recogido todas las semillas y no ha
 perdido según ciertos criterios definidos en la parte 3, y false en caso contrario.
 */

func win(hasPickedUpAllSeeds: Bool, powerUpActive: Bool, touchingEagle: Bool) -> Bool {
 
 return hasPickedUpAllSeeds == true && lose(powerUpActive: powerUpActive,
                                            touchingEagle: touchingEagle) == false
}
print(win(hasPickedUpAllSeeds: false, powerUpActive: true, touchingEagle: false))

/*
 La función compara si hasPickedUpAllSeeds es igual a true y si la función lose
 (que no se proporciona en el código dado, pero se asume que está definida en
 otra parte) con los argumentos powerUpActive y touchingEagle devuelve false.
 Si ambas condiciones son verdaderas, la función devuelve true; de lo contrario,
 devuelve false.
 
 El resultado de la prueba proporcionado en el enunciado es win(hasPickedUpAllSeeds:
 false, powerUpActive: true, touchingEagle: false). Al llamar a la función con estos
 argumentos, hasPickedUpAllSeeds es false, y la función lose se evalúa con
 powerUpActive: true y touchingEagle: false. Según la lógica de la función win,
 si hasPickedUpAllSeeds es false y la función lose devuelve false, entonces la función
 win debería devolver false. Por lo tanto, el resultado de la prueba es false.
 */
