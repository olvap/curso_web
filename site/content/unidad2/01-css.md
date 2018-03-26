---
title: CSS
---
## Introducción
Las hojas de estilo en cascada (CSS, acrónimo de Cascading StyleSheets)
son una herramienta fantástica para añadir presentación a los sitios web.
Pueden ahorrarte mucho tiempo y te permitirán diseñar sitios web de un
modo totalmente nuevo. CSS es imprescindible para todos aquellos que
trabajen en el campo del diseño web.

## ¿Qué puedo hacer con CSS?
CSS es un lenguaje de estilo que define la presentación de los documentos
HTML. Por ejemplo, CSS abarca cuestiones relativas a fuentes, colores,
márgenes, líneas, altura, anchura, imágenes de fondo, posicionamiento
avanzado y muchos otros temas.

Es posible usar HTML, o incluso abusar del mismo, para añadir formato a
los sitios web. Sin embargo, CSS ofrece más opciones y es más preciso y
sofisticado. CSS está soportado por todos los navegadores hoy día.

## ¿Qué diferencia hay entre CSS y HTML?
HTML se usa para estructurar el contenido; CSS se usa para formatear el
contenido previamente estructurado.

Allá en los buenos tiempos en que Madonna era una "Virgen" y un tipo
llamado Tim Berners Lee inventó el World Wide Web, el lenguaje HTML sólo
se usaba para añadir estructura al texto. Los autores podían marcar sus
textos diciendo "esto en un título" o "esto es un párrafo", usando las
etiquetas HTML "h1" y "p", respectivamente.

A medida que la Web fue ganando popularidad, los diseñadores empezaron a
buscar posibilidades para añadir formato a los documentos en línea. Para
satisfacer esta reclamación, los fabricantes de los navegadores (en ese
momento, Netscape y Microsoft) inventaron nuevas etiquetas HTML, entre las
que se encontraban, por ejemplo, `<font>`, que se diferenciaba de las
etiquetas originales HTML en que definían el formato... y no la
estructura.

Esto también llevó a una situación en la que las etiquetas estructurales
originales, por ejemplo, \<table\>, se usaban cada vez más de manera
incorrecta para dar formato a las páginas en vez de para añadir estructura
al texto. Muchas nuevas etiquetas que añadían formato, por ejemplo,
\<blink\>, sólo las soportaban un tipo determinado de navegador. "Necesitás
el navegador X para visualizar esta página" se convirtió en una
declaración de descargo común en los sitios web.

CSS se inventó para remediar esta situación, proporcionando a los
diseñadores web con sofisticadas oportunidades de presentación soportadas
por todos los navegadores. Al mismo tiempo, la separación de la
presentación de los documentos del contenido de los mismos, hace que el
mantenimiento del sitio sea mucho más fácil.

## ¿Qué beneficios me ofrece CSS?

CSS fue toda una revolución en el mundo del diseño web. Entre los beneficios
concretos de CSS encontramos:

* control de la presentación de muchos documentos desde una única hoja de
  estilo
* control más preciso de la presentación
* aplicación de diferentes presentaciones a diferentes tipos de medios
  (pantalla, impresión, etc.)
* Numerosas técnicas avanzadas y sofisticadas.

## Un ejemplo rápido de CSS

Tomemos un documento sencillo en HTML que contiene un título `<h1>` y un
párrafo `<p>` como vimos en la unidad anterior. Pero agreguemos una etiqueta
especial que se llama \<style\>.  Dentro de esta etiqueta, vamos a poner las
reglas de estilo.

{{< highlight html >}}
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Mi primer experimento con CSS</title>
    <style>
      h1 {
        color: blue;
        background-color: yellow;
        border: 1px solid black;
      }

      p {
        color: red;
      }
    </style>
  </head>
  <body>
    <h1>Hola Mundo</h1>
    <p>Éste es mi primer ejemplo de CSS</p>
  </body>
</html>
{{< /highlight >}}

![reglas css](css_reglas.png "Componentes de un estilo CSS básico")

