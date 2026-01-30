# Repositorio – Trabajo Práctico Salesforce / Pro Contacto

## Introducción
El presente repositorio documenta los ejercicios solicitados como parte del proceso de evaluación técnica. El objetivo es validar conocimientos básicos de instalación de herramientas de desarrollo, consumo de servicios web mediante API REST, manejo de JSON y fundamentos de la plataforma Salesforce, incluyendo Trailhead y Apex.

------

## Ejercicio 1 – Instalación del ambiente

El objetivo de este ejercicio es preparar el entorno de desarrollo necesario para la realización del trabajo práctico.

### Herramientas instaladas

#### Visual Studio Code
Visual Studio Code es un Entorno de Desarrollo Integrado (IDE) utilizado para el desarrollo de aplicaciones web y móviles. Permite trabajar con múltiples lenguajes y tecnologías como HTML, CSS, JavaScript, C#, Apex, NodeJS, Angular, Ionic, React y TypeScript.

#### Git y Git Bash
Git es una herramienta de control de versiones que permite gestionar el historial de cambios del código fuente, mantener respaldos de versiones anteriores y restaurarlas cuando sea necesario. Git Bash proporciona una interfaz de línea de comandos para interactuar con Git de forma eficiente.

------

## Ejercicio 2 - Conceptos estandar

En este ejercicio se responden preguntas teóricas para comprender los conceptos fundamentales del protocolo HTTP

### Preguntas:

#### ¿Qué es un servidor HTTP?
Es un software donde se almacenan archivos de una página web, el cual tiene como objetivo dar respuesta a la solicitud de un usuario y entregar el contenido solicitado usando el “Protocolo de Transferencia de Hipertexto (HTTP)”.

#### ¿Qué son los verbos HTTP? Mencionar los más conocidos
Son las palabras clave que el cliente utiliza para realizar una acción. Entre las más comunes encontramos:
-Get: Se usa para obtener un recurso indicado. En donde al haber diferentes peticiones arrojan el mismo resultado.  
-Delete: Elimina el recurso identificado mediante el URL.
-Post: Se utiliza para crear nuevos recursos.
-Put: El recurso recibe una actualización y/o en caso de no existir crea uno nuevo.
-Patch: Permite la actualización parcial del recurso en donde se indica que operación se quiere realizar.

#### ¿Qué es un request y un response en una comunicación HTTP?
Un request es la petición que el usuario hace a un servidor para solicitar una acción especifica, por ejemplo, solicitar una pagina web, una herramienta, etc. Y un response es la respuesta que el servidor envía al usuario para resolver su solicitud.

#### ¿Qué son los headers?
Se encargan de transmitir información durante una solicitud  o una respuesta a una página solicitada en el protocolo HTTP. 

#### ¿Qué es un queryString? (En el contexto de una url)
Son diferentes parámetros en una URL, las cuales se encuentran después de un signo de interrogación (?) y se encargan de transmitir información sobre un servidor web.

#### ¿Qué es el responseCode? ¿Qué significado tiene los posibles valores devueltos?
El responsecode son mensajes que los servidores web da al usuario cuando se procesa una solicitud y da un mensaje dependiendo el caso (si la solicitud fue exitosa, si hay un error o si se debe realizar alguna acción extra).
Los valores principales son:
- 1xx: Significa que la solicitud fue recibida y sigue el proceso.
-2xx: La solicitud fue recibida y aceptada correctamente.
-3xx: El usuario debe realizar algún cambio adicional para poder completar la solicitud.
-4xx: Hay un error en la solicitud por parte del usuario y no puede ser procesada.
-5xx: Hay un error en el servidor y por consecuencia no es posible cumplir con la solicitud.

#### ¿Cómo se envía la data en un Get y cómo en un POST?
La data en un Get envía los datos del cliente al servidor agregándolos como parámetros de consulta en la URL, con este método los datos enviados son escritos después del signo de interrogación en la URL.
El POST envía los datos mediante un cuerpo en la solicitud de HTTP y no es visible en la URL.

#### ¿Qué verbo http utiliza el navegador cuando accedemos a una página?
El verbo GET ya que, al introducir una URL en el navegador, envía una solicitud con el método GET para obtener el recurso principal.

#### Explicar brevemente qué son las estructuras de datos JSON y XML dando ejemplo de estructuras posibles.
La estructura de datos JSON es un formato que se utiliza para la especificación de datos en las aplicaciones o sitios web y destaca por el intercambio de datos entre sistemas informáticos. 

Ejemplo JSON:
{
  "usuario": {
    "id": 1,
    "nombre": "Brady",
    "correo": "brady@email.com"
  }
}

Y la estructura XML es una forma de organizar y representar en un lenguaje diseñado para almacenar, transportar y recibir datos de manera legible.
Ejemplo XML:
<usuario>
  <id>1</id>
  <nombre>Brady</nombre>
  <correo>brady@email.com</correo>
</usuario>

#### Explicar brevemente el estándar SOAP
Es un protocolo que se utiliza para el intercambio de mensajes entre sistemas y tiene como objetivo facilitar la comunicación con distintas plataformas, lenguajes o sistemas operativos.

#### Explicar brevemente el estándar REST Full
El RESTful funciona como un estándar para compartir información en un sistema de consulta y respuesta el cual permite crear servicios web eficientes y fáciles de usar. 

#### ¿Qué son los headers en un request? ¿Para qué se utiliza el key Content-type en un header?
Los headers en un request son parámetros que el cliente envía a un servidor mediante una solicitud HTTP que proporciona información adicional sobre la solicitud del usuario.
El key Content-Type se utiliza para indicar el medio en el que se transmite el contenido que se esta enviando en el cuerpo de una solicitud o respuesta. Principalmente se utiliza para informar al usuario sobre como procesar los datos.

-----

## Ejercicio 3 – Requests HTTP con Postman

En este ejercicio se realizaron solicitudes HTTP utilizando Postman para interactuar con un endpoint REST y analizar el comportamiento de los métodos GET y POST.

### Request GET inicial

Se realizó una solicitud GET para obtener el estado inicial de los datos almacenados en el endpoint.

![GET inicial](imagenes/get-inicial.png)

### Request POST

Se realizó una solicitud POST enviando un objeto JSON en el cuerpo de la petición para agregar un nuevo registro al servidor.

![POST](imagenes/post.png)

### Request GET final

Se realizó nuevamente una solicitud GET para verificar que el registro enviado mediante POST fue almacenado correctamente.

![GET final](imagenes/get-final.png)

### Diferencias observadas entre el punto 1 y el punto 3

En la primera solicitud GET se obtiene el estado inicial de los datos almacenados en el servidor.  
En la tercera solicitud GET, después de realizar el POST, la respuesta incluye el nuevo registro agregado, lo que confirma que la información fue almacenada correctamente.



