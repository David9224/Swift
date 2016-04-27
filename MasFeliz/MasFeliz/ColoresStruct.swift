//
//  ColoresStruct.swift
//  MasFeliz
//
//  Created by David Aristizabal on 25/04/16.
//  Copyright © 2016 David Aristizabal. All rights reserved.
//

import Foundation
import UIKit


struct  Colores {
    let colores = [UIColor(red:210/255, green: 90/255, blue: 45/255, alpha: 1),
                   UIColor(red: 40/255, green: 170/255, blue: 45/255, alpha: 1)]
    
    func regresaColorAleatorio() -> UIColor {
        let posicion = Int(arc4random()) % colores.count
        return colores[posicion]
    }
}

struct Datos {
    let frases = ["Somos lo que pensamos. Todo lo que somos surge con nuestros pensamientos. Con nuestros pensamientos construimos el mundo.-Buddha.",
                  "El pesimista ve dificultad en toda oportunidad. El optimista ve oportunidad en toda dificultad.-Winston Churchill.",
                  "No habrá nada que te pueda asustar si te niegas a tener miedo.-Gandhi.",
                  "Solo te puedes cambiar a ti mismo pero a veces eso lo cambia todo.-Gary W Goldstein.",
                  "Despertamos en otros la misma actitud mental que tenemos hacia ellos.-Elbert Hubbard.",
                  "Eres capaz de mucho más de lo que estas pensando, imaginando o haciendo ahora.-Myles Munroe",
                  "¿Cómo voy a vivir hoy de acuerdo al mañana con el que estoy comprometido?-Tony Robbins.",
                  "Un pequeño cambio positivo puede cambiar tu día entero o tu vida entera.-Nishant Grover.",
                  "La única diferencia entre un buen y mal día es tu actitud.-Dennis S. Brown.",
                  "Sin una confianza humilde pero razonable en tus propias fuerzas, no puedes ser exitoso o feliz.-Norman Vincent Peale.",
                  "Todo es o una oportunidad para crecer o un obstáculo que evita que crezcas. Puedes decidir.-Wayne Dyer.",
                  "Una actitud positiva puede realmente convertir los sueños en realidad-lo hizo para mi.-David Bailey.",
                  "Estas son mis últimas palabras hacia ti. No tengas miedo de la vida. Cree que merece la pena vivirla y tu creencia creará el hecho.-William James.",
                  "En lo que te conviertes es mucho más importante que lo que consigues. Lo que consigues esta influenciado por lo que eres.-Jim Rohn.",
                  "Una actitud de expectativa positiva es la marca de una personalidad superior.-Brian Tracy.",
                  "Las buenas cosas ocurren todos los días. Solo nos tenemos que dar cuenta de ellas.-Anne Wilson Schaef.",
                  "Hay una pequeña diferencia en las personas, pero esa diferencia marca una gran diferencia. La pequeña diferencia es la actitud. La gran diferencia es si es positiva o negativa.-W. Clement Stone.",
                  "Es algo maravilloso ser optimista. Te mantiene sano y resiliente.-Daniel Kahneman.",
                  "El único lugar donde tus sueños son imposibles es en tus pensamientos.-Robert H Schulle.",
                  "El aprendizaje es un regalo. Incluso cuando el dolor es tu maestro.-Maya Watson.",
                  "Ama la vida que tienes para poder vivir la vida que amas.-Huseein Nishah.",
                  "Tu sonrisa te dará un semblante positivo que hará que la gente se sienta mejor a tu alrededor.-Les Brown.",
                  "Creo que cualquier cosa es posible si tienes la mentalidad, voluntad y deseo para hacerlo y dedicarle tiempo.-Roger Clemes.",
                  "La persona que puede llevar el espíritu de la risa a una habitación es bendecida.-Bennet Cerf.",
                  "El pensamiento positivo es algo más que un eslogan. Cambia la forma en la que nos comportamos. Creo firmemente que cuando soy positivo, soy mejor y hago mejores a los demás.-Harvey Mackay.",
                  "Cuando eres entusiasta sobre lo que haces, sientes energía positiva. Es muy sencillo.-Paulo Coelho.",
                  "Los ganadores tienen el hábito de crearse sus propias expectativas antes del evento.-Brian Tracy.",
                  "El hombre no es más que el producto de sus pensamientos. Se convierte en lo que piensa.-Gandhi.",
                  "Nunca eres demasiado viejo para tener otra meta u otro sueño.-C.S Lewis.",
                  "Nunca digas nada de ti mismo que no quieres que se convierta en realidad.-Brian Tracy.",
                  "Los peores tiempos pueden ser los mejores si piensas con energía positiva.-Domenico Dolce.",
                  "Todo pensamiento es una semilla. Si plantas semillas podridas, no cuentes con recoger manzanas deliciosas.-Bill Meyer.",
                  "La inspiración viene de tu interior. Uno tiene que ser positivo. Cuando lo eres, ocurren cosas buenas.-Deep Roy.",
                  "Mantén tu cara hacia el sol y no podrás ver una sombra.-Helen Keller.",
                  "Soy un pensador positivo, y creo que es lo que me ayuda en los momentos más difíciles.-Roger Federer.",
                  "Convierte siempre una situación negativa en una positiva.-Michael Jordan.",
                  "Vive la vida al máximo y enfócate en lo positivo.-Matt Cameron.",
                  "El mundo es lo que creemos que es. Si podemos cambiar nuestros pensamientos, podemos cambiar el mundo.-H.M. Tomlinson.",
                  "Muchas veces la gente mira al lado negativo de lo que no pueden hacer. Yo siempre miro al lado positivo de lo que puedo hacer.-Chuck Norris.",
                  "El optimismo perpetuo es una multiplicador de fuerzas.-Colin Powell.",
                  "Todos estamos aquí por una razón especial.Deja de ser un prisionero del pasado. Conviértete en el arquitecto de tu futuro.-Robin Sharma.",
                  "La única cosa que se interpone entre un hombre y lo que quiere en la vida, es a menudo la voluntad de intentarlo y la fe de que es posible conseguirlo.-Richard M.DeVos.",
                  "Si no estas encendidos con entusiasmo, serás encendido con entusiasmo.-Vince Lombardi.",
                  "La preocupación da a menudo una gran sombra a algo pequeño.-Proverbio suizo.",
                  "Adoptando la actitud correcta se puede convertir un estrés negativo en uno positivo.-Dr. Hans Selye.",
                  "No conozco ese hombre, lo debo conocer mejor.-Abraham Lincoln.",
                  "Una autoimagen fuerte y positiva es la mejor preparación posible para el éxito.-Joyce Brothers.",
                  "Encuentra un lugar en tu interior donde haya alegría, y la alegría quemará el dolor.-Joseph Campbell.",
                  "Puede que una actitud positiva no resuelva todos tus problemas, pero molestará las suficientes personas para hacer que el esfuerzo merezca la pena.-Herm Albright.",
                  "Debes comenzar a pensar en ti mismo como la persona que quieres ser.-David Viscott.",
                  "Una actitud fuertemente positiva creará más milagros que cualquier droga.-Patricia Neal.",
                  "El pesimismo lleva a la debilidad, el optimismo al poder.-William James.",
                  "La situación no es mala, tus pensamientos respecto a la situación son negativos. Cámbialos.-Autor desconocido. ",
                  "La diferencia entre ganar y perder es a menudo no rendirse.-Walt Disney.",
                  "La única discapacidad en la vida es una mala actitud.-Scott Hamilton.",
                  "Para realizar una acción positiva, debemos desarrollar aquí una visión positiva.-Dalai Lama.",
                  "Di y haz algo positivo que mejore la situación; no se necesita un cerebro para quejarse.-Robert A.Cook.",
                  "La correción hace mucho, pero el ánimo hace mucho más.-Johann Wolfgang von Goethe.",
                  "No se trata de la situación, sino si reaccionamos negativamente o positivamente a la situación.-Zig Ziglar.",
                  "Si no estas cometiendo errores, no estas haciendo nada.-John Wooden.",
                  "Primero tienes que aprender las reglas del juego. Luego tienes que jugar mejor que nadie.-Albert Einstein.",
                  "Para tener éxito, necesitas encontrar algo a lo que aferrarte, algo que te motive, algo que te inspire.-Tony Dorsett.",
                  "Cuando reemplaces los pensamientos negativos con los positivos, empezarás a tener resultados positivos.-Willie Nelson.",
                  "Un pequeño pensamiento positivo en la mañana puede cambiar todo tu día.-Desconocido.",
                  "Nuestras mentes pueden dar forma a lo que una cosa será porque actuamos de acuerdo a nuestras expectativas.-Federico Fellini. ",
                  "Soy un optimista. No tiene mucho sentido ser otra cosa.-Winston Churchill.",
                  "Tienes que aceptar lo que viene y lo único importante es que lo afrontes con coraje y con lo mejor que tienes.-Eleanor Roosevelt.",
                  "Cuando estés en el valle, mantén tu meta firmemente en mente y tendrás energías renovadas para continuar la escalada.-Denis Waitley.",
                  "Nutre la mente como lo harías con tu cuerpo. La mente no puede sobrevivir con comida chatarra.-Jim Rohn.",
                  "Esta es la ley de la atracción: no atraes lo que quieres. Atraes lo que eres.-Wayne Dyer.",
                  "Escribe en tu corazón que cada día es el mejor día del año.-Ralph Waldo Emerson.",
                  "No puedes tener una vida positiva y una mente negativa.-Joyce Meyer.",
                  "El pensador positivo ve lo imposible, siente lo intangible y consigue lo imposible.-Desconocido.",
                  "Termina el día siempre con un pensamiento positivo. No importa lo duras que fueron las cosas, mañana es una buena oportunidad para hacerlas mejor.-Desconocido.",
                  "La gente se vuelve realmente notable cuando empiezan a pensar que pueden hacer cosas. Cuando creen en si mismos, tienen el primer secreto del éxito.-Norman Vincent Peale.",
                  "Aprende a sonreír en toda situación. Míralo como una oportunidad para probar tu fuerza y habilidad.-Joe Brown.",
                  "El día es lo que haces de él.¿Por qué no hacer un gran día?-Steve Schulte.",
                  "Somos responsables de lo que somos, y no importa lo queremos ser, tenemos el poder de hacernos a nosotros mismos.-Swami Vivekanand.a",
                  "Lo has hecho antes y lo puedes hacer ahora. Mira las posibilidades positivas. Redirecciona la energía sustancial de tu frustración y conviértela en determinación positiva, efectiva e imparable.-Ralph Marston.",
                  "No dejes que la negatividad del mundo te desmotive. En lugar de ello, date a ti mismo lo que te motiva.-Les Brown.",
                  "Siempre hay flores para los que quieren verlas.-Henri Matise.",
                  "Ser miserable es un hábito; ser feliz es un hábito; y la elección es tuya.-Tom Hopkins.",
                  "Trabaja duro, se positivo y levántate temprano. Es la mejor parte del día.-George Allen.",
                  "El optimismo es el rasgo humano más importante, porque nos permite mejorar nuestra situación y esperar un mañana mejor.-Seth Godin.",
                  "Niégate a que la situación determine tu actitud.-Charles R. Swindoll.",
                  "El mundo se mueve tan rápido estos días que el hombre que dice que no se puede hacer algo, es interrumpido por alguien que lo esta haciendo.-Elbert Hubbard.",
                  "Si alguien te dice “no puedes”, realmente quiere decir “no puedo”.-Sean Stephenson.",
                  "Hay dos maneras de desprender luz: ser la vela o el espejo que la refleja.-Edith Wharton.",
                  "La frustración, aunque dolorosa a veces, es muy positiva y una parte esencial del éxito.-Bo Bennett.",
                  "El sol no brilla para unas pocas flores y árboles, sino para el placer de todo el mundo.-Henry Ward.",
                  "En lugar de pensar en lo que te hace falta, piensa en qué tienes que le hace falta a los demás.-Desconocido.",
                  "El pensamiento positivo te dejará hacer mejor cualquier cosa que el pensamiento negativo.-Zig Ziglar.",
                  "Si no defiendes algo, caerás por cualquier cosa.-Malcom X.",
                  "Ámate a ti mismo. Es importante mantenerse positivo porque la belleza viene del interior al exterior.-Jenn Proske.",
                  "Una persona es grande por sus grandes cualidades, no por la ausencia de fallos.-Autor desconocido.",
                  "No dejes que la gente te falte el respeto. Rodeate de gente positiva.-Cuba Gooding, Jr.",
                  "El pasado no tiene poder sobre el momento presente.-Eckhart Tolle.",
                  "Cuando hago el bien, me siento bien. Cuando hago el mal, me siento mal. Esa es mi religión.-Abraham Lincoln.",
                  "La mejor forma de ganar autoestima es hacer lo que tememos.-Autor desconocido.",
                  "Tenemos la habilidad para decidir en qué pensamientos vamos a detenernos.-David DeNotaris.",
                  "No puedes parar las olas, pero puedes aprender a surfear.-Jon Kabat-Zinn.",
                  "Una actitud positiva es algo en lo que todos pueden trabajar y aprender a usar.-Joan Lunden.",
                  "Una idea mediocre que genera entusiasmo llegará más lejos que una gran idea que no inspire a nadie.-Mary Kay Ash.",
                  "Es increíble. Si la dejas, la vida cambia rápidamente de forma positiva.-Lindsey Vonn.",
                  "Cuando te encuentres con una situación negativa, no pienses sobre ella. Hazla positiva.-Yoko Ono.",
                  "Trabaja con energía y paz, sabiendo que los pensamientos y esfuerzos correctos traerán inevitablemente los resultados correctos.-James Allen.",
                  "Puede que no haya llegado donde intentaba ir, pero creo que he terminado donde necesitaba estar.-Douglas Adams.",
                  "Cada día trae nuevas posibilidades.-Martha Beck.",
                  "La repetición constante lleva a la convicción.-Robert Collier.",
                  "Cuanto más conscientes somos de qué somos realmente, menos problemas tenemos.-Lynn Grabhorn.",
                  "El odio ha causado muchos problemas en este mundo y no ha solucionado ni uno.-Maya Angelou.",
                  "Lo mejor que puedes dar a tu enemigo es el perdón; a un oponente, tolerancia; a un amigo, tu corazón; a un niño, buen ejemplo; a un padre, respeto; a tu madre, sentirse orgullosa; a ti mismo, quererte; a todo hombre, caridad.-Benjamin Franklin.",
                  "La próxima vez que te sientas algo incómodo con la presión en tu vida, recuerda que sin presión, no hay diamantes. La presión es parte del éxito.-Eric Thomas.",
                  "No puedes poner un limite a nada. Cuanto más sueñas, más lejo llegas.-Michael Phelps.",
                  "Prefiero morir persiguiendo lo que quiero, que vivir haciendo lo que me quita la vida.-Autor desconocido.",
                  "Primero piensa en lo que realmente quieres. Luego persíguelo con perseverancia, no te rindas. Cuando decaigas piensa en las recompensas. Con eso habrás conseguido el 50% de tu meta.-Autor desconocido.",
                  "La actitud lo es todo; engloba lo que hacemos, lo que decimos, lo que pensamos y lo que obtenemos.-Autor desconocido.",
                  "Llamamos buena suerte al resultado de tener una buena actitud, esforzarse, arriesgarse, perseverar y mostrarse.-Autor desconocido.",
                  "Todo el coraje necesario es un pensamiento positivo para eliminar los otros cien negativos.-Desconocido."]
    
    func regresaFraseFeliz() -> String {
        let posicion = Int(arc4random()) % frases.count
        return frases[posicion]
    }
}