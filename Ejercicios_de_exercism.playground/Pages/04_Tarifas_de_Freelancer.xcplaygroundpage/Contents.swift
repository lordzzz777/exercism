import Foundation


// Número

// Swift tiene 2 tipos principales de números: números enteros
// y números de coma flotante. Los enteros son números enteros,
// por ejemplo, 0, 1, -1, 42 y -273. Los números de coma flotante
// son números con un componente fraccional,
// p. ej. 0,0, 3,14 y -1.36969e-10. Swift también permite el uso
// de guiones bajos para hacer que los números sean más legibles,
// por ejemplo, 1_000_000 es lo mismo que 1000000.
// Las comas flotantes se pueden escribir en notación decimal o exponencial.

// En la mayoría de los casos, definiría el tipo para los enteros como Int
// y para los números de coma flotante como Doble.

// Para declarar una variable o constante de tipo Int o Double,
// puede usar una anotación de tipo:

/*
let speed: Int = 42                             speed is an Int
 
let pi: Double = 3.14                            pi is a Double
 
let giga: Double = 1_000_000_000                 giga is a Double
 
let plancksConstant : Double = 6.62607015e-34     plancksConstant
*/

// Operadores aritméticos

// ******************* Precaución *******************

// En Swift no se pueden mezclar tipos en operaciones aritméticas,
// por lo que no se puede usar ningún operador aritmético en un
// Int con un Doble o viceversa. Por lo tanto, primero tienes
// que hacer una conversión de tipo.

// **************************************************


// Swift tiene un conjunto de operadores aritméticos que se pueden utilizar
// para realizar operaciones matemáticas básicas. El operador + se utiliza
// para la suma, el operador - se utiliza para la resta y el operador * se
// utiliza para la multiplicación.

/*
 ________________________________
  Operator    Example
 --------------------------------
  +           4 + 6    equals 10
 
  -           15 - 10  equals 5
 
  *           2 * 3    equals 6
 --------------------------------
 */

// Departamento

// El operador / se utiliza para la división. Cuando se utiliza un número
// de coma flotante, el resultado será un número de coma flotante.
// Cuando se utilizan enteros, el resultado será un entero.

/*
 5 / 2.0  equals 2.5
 
 5 / 2    equals 2
 */

// Al dividir por cero, dependiendo del tipo de número, obtendrá un
// resultado diferente. Si divide un número de coma flotante por cero,
// el resultado será inf, o -inf si el número que se divide es negativo.
// La única excepción es cuando se divide cero por cero, y uno de ellos
// es un número de coma flotante que dará como resultado nan. Si divides
// un entero por cero, obtendrás un error de compilación.

/*
 print(5.0 / 0.0)    Prints inf
 
 print(-5.0 / 0.0)   Prints -inf
 
 print(0.0 / 0.0)    Prints nan

  El siguiente código no se compilará
 print(5 / 0)   error: division by zero
 */

// Restante

// El operador % se utiliza para obtener el resto de una división y solo
// funciona con enteros. El operador devuelve el resto de la división del
// primer argumento por el segundo argumento. Y al igual que con la
// división, tener el segundo argumento con el valor de cero dará lugar
// a un error de compilación.

// ******************** Nota *************************
// In other languages, is this operator also known as the modulo operator.
// But in Swift, it does not work the same way as the modulo operator,
// since it strictly speaking, returns the remainder, not the modulo.
// **************************************************

/*
 5 % 2     equals 1
 -5 % 2    equals -1

   El siguiente código no se compilará
 5 % 0   error: division by zero
 */

// El redondeo de los números se realiza utilizando el método rounded() en un
// número de coma flotante. Para redondear al número entero más cercano, puedes
// usar el método rounded() sin ningún argumento. Para redondear hacia arriba
// o hacia abajo, puede usar los métodos redondeado (.arriba) o redondeado
// (.abajo), respectivamente.

/*
 let x = 3.14
 let y = x.rounded()         y equals 3.0
 let w = x.rounded(.down)    w equals 3.0
 let z = x.rounded(.up)      z equals 4.0
 */

// Inferencia de tipo

// Swift puede inferir qué tipo de número se basa en el contexto, sin contexto
// adicional, el compilador asumirá que el número es un Int. Si desea decirle
// al compilador que desea que un número entero sea un doble, debe usar una
// anotación de tipo o añadir un .0 al final del número literal. Por ejemplo

/*
 let x = 42            x is an Int
 let y = 42.0          y is a Double
 let z: Double = 42    z is a Double
 */

// Tipo de conversión

