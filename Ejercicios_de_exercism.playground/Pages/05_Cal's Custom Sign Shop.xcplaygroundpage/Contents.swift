import Foundation


//Introducción

/*
 Las cadenas son un tipo de datos que representa un valor de texto. 
 Las cadenas en Swift son una colección de caracteres,
 que a su vez tienen valores escalares Unicode.

 Puedes crear una cadena a través de una cadena literal, que es una
 serie de caracteres entre comillas dobles ("). Para las cadenas de
 varias líneas, puedes usar comillas triples (""").
 */

let hello : String = "Hello, World!"

let poem : String = """
Roses are red,
Violets are blue.
Sugar is sweet,
And so are you.
"""

// Las cadenas en Swift también obtienen toda la funcionalidad de la
// clase NSString que se utilizó originalmente en las
// bibliotecas Objective-C de Apple.

// Personaje

/*
 El carácter es un tipo de datos que almacena un solo valor escalar Unicode
 que se compone de uno o más puntos de código Unicode. Un valor escalar
 Unicode es cualquier punto de código Unicode en el rango U+0000 a U+D7FF
 inclusive o U+E000 a U+10FFFF inclusive.
 */

let aChar : Character = "A"


// Inferencia de tipo

/*
 Swift puede inferir el tipo de un literal de cadena, y por defecto inferirá
 que es una cadena. Puede declarar explícitamente una cadena como un carácter
 utilizando la anotación de tipo de carácter, que requiere
 que el valor sea un solo carácter.
 */

let aString = "A"
let aChar2: Character = "A"
print(type(of: aString)) // Prints String
print(type(of: aChar))   // Imprime el personaje

// El siguiente código no se compilará
//let badChar: Character = "Too many characters"
// Error: No se puede convertir el valor del tipo "Cadena"
// al tipo especificado "Caracter"


// Concatenación

/*
En Swift, las cadenas se pueden concatenar usando el operador +. Los caracteres
 no se pueden concatenar con cadenas usando el operador + sin convertir primero
 el carácter en una cadena.
*/

print("honey" + "comb")
// Impresiones "panal"

/*
 El método append(_:) muta la cadena añadiendo una cadena o un
 carácter al final de la misma.
 */

var greeting = "Hello"
let world = ", world"
let period: Character = "."

greeting.append(world)
print(greeting) // Imprime "Hola, mundo

greeting.append(period)
print(greeting) // Imprime "Hola, mundo.


//  Interpolación de cadenas

/*
 La interpolación de cadenas es una forma de construir una cadena basada en
 valores de diferentes fuentes, como variables y expresiones. Para insertar
 un valor en una cadena utilizando la interpolación de cadenas, coloca una
 expresión o valor entre paréntesis que están precedidos por un carácter
 de barra invertida.
 */

let radius = 5.0
let circle = "The area of a circle with radius \(radius) is \(Double.pi * radius * radius)"
print(circle) // Impresiones "El área de un círculo con radio 5.0 es 78.53981633974483


// Propiedades de cadena y carácter

/*
 Las cadenas y los caracteres tienen algunas propiedades diferentes que se 
 pueden consultar para obtener información sobre la cadena o el carácter.
*/


// Propiedades de la cadena
 
/*
 Estas son algunas de las propiedades de cadena más comunes, pero para 
 encontrarlas todas, consulte la documentación.
 */

/*
   Ejemplo          descripción                propiedad
 -----------------------------------------------------------------
 isLowercase      Devuelve true si          "A".es minúscula
                  el carácter está           es igual a verdadero
                  en minúsculas
 -----------------------------------------------------------------
 isUppercase      Devuelve true si           "A". mayúsculas es
                  el carácter está           igual a verdadero
                  en mayúsculas
 -----------------------------------------------------------------
isNumber          Devuelve verdadero          "1".esEl número es
                  si el carácter es           igual a verdadero
                  un espacio en blanco
 -----------------------------------------------------------------
 isWhitespace     Devuelve verdadero si       " ".IsWhitespace es
                  el carácter es un           igual a verdadero
                  espacio en blanco
 -----------------------------------------------------------------
*/


 // Tipo de conversión

/*
 Para convertir un tipo en una cadena, puedes usar el inicializador
 String(), que acepta una variedad de tipos,
 incluyendo Int, Double, Character y más.
 */

let charX: Character = "x"
print(String(charX))     // Impime "x"
print(String(110))       // Impime "110"
print(String(Double.pi)) // Impime "3.141592653589793"


// Personajes especiales

// Swift tiene algunos caracteres especiales que se pueden usar en cadenas.


/*
 Valor        Descripción
 --------------------------------
   \0         Carácter nulo
 --------------------------------
   \\         Barra invertida
 --------------------------------
   \t         Pestaña horizontal
 --------------------------------
   \n         Avance de línea
 --------------------------------
   \r         Retorno
 --------------------------------
   \´         Una sola comilla
 --------------------------------
   \"         Doble comilla
 --------------------------------
  \uFFFF      Carácter unicode
              hexadecimal
 --------------------------------
 */

let quote : String = "\"Hello\", he said."
print(quote) // Imprime "Hola"

let unicode : Character = "\u{1F496}"
print(unicode) // Imprime 💖


// ------- Enunciado del ejercicio: -------

// **** Instrucciones ****
// En este ejercicio escribirás código para ayudar a una empresa
// de letreros a crear mensajes personalizados para sus letreros.