Los diferentes términos se definen a continuación:

* Regla: cada uno de los estilos que componen una hoja de estilos CSS. Cada
  regla está compuesta de una parte de "selectores", un símbolo de "llave de
  apertura" "{", otra parte denominada "declaración" y por último, un símbolo de
  "llave de cierre" "}".
* Selector: indica el elemento o elementos HTML a los que se aplica la regla
  CSS.
* Declaración: especifica los estilos que se aplican a los elementos. Está
  compuesta por una o más propiedades CSS
* Propiedad: permite modificar el aspecto de una característica del elemento.
* Valor: indica el nuevo valor de la característica modificada en el elemento.

Un archivo CSS puede contener infinitas reglas CSS, cada regla puede contener
infinitos selectores y cada declaración puede estar formada por un número
infinito de pares propiedad/valor.

## Las Cuatros fantásticas formas de agregar un CSS

### Linkeado
Ésta es la forma más popular de agregar css en un documento. Con este método,
se incluyen todas las reglas en un archivo con extensión _css_ y se incluyen en
el *head* del documento html con la siguiente etiqueta.

~~~html
<link href="css_file.css" rel="stylesheet" type="text/css" media="all">
~~~

* link: es el nombre del tag.
* href: se usa para definir el path al archivo
* rel: ponemos el tipo de relación que tiene la etiqueta con el documento, para
  los css, se pone "stylesheet".
* type: es usado por el navegador y rara vez tendrá un valor distinto a
  "text/css".
* media: es el atributo que indica para que dispositivo se debe usar la hoja de
  estilos y tiene 4 valores posibles:

* all: sirve para cualquier dispositivo, es el valor por defecto.
* screen: para dispositivos con pantalla
* print: para cuando se imprime el documento
* speech: para cuando el documento es hablado. por ejemplo con un _lector de
  pantallas_

### Importado
Esta forma se usa para convinar un documento css con otro. En la parte
superior del archivo se coloca la siguiente

~~~css
@import url("otro_estilo.css") media-types
~~~

dentro de url es la dirección del css que queremos importar y media-types sirve
para especificar cuando queremos que se agregue. Puede tener los mismos valores
que en el caso anterior.

#### Embebido
Éste es el método que usamos para los ejemplos de esta guía. No es lo
recomendado para paginas reales, pero al menos mantiene la separación entre el
contenido y el estilo.

Para usarlo se coloca el código _css_ en la etiqueta \<style\> dentro del
*head* del documento.

### En-linea
Con esta forma el estilo se escribe dentro de la etiqueta que se quiere modificar.

~~~ { data-is="sample-code" }
<body>
  <h1 style="text-decoration:underline;color:#4583c2;">
    Un título
  </h1>
  <p style="padding-left:20px;font-size:18px;">
    with half the wheels.
  </p>
</body>
~~~

Esta última es la forma menos recomendada, dado que no se puede reutilizar el
estilo para ninguna otra etiqueta y hace más difícil de leer el código html. En
ocasiones se usa porque la reglas que se colocan en la etiqueta
directamente tiene prioridad sobre las otras reglas, es decir, pisan a las
otras reglas.

## Selectores
Para poder aplicar una regla de estilo lo primero que tenemos que hacer es
decirle a qué tiene ser aplicada la regla. Para esto usamos un selector.

Por ejemplo:

~~~css
p {
  color: red;
  background-color: grey;
}
~~~

El selector de este ejemplo, es "p" y lo que está dentro de los corchetes son
las reglas. Todas las etiquetas de "p" obtendrán estas reglas de estilo. A este
selector se le llama selector de etiqueta y consiste en usar como selector el
nombre de la etiqueta a la cual le queremos agregar el estilo.

### Selector universal
Si lo que se quiere es aplicar un estilo a todas las etiquetas en un documento,
lo que podemos hacer es usar el selector universal. Para eso usamo el
_asterisco_ como selector.

~~~css
* {
  color: green;
}
~~~

### Selector de id
A veces es necesario seleccionar un elemento en particular y no todos los que
compartan el mismo nombre. Puede que solo quiera aplicar los estilo a un solo
parrafo y no a todo el documento.  Para eso podemos valernos del uso de los
atributos, para este caso, el atributo id.

Por ejemplo imaginemos que tenemos dos etiquetas, a la primera le agregaremos
el atributo id con un valor igual a "principal".

~~~ html
  <p id="principal">este parrafo tiene in id</p>
  <p>Este no</p>
~~

Para generar el selector por su id, usamos el numeral seguido del valor del id.

~~~ { data-is="sample-code" }
<!DOCTYPE html>
<html>
  <head>
    <style>
      #principal {
        color: blue;
        background-color: yellow;
        border: 1px solid black;
      }
    </style>
  </head>
  <body>
    <p id="principal">este parrafo aplica las reglas de estilo</p>
    <p>Este no las aplica</p>
  </body>