// En Swift, para convertir un valor de un tipo a otro, debes hacer una
// conversión de tipo. Por ejemplo, para convertir un Int en un Doble y
// viceversa, tendrías que hacer lo siguiente:
/*
let x = 42
let d = Double(x)
print(d)           // Prints 42.0
print(type(of: d)) // Prints Double

let pi = 3.14
let iPi = Int(pi)
print(iPi)           // Prints 3
print(type(of: iPi)) // Prints Int
*/

// ------- Enunciado del ejercicio: -------


// **** Instrucciones ****
// En este ejercicio escribirás código para ayudar a un profesional
// independiente a comunicarse con sus clientes sobre los precios de
// ciertos proyectos. Escribirá algunas funciones de utilidad para
// calcular rápidamente los costos para los clientes.

/*
 --------------- 1º parte del problema ---------------
 
  Calcula la tarifa diaria dada una tarifa por hora
  Un cliente se pone en contacto con el profesional independiente para
  preguntar sobre sus tarifas. El profesional independiente explica que
  trabajan 8 horas al día. Sin embargo, el profesional independiente
  solo conoce sus tarifas por hora para el proyecto. Ayúdales a estimar
  una tarifa diaria dada una tarifa por hora.

  Implemente la función dailyRateFrom(hourlyRate:), que toma el argumento
  hourlyRate que contiene la tarifa por hora de los freelancers.

  La función debe devolver la tarifa diaria basada en la tarifa por hora.
 
 *** El resultado que debe de dar tras realizar la prueba: ***
  dailyRateFrom(hourlyRate: 60)
 
  Resultado =>  Returns 480.0
 
 *************** Explicacion del enunciado ***************
 
 El enunciado describe un escenario en el que un profesional independiente
 trabaja un total de 8 horas al día. Sin embargo, este profesional solo
 conoce su tarifa por hora para el proyecto. El objetivo es ayudar al
 profesional a estimar su tarifa diaria dada una tarifa por hora.
 
 El código deve implementar la función "dailyRateFrom" que toma un argumento
 "hourlyRate" que representa la tarifa por hora del profesional.
 La función tiene que  multiplica esta tarifa hora, por el número fijo de horas que
 trabaja en un día, que son 8 horas.
 */

func dailyRateFrom(hourlyRate: Int) -> Double {
    return Double(hourlyRate) * 8.0
}
print(dailyRateFrom(hourlyRate: 60))

/*
 "func dailyRateFrom(hourlyRate: Int) -> Double":
 Esto define una función llamada
 "dailyRateFrom" que toma un parámetro llamado hourlyRate de tipo Int y devuelve
 un valor de tipo Double.
 La función calcula la tarifa diaria basada en la
 tarifa por hora proporcionada.
 
 "return Double(hourlyRate) * 8.0":
 Aquí, "Double(hourlyRate)" convierte la tarifa por hora de "Int" a "Double" para
 permitir operaciones aritméticas con decimales.
 Luego, se multiplica esta tarifa por el número de horas trabajadas por día (8 horas),
 representado por 8.0. El resultado es la tarifa diaria estimada, que se devuelve
 como un valor "Double".
 */

/*
 --------------- 2º parte del problema ---------------
 
 A veces, un cliente está interesado en contratar al profesional independiente
 por un período de tiempo más largo. El profesional independiente está dispuesto
 a dar un descuento al cliente, pero solo si el cliente lo contrata durante al
 menos un mes. Hay un total de 22 días laborables. Ayude al profesional
 independiente a calcular su tarifa mensual dada su tarifa por hora y el porcentaje
 descontado de la tarifa plana que está dispuesto a dar, redondeada
 al número entero más cercano.
 
 Implemente la función monthlyRateFrom(hourlyRate:withDiscount:), que toma los
 argumentos hourlyRate, que contiene la tarifa por hora de los freelancers,
 y withDiscount, que contiene el descuento que el freelancer está dispuesto
 a dar al cliente.
 La función debe devolver la tasa mensual redondeada al número entero más cercano.
 
 *** El resultado que debe de dar tras realizar la prueba: ***
 monthlyRateFrom(hourlyRate: 77, withDiscount: 10.5)
 
 Resultado => Returns 12129
 
 *************** Explicacion del enunciado ***************
 
 El enunciado describe una situación en la que un profesional independiente
 está dispuesto a ofrecer un descuento a un cliente si este lo contrata durante
 al menos un mes. Hay 22 días laborables en total. La tarea es calcular la tarifa
 mensual del profesional independiente dado su tarifa por hora y el porcentaje de
 descuento que está dispuesto a ofrecer, redondeado al número entero más cercano.
 */

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
    let salarioMes = dailyRateFrom(hourlyRate: hourlyRate) * 22.0
    let porcentaje = salarioMes * discount / 100.0
    return (salarioMes - porcentaje).rounded()
}
print(monthlyRateFrom(hourlyRate: 77, withDiscount: 10.5))

