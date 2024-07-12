# ForoHub

Este proyecto consiste en una plataforma para elaborar preguntas y dar repspuestas a estas. El usuario que desee realizar una pregunta o visualizarla debe de estar registrado para poder
manejar esta API.

Para poder utilizar esta herramienta es cuestion de bajar de github el proyecto, una vez bajada, hay que configurar las propiedades de este proyecto en application.propierties y ejecutar esta herramienta
para la construccion de las tablas. Si desea más info sobre la base de datos, los archivos sql se encuentran en la carpeta migrations alojada en la carpeta resources.

La estructura del JSON utilizada para poder correr este programa es el siguiente:

Para iniciar sesion se utilizo el siguiente JSON:

{
    "usuario": "nombre_usuario",
    "clave": "contraseña"
}

Para listar los topicos se utiliso el siguiente JSON con el siguiente URL junto con su método.
POST http://localhost:8080/topico/{id}
{
  "id": ,
  "titulo": ,
  "mensaje": ,
  "autor": ,
  "curso": ,
  "fecha": 
}

La estructura anterior es la misma que se utiliza para las demas opciones, por lo que en el siguiente apartado sólo se mencionara los URL para su ejecucion junto con sus respectivos metodos.

Eliminar: DELETE http://localhost:8080/topico/{id}

Eliminar desde la base de datos: DELETE http://localhost:8080/topico/{id}?borrar=true

Las herramientas que se utilizaron fueron las siguientes:

- IntelliJ.
- Java JDK 17.
- MySql.
- Insomnia.
- Spring initializr.