</html>
~~~

### Selector de clase
_id_ viene de identificador, es único y no debe haber mas de una etiqueta con el
mismo valor de id. Pero que pasa si queremos aplicar el mismo estilo a mas de
un elemento. Para eso utilizamos otro atributo llamado _class_ que sirve para
agrupar un conjunto de etiquetas bajo una misma clase.

Para seleccionar todos los elementos de una clase usamos el caracter _punto_ (".")
seguido del nombre de la clase.

~~~ { data-is="sample-code" }
<!DOCTYPE html>
<html>
  <head>
    <style>
      .importante {
        color: red;
        background-color: grey;
        border: 1px solid black;
      }
    </style>
  </head>
  <body>
    <p class="importante">este parrafo aplica las reglas de estilo</p>
    <p class="importante">este también</p>
    <p>Éste no las aplica</p>
  </body>
</html>
~~~

### Selector descendente

### pseudo clases

## Unidades de medida.
Las medidas en CSS se emplean, entre otras, para definir la altura, anchura y
márgenes de los elementos y para establecer el tamaño de letra del texto. Todas
las medidas se indican como un valor numérico (entero o decimal) seguido de una
unidad de medida, sin ningún espacio en blanco entre el número y la unidad de
medida.

CSS divide las unidades de medida en dos grupos: absolutas y relativas. Las
medidas relativas definen su valor en relación con otra medida, por lo que
para obtener su valor real, se debe realizar alguna operación con el valor
indicado. Las unidades absolutas establecen de forma completa el valor de una
medida, por lo que su valor real es directamente el valor indicado.

Si el valor es 0, la unidad de medida es opcional. Si el valor es distinto a 0
y no se indica ninguna unidad, la medida se ignora completamente, lo que suele
ser uno de los errores más habituales de los diseñadores que empiezan con CSS.
Algunas propiedades permiten indicar medidas negativas, aunque habitualmente
sus valores son positivos. Si el valor decimal de una medida es inferior a 1,
se puede omitir el 0 de la izquierda (0.5em es equivalente a .5em).

### Unidades absolutas
Una medida indicada mediante unidades absolutas está completamente definida, ya
que su valor no depende de otro valor de referencia. A continuación se muestra
la lista completa de unidades absolutas definidas por CSS y su significado:

* in, pulgadas ("inches", en inglés). Una pulgada equivale a 2.54 centímetros.
* cm, centímetros.
* mm, milímetros.
* pt, puntos. Un punto equivale a 1 pulgada/72, es decir, unos 0.35 milímetros.
* pc, picas. Una pica equivale a 12 puntos, es decir, unos 4.23 milímetros.

A continuación se muestran ejemplos de utilización de unidades absolutas:

~~~css
/* El cuerpo de la página debe mostrar un margen de media pulgada */
body { margin: 0.5in;  }

/* Los elementos <h1> deben mostrar un interlineado de 2 centímetros */
h1 { line-height: 2cm;  }

/* Las palabras de todos los párrafos deben estar separadas 4 milímetros entre si */
p { word-spacing: 4mm;  }