/*
 En la primera línea, se calcula el salario mensual multiplicando la tarifa diaria por
 el número de días laborables en el mes (22 días). Esto se hace llamando a la función
 anterior "dailyRateFrom" que calcula la tarifa diaria a partir de la tarifa por hora.
 
 En la segunda línea, se calcula el importe del descuento multiplicando el salario mensual
 por el porcentaje de descuento proporcionado y dividiendo por 100 para obtener la
 fracción del salario que representa ese porcentaje.
 
 Finalmente, se resta el importe del descuento del salario mensual y se redondea al número
 entero más cercano utilizando el método "rounded()" antes de devolver el valor.
 */

/*
 --------------- 3º parte del problema ---------------
 
 Otro día, un gerente de proyecto ofrece al profesional independiente trabajar en un proyecto
 con un presupuesto fijo. Dado el presupuesto fijo y la tarifa por hora del profesional
 independiente, ayúdelos a calcular el número de días que trabajarían hasta que se agote
 el presupuesto. Tenga en cuenta que en este escenario el profesional independiente
 siempre está dispuesto a dar el descuento independientemente del número de días contratados.
 El resultado debe redondearse hacia abajo al número entero más cercano.

 Implemente la función workdaysIn(budget:hourlyRate:withDiscount:), que toma los argumentos:
 
 budget => Que contiene el presupuesto para el proyecto.
 
 hourlyRate => Que mantiene la tarifa por hora de los autónomos.
 
 withDiscount => Que tiene el descuento que el profesional está dispuesto a dar al cliente
 
 La función debe devolver el número de días laborables que el profesional independiente
 trabajará en el proyecto redondeado.
 
 *** El resultado que debe de dar tras realizar la prueba: ***
 workdaysIn(budget: 20000, hourlyRate: 80, withDiscount: 11.0)
 
 Resultado => Returns 35.0
 
 *************** Explicacion del enunciado ***************
 
 Implementa una función llamada "workdaysIn" que calcula el número de días laborables
 que un profesional trabajará en un proyecto con un presupuesto fijo,
 una tarifa por hora y un descuento dado.
 
 Veamos cómo funciona paso a paso:

 1º Se define la función workdaysIn que toma tres argumentos:
 
 "budget"       =>    El presupuesto para el proyecto.
 "hourlyRate"   =>    La tarifa por hora del profesional independiente.
 "withDiscount" =>    El descuento que el profesional está dispuesto a dar al cliente,
                      expresado como un porcentaje.
 
 2º Se calcula la tarifa diaria con descuento:
 
 Primero, se llama a una función auxiliar dailyRateFrom 
 (que no está definida en el código proporcionado)
 para convertir la tarifa por hora en una tarifa diaria.
 
 Luego, se aplica el descuento al multiplicar la tarifa
 diaria por el complemento del porcentaje de descuento.
 Por ejemplo, si el descuento es del 10%, se calcula
 (1.0 - 0.10) para obtener el 90% del precio original.
 
 3º Se calcula el número de días trabajados dividiendo el presupuesto
    entre la tarifa diaria con descuento.
    Esto proporciona el número de días que el profesional independiente
    puede trabajar antes de que el presupuesto se agote.
 
 4º Finalmente, se redondea el resultado hacia abajo al número entero más
    cercano utilizando el método rounded(.down) para asegurarse de que
    solo se devuelva un número entero de días.
 */

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  // Calcula la tarifa diaria con descuento
    let dailyRateWithDiscount = dailyRateFrom(hourlyRate: hourlyRate) * (1.0 - discount / 100.0)
    
  // Calcula el número de días trabajados dividiendo el presupuesto entre la tarifa diaria con descuento
    let daysWorked = budget / dailyRateWithDiscount
    return daysWorked.rounded(.down)
}
print(workdaysIn(budget: 20000, hourlyRate: 80, withDiscount: 11.0))

/*
 En resumen, la función toma el presupuesto, la tarifa por hora
 y el descuento como entrada, calcula la tarifa diaria con
 descuento, determina cuántos días se pueden trabajar con el
 presupuesto dado y devuelve ese número redondeado hacia abajo.
 */