/*
 --------------- 1º parte del problema ---------------
 
 Defina las siguientes cadenas constantes que se utilizarán para crear signos:
 
 birthday: Esto tiene el valor "Cumple años"
 
 valentine: Esto tiene el valor de "Día de San Valentín"
 
 anniversary: Esto contiene la cadena "Aniversario"
 */

// TODO: define the 'birthday' String constant
let birthday = "Birthday"

// TODO: define the 'valentine' String constant
let valentine = "Valentine's Day"

// TODO: define the 'anniversary' String constant
let anniversary = "Anniversary"


/*
 --------------- 2º parte del problema ---------------
 
 Defina los siguientes caracteres constantes que se utilizarán para crear signos:

 space: Esto contiene el valor " " (un solo espacio)
 exclamation: Esto tiene el valor "!"
 */

// TODO: define the 'space' Character constant
let space:Character = " "

// TODO: define the 'exclamation' Character constant
let exclamation: Character = "!"



/*
 --------------- 3º parte del problema ---------------
 
 Implemente la función buildSign(for:name:), que toma el argumento que contiene
 una de las tres cadenas que definió en la primera tarea y el nombre del argumento,
 que es una cadena que contiene el nombre de la persona para la que es el signo
 . Debe usar la concatenación para construir el mensaje para el signo y recordar
 reutilizar las constantes ya definidas. La función debe devolver el mensaje de
 signo como una cadena.
 
 *** El resultado que debe de dar tras realizar la prueba: ***
 
 buildSign(for: birthday, name: "Otto")
 devuelve => "Happy Birthday Otto!"
 
 buildSign(for: anniversary, name: "Valentina")
 devuelve => "Happy Anniversary Valentina!"
 
 *************** Explicacion del enunciado ***************
 
 El enunciado describe la tarea de implementar una función llamada
 buildSign(for:name:). Esta función toma dos argumentos:
 
 El primero, Un argumento que es una cadena de texto, el cual contiene
 uno de los tres posibles constantes que se han definido
 previamente en la tarea anterior.
 
 El segundo, Un argumento en forma de cadena de texto, que contiene el
 nombre de la persona para la que se está generando el mensaje contenido,
 en las constantes antes mencionadas.
 
 Finalmente, se especifica que la función debe devolver el mensaje de la
 festividad como una cadena de texto. 
 En resumen, la función buildSign(for:name:) debería tomar las cadenas de
 textos que contiene las ditintas festividades, y el nombre de la persona,
 concatenarlos adecuadamente utilizando las constantes definidas previamente
 y devolver el mensaje completo como una cadena de texto.
 */

func buildSign(for occasion: String, name: String) -> String {
 return "Happy\( space)\(occasion)\( space)\( name)\( exclamation)"
}
print(buildSign(for: birthday, name: "Otto"))
print(buildSign(for: anniversary, name: "Valentina"))


/*
 --------------- 4º parte del problema ---------------
 
 Implement the function graduationFor(name:year:) which takes the argument name
 which is a string that holds the name of the person the sign is for and the
 argument year which is an integer that holds the year the person is graduating.
 You shall use template strings to build up the message for the sign.
 The function should return the sign message as a string.
 
 *** El resultado que debe de dar tras realizar la prueba: ***
 
 graduationFor(name: "Padma", year: 2023)
 devuelve => "Congratulations Padma!\nClass of 2023"
 
 *************** Explicacion del enunciado ***************
 
 El enunciado te pide que implementes una función llamada
 graduationFor(name:year:). Esta función toma dos argumentos:
 
 El primero, "name" Un argumento de tipo cadena de texto que contiene el
 nombre de la persona para la que se está haciendo la tarjeta.
 
 El segundo, "year" Un argumento de tipo entero (integer) que contiene el año.
 
 Debes usar la plantilla para construir el mensaje para la tarjeta.
 Las  plantilla son cadenas de texto que permiten incrustar valores de variables
 dentro de ellas de una manera más conveniente.
 
 La función debe devolver el mensaje la tarjeta como una cadena de texto.
 En resumen, el objetivo es crear una función que tome el nombre y el año
 la persona y devuelva un mensaje formateado que indique la festividad de
 esa persona en ese año específico.
 */

func graduationFor(name: String, year: Int) -> String {
    let isYear = String(year)
    return "Congratulations \(name)\( exclamation)\nClass of \(isYear)"
}

print(graduationFor(name: "Padma", year: 2023))



/*
 --------------- 5º parte del problema ---------------
 
 Implemente la función costOf(sign:) que toma una cadena de texto como
 argumento, el cual contiene el mensaje para la tarjetas.
 la tarjeta tiene un precio base de 20€. Además, cada letra
 cuesta 2€ (los espacios en blanco se incluyen en el cálculo).
 La función debe devolver el costo la tarjeta como un entero.
 
 *** El resultado que debe de dar tras realizar la prueba: ***
 
 costOf(sign: "Happy Birthday Grandma!")
 devuelve => 66
 
 *************** Explicacion del enunciado ***************
 
 El enunciado describe la tarea de implementar una función llamada costOf(sign:).
 Esta función toma como argumento una cadena de texto que representa un mensaje
 para una tarjeta.
 
 La tarjeta tiene un precio base de 20€. Además, se debe considerar que cada letra
 del mensaje tiene un costo adicional de 2€. Esto incluye también los espacios en
 blanco entre las palabras.
 */

func costOf(sign: String) -> Int {
    let cadena = 2
    let valorPorLetra = sign.map { _ in
        cadena}.reduce(0, +)
    return valorPorLetra + 20
}
print(costOf(sign: "Happy Birthday Grandma!"))