/* Los enlaces se deben mostrar con un tamaño de letra de 12 puntos */
a { font-size: 12pt  }

/* Los elementos <span> deben tener un tamaño de letra de 1 pica */
span { font-size: 1pc  }
~~~

La principal ventaja de las unidades absolutas es que su valor es directamente
el valor que se debe utilizar, sin necesidad de realizar cálculos intermedios.
Su principal desventaja es que son muy poco flexibles y no se adaptan
fácilmente a los diferentes medios.

De todas las unidades absolutas, la única que suele utilizarse es el punto
(pt). Se trata de la unidad de medida preferida para establecer el tamaño del
texto en los documentos que se van a imprimir, es decir, para el medio print de
CSS, tal y como se verá más adelante.

### Unidades relativas
La unidades relativas, a diferencia de las absolutas, no están completamente
definidas, ya que su valor siempre está referenciado respecto a otro valor. A
pesar de su aparente dificultad, son las más utilizadas en el diseño web por la
flexibilidad con la que se adaptan a los diferentes medios.

A continuación se muestran las tres unidades de medida relativas definidas por
CSS y la referencia que toma cada una para determinar su valor real:

* em, (no confundir con la etiqueta \<em\> de HTML) relativa respecto del tamaño
  de letra del elemento.
* ex, relativa respecto de la altura de la letra x ("equis minúscula") del tipo
  y tamaño de letra del elemento.
* px, (píxel) relativa respecto de la resolución de la pantalla del dispositivo
  en el que se visualiza la página HTML.

Las unidades em y ex no han sido creadas por CSS, sino que llevan décadas
utilizándose en el campo de la tipografía. Aunque no es una definición exacta,
la unidad 1em equivale a la anchura de la letra M ("eme mayúscula") del tipo y
tamaño de letra del elemento.

La unidad em hace referencia al tamaño en puntos de la letra que se está
utilizando. Si se utiliza una tipografía de 12 puntos, 1em equivale a 12
puntos. El valor de 1ex se puede aproximar por 0.5 em.

Si se considera el siguiente ejemplo:

~~css
p { margin: 1em;  }
~~~

La regla CSS anterior indica que los párrafos deben mostrar un margen de
anchura igual a 1em. Como se trata de una unidad de medida relativa, es
necesario realizar un cálculo matemático para determinar la anchura real de ese
margen.

La unidad de medida em siempre hace referencia al tamaño de letra del elemento.
Por otra parte, todos los navegadores muestran por defecto el texto de los
párrafos con un tamaño de letra de 16 píxel. Por tanto, en este caso el margen
de 1em equivale a un margen de anchura 16px.

A continuación se modifica el ejemplo anterior para cambiar el tamaño de letra
de los párrafos:

~~~css
p { font-size: 32px; margin: 1em;  }
~~~

El valor del margen sigue siendo el mismo en unidades relativas (1em) pero su
valor real ha variado porque el tamaño de letra de los párrafos ha variado. En
este caso, el margen tendrá una anchura de 32px, ya que 1em siempre equivale al
tamaño de letra del elemento.

Si se quiere reducir la anchura del margen a 16px pero manteniendo el tamaño de
letra de los párrafos en 32px, se debe utilizar la siguiente regla CSS:

p { font-size: 32px; margin: 0.5em;  }

El valor 0.5em se interpreta como "la mitad del tamaño de letra del elemento",
ya que se debe multiplicar por 0.5 su tamaño de letra (32px x 0.5 = 16px). De
la misma forma, si se quiere mostrar un margen de 8px de anchura, se debería
utilizar el valor 0.25em, ya que 32px x 0.25 = 8px.

La gran ventaja de las unidades relativas es que siempre mantienen las
proporciones del diseño de la página. Establecer el margen de un elemento con
el valor 1em equivale a indicar que "el margen del elemento debe ser del mismo
tamaño que su letra y debe cambiar proporcionalmente".

En efecto, si el tamaño de letra de un elemento aumenta hasta un valor enorme,
su margen de 1em también será enorme. Si su tamaño de letra se reduce hasta un
valor diminuto, el margen de 1em también será diminuto. El uso de unidades
relativas permite mantener las proporciones del diseño cuando se modifica el
tamaño de letra de la página.

El funcionamiento de la unidad ex es idéntico a em, salvo que en este caso, la
referencia es la altura de la letra x minúscula, por lo que su valor es
aproximadamente la mitad que el de la unidad em.

Por último, las medidas indicadas en píxel también se consideran relativas, ya
que el aspecto de los elementos dependerá de la resolución del dispositivo en
el que se visualiza la página HTML. Si un elemento tiene una anchura de 400px,
ocupará la mitad de una pantalla con una resolución de 800x600, pero ocupará
menos de la tercera parte en una pantalla con resolución de 1440x900.

Las unidades de medida se pueden mezclar en los diferentes elementos de una
misma página, como en el siguiente ejemplo:

body { font-size: 10px;  } h1 { font-size: 2.5em;  }

En primer lugar, se establece un tamaño de letra base de 10 píxel para toda la
página. A continuación, se asigna un tamaño de 2.5em al elemento \<h1\>, por lo
que su tamaño de letra real será de 2.5 x 10px = 25px.

Como se vio en los capítulos anteriores, el valor de la mayoría de propiedades
CSS se hereda de padres a hijos. Así por ejemplo, si se establece el tamaño de
letra al elemento \<body\>, todos los elementos de la página tendrán el mismo
tamaño de letra, salvo que indiquen otro valor.

Sin embargo, el valor de las medidas relativas no se hereda directamente, sino
que se hereda su valor real una vez calculado. El siguiente ejemplo muestra
este comportamiento:

~~~css
body {
  font-size: 12px;
  text-indent: 3em;
}

h1 { font-size: 15px  }
~~~

La propiedad text-indent, como se verá en los próximos capítulos, se utiliza
para tabular la primera línea de un texto. El elemento \<body\> define un valor
para esta propiedad, pero el elemento \<h1\> no lo hace, por lo que heredará el
valor de su elemento padre. Sin embargo, el valor heredado no es 3em, sino
36px.

Si se heredara el valor 3em, al multiplicarlo por el valor de font-size del
elemento \<h1\> (que vale 15px) el resultado sería 3em x 15px = 45px. No
obstante, como se ha comentado, los valores que se heredan no son los
relativos, sino los valores ya calculados.

Por lo tanto, en primer lugar se calcula el valor real de 3em para el elemento
\<body\>: 3em x 12px = 36px. Una vez calculado el valor real, éste es el valor
que se hereda para el resto de elementos.

### Porcentajes
El porcentaje también es una unidad de medida relativa, aunque por su
importancia CSS la trata de forma separada a em, ex y px. Un porcentaje está
formado por un valor numérico seguido del símbolo % y siempre está referenciado
a otra medida. Cada una de las propiedades de CSS que permiten indicar como
valor un porcentaje, define el valor al que hace referencia ese porcentaje.

Los porcentajes se pueden utilizar por ejemplo para establecer el valor del
tamaño de letra de los elementos:

~~~css
body { font-size: 1em;  }
h1 { font-size: 200%;  }
h2 { font-size: 150%;  }
~~~

Los tamaños establecidos para los elementos \<h1\> y \<h2\> mediante las reglas
anteriores, son equivalentes a 2em y 1.5em respectivamente, por lo que es más
habitual definirlos mediante em.

Los porcentajes también se utilizan para establecer la anchura de los
elementos:

~~~html
div#contenido { width: 600px;  }
div.principal { width: 80%;  }

<div id="contenido">
  <div class="principal">
    ...
  </div>
</div>
~~~

En el ejemplo anterior, la referencia del valor 80% es la anchura de su
elemento padre. Por tanto, el elemento <div> cuyo atributo class vale "principal"
tiene una anchura de 80% x 600px = 480px.

### Recomendaciones
En general, se recomienda el uso de unidades relativas siempre que sea posible,
ya que mejora la accesibilidad de la página y permite que los documentos se
adapten fácilmente a cualquier medio y dispositivo.

El documento [Recomendaciones sobre técnicas CSS para la mejora de la
accesibilidad](http://www.w3.org/TR/WCAG10-CSS-TECHS/) de los contenidos HTML,
elaborado por el organismo W3C, recomienda el uso de la unidad em para indicar
el tamaño del texto y para todas las medidas que sean posibles.

Normalmente se utilizan píxel y porcentajes para definir el layout del
documento (básicamente, la anchura de las columnas y de los elementos de las
páginas) y em y porcentajes para el tamaño de letra de los textos.

## Colores

Los colores en CSS se pueden indicar de cinco formas diferentes: palabras
clave, colores del sistema, RGB hexadecimal, RGB numérico y RGB porcentual.
Aunque el método más habitual es el del RGB hexadecimal, a continuación se
muestran todas las alternativas que ofrece CSS.

### Palabras clave

CSS define 17 palabras clave para referirse a los colores básicos. Las palabras
se corresponden con el nombre en inglés de cada color:

aqua, black, blue, fuchsia, gray, green, lime, maroon, navy, olive, orange,
purple, red, silver, teal, white, yellow

<style>
#color_list{
  display:flex;
  flex-wrap: wrap;
  with: 100%;
}
#color_list div{
  margin:8px;
  padding:8px;
  width: 80px;
  height: 80px;
  text-align: center;
}
</style>
<div id="color_list">
  <div style="background-color: aqua;">aqua aqua #00ffff</div>
  <div style="background-color: black;color:white;">black negro #000000</div>
  <div style="background-color: blue;color:white;">blue azul #0000ff</div>
  <div style="background-color: fuchsia;">fuchsia fuxsia #ff00ff</div>
  <div style="background-color: gray;color:white;">gray gris #808080</div>
  <div style="background-color: green;color:white;">green verde #008000</div>
  <div style="background-color: lime;">lime lima #00ff00</div>
  <div style="background-color: maroon;color:white;">maroon marron #800000</div>
  <div style="background-color: navy;color:white;">navy navy #000080</div>
  <div style="background-color: olive;color:white;">olive oliva #808000</div>
  <div style="background-color: orange;">orange naranja #ffa500</div>
  <div style="background-color: purple;color:white;">purple purpura #800080</div>
  <div style="background-color: red;color:white;">red rojo #ff0000</div>
  <div style="background-color: silver;">silver plateado #c0c0c0</div>
  <div style="background-color: teal;color:white;">teal teal #008080</div>
  <div style="background-color: yellow;">yellow amarillo #ffff00</div>
</div>

Aunque es una forma muy sencilla de referirse a los colores básicos, este
método prácticamente no se utiliza en las hojas de estilos de los sitios web
reales, ya que se trata de una gama de colores muy limitada.

Además de la lista básica, los navegadores modernos soportan muchos otros
nombres de colores. La lista completa se puede ver en
en.wikipedia.org/wiki/Websafe.

### RGB decimal

En el campo del diseño gráfico, se han definido varios modelos para hacer
referencia a los colores. Los dos modelos más conocidos son RGB y CMYK.
Simplificando su explicación, el modelo RGB consiste en definir un color
indicando la cantidad de color rojo, verde y azul que se debe mezclar para
obtener ese color. Técnicamente, el modelo RGB es un modelo de tipo "aditivo",
ya que los colores se obtienen sumando sus componentes.

Por lo tanto, en el modelo RGB un color se define indicando sus tres
componentes R (rojo), G (verde) y B (azul). Cada una de las componentes puede
tomar un valor entre cero y un valor máximo. De esta forma, el color rojo puro
en RGB se crea mediante el máximo valor de la componente R y un valor de 0 para
las componentes G y B.

Si todas las componentes valen 0, el color creado es el negro y si todas las
componentes toman su valor máximo, el color obtenido es el blanco. En CSS, las
componentes de los colores definidos mediante RGB decimal pueden tomar valores
entre 0 y 255. El siguiente ejemplo establece el color del texto de un párrafo:

~~~css
p { color: rgb(71, 98, 176);  }
~~~

La sintaxis que se utiliza para indicar los colores es rgb() y entre paréntesis
se indican las tres componentes RGB, en ese mismo orden y separadas por comas.
El color del ejemplo anterior se obtendría mezclando las componentes R=71,
G=98, B=176, que se corresponde con un color azul claro.

Si se indica un valor menor que 0 para una componente, automáticamente se
transforma su valor en 0. Igualmente, si se indica un valor mayor que 255, se
transforma automáticamente su valor a 255.

### RGB porcentual

Las componentes RGB de un color también se pueden indicar mediante un
porcentaje. El funcionamiento y la sintaxis de este método es el mismo que el
del RGB decimal. La única diferencia es que en este caso el valor de las
componentes RGB puede tomar valores entre 0% y 100%. Por tanto, para
transformar un valor RGB decimal en un valor RGB porcentual, es preciso
realizar una regla de tres considerando que 0 es igual a 0% y 255 es igual a
100%.

El mismo color del ejemplo anterior se puede representar de forma porcentual:

~~~css
p { color: rgb(27%, 38%, 69%);  }
~~~

Al igual que sucede con el RGB decimal, si se indica un valor inferior a 0%, se
transforma automáticamente en 0% y si se indica un valor superior a 100%, se
trunca su valor a 100%.  3.2.4. 

###RGB hexadecimal

Aunque es el método más complicado para indicar los colores, se trata del
método más utilizado con mucha diferencia. De hecho, prácticamente todos los
sitios web reales utilizan exclusivamente este método.

Para entender el modelo RGB hexadecimal, en primer lugar es preciso introducir
un concepto matemático llamado sistema numérico hexadecimal. Cuando realizamos
operaciones matemáticas, siempre utilizamos 10 símbolos para representar los
números (del 0 al 9). Por este motivo, se dice que utilizamos un sistema
numérico decimal.

No obstante, el sistema decimal es solamente uno de los muchos sistemas
numéricos que se han definido. Entre los sistemas numéricos alternativos más
utilizados se encuentra el sistema hexadecimal, que utiliza 16 símbolos para
representar sus números.

Como sólo conocemos 10 símbolos numéricos, el sistema hexadecimal utiliza
también seis letras (de la A a la F) para representar los números. De esta
forma, en el sistema hexadecimal, después del 9 no va el 10, sino la A. La
letra B equivale al número 11, la C al 12, la D al 13, la E al 14 y la F al
número 15.

Definir un color en CSS con el método RGB hexadecimal requiere realizar los
siguientes pasos: - Determinar las componentes RGB decimales del color
original, por ejemplo: R = 71, G = 98, B = 176 - Transformar el valor decimal
de cada componente al sistema numérico hexadecimal. Se trata de una operación
exclusivamente matemática, por lo que puedes utilizar una calculadora. En el
ejemplo anterior, el valor hexadecimal de cada componente es: R = 47, G = 62, B
= B0 - Para obtener el color completo en formato RGB hexadecimal, se concatenan
los valores hexadecimales de las componentes RGB en ese orden y se les añade el
prefijo #. De esta forma, el color del ejemplo anterior es #4762B0 en formato
RGB hexadecimal.

Siguiendo el mismo ejemplo de las secciones anteriores, el color del párrafo se
indica de la siguiente forma utilizando el formato RGB hexadecimal:

~~~css
p { color: #4762B0;  }
~~~

Recuerden que aunque es el método más complicado para definir un color, se trata
del método que utilizan la inmensa mayoría de sitios web, por lo que es
imprescindible dominarlo. Afortunadamente, todos los programas de diseño
gráfico convierten de forma automática los valores RGB decimales a sus valores
RGB hexadecimales, por lo que no tienes que hacer ninguna operación matemática:

El formato RGB hexadecimal es la forma más compacta de indicar un color, ya que
incluso es posible comprimir sus valores cuando todas sus componentes son
iguales dos a dos:

~~~
#AAA = #AAAAAA
#FFF = #FFFFFF
#A0F = #AA00FF
#369 = #336699
~~~

En el siguiente ejemplo se establece el color de fondo de la página a blanco,
el color del texto a negro y el color de la letra de los titulares se define de
color rojo:

~~~css
body { background-color: #FFF; color: #000;  }
h1, h2, h3, h4, h5, h6 { color: #C00;  }
~~~

Las letras que forman parte del color en formato RGB hexadecimal se pueden
escribir en mayúsculas o minúsculas indistintamente. No obstante, se recomienda
escribirlas siempre en mayúsculas o siempre en minúsculas para que la hoja de
estilos resultante sea más limpia y homogénea.

### Colores del sistema

Los colores del sistema son similares a los colores indicados mediante su
nombre, pero en este caso hacen referencia al color que muestran algunos
elementos del sistema operativo del usuario.

Existen varios colores definidos, como por ejemplo ActiveBorder, que hace
referencia al color del borde de las ventanas activas. Consulta la lista
completa de colores del sistema.

Aunque es posible definir los colores en CSS utilizando estos nombres, se trata
de un método que nunca se utiliza, por lo que se puede considerar prácticamente
como una rareza de CSS.

### Colores web safe

Como cada componente RGB de los colores puede tomar un valor entre 0 y 255, el
número total de colores que se pueden representar con este formato es de 256 x
256 x 256 = 16.777.216 colores. Sin embargo, en la década de los 90 los
monitores de los usuarios no eran capaces de mostrar más de 256 colores
diferentes.

A partir de todos los colores disponibles, se eligieron 216 colores que
formaron la paleta de colores "web safe". Esta paleta de colores podía ser
utilizada por los diseñadores con la seguridad de que se verían correctamente
en cualquier navegador de cualquier sistema operativo de cualquier usuario.

Hoy en día, su importancia ha descendido notablemente, ya que prácticamente
todos los usuarios utilizan dispositivos con una profundidad de color de 16 y
32 bits. No obstante, el auge en el uso de los dispositivos móviles hace que
siga siendo un tema a considerar, ya que las pantallas de muchos móviles sólo
pueden representar un número reducido de colores.

## el modelo de cajas

## Propiedades importantes para estilos

## flex

## css-grid

<link rel="stylesheet" href="http://esironal.github.io/cmtouch/lib/codemirror.css">
<link rel="stylesheet" href="http://esironal.github.io/cmtouch/addon/hint/show-hint.css">
<script src="http://esironal.github.io/cmtouch/lib/codemirror.js"></script>
<script src="http://esironal.github.io/cmtouch/addon/hint/show-hint.js"></script>
<script src="http://esironal.github.io/cmtouch/addon/hint/xml-hint.js"></script>
<script src="http://esironal.github.io/cmtouch/addon/hint/html-hint.js"></script>
<script src="http://esironal.github.io/cmtouch/mode/xml/xml.js"></script>
<script src="http://esironal.github.io/cmtouch/mode/javascript/javascript.js"></script>
<script src="http://esironal.github.io/cmtouch/mode/css/css.js"></script>
<script src="http://esironal.github.io/cmtouch/mode/htmlmixed/htmlmixed.js"></script>
<script src="http://esironal.github.io/cmtouch/addon/selection/active-line.js"></script>
<script src="http://esironal.github.io/cmtouch/addon/edit/matchbrackets.js"></script>

<style type="text/css">
.CodeMirror {
  font-size: 15px;
  width: 100%;
  height: 100%;
}
</style>

<script type="riot/tag" src="sample-code.tag"></script>
<script src="https://cdn.jsdelivr.net/npm/riot@3.8/riot+compiler.min.js"></script>
<script>riot.mount('sample-code')</script>
