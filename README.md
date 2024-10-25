# PruebaTecnicaNequi

# Para el correcto levantamiento del proyecto se requiere:

Crear la Base De Datos en PostgreSQL o Pgadmin4
   - Se debe ingresar a Pgadmin y crear una nueva base de datos, se puede llamar como se desee pero para continuar con la configuracion dada se puede llamar "datoslibros"
   - Dar clic derecho sobre la nueva base de datos y darle a "Restore"
   - En el campo "Filename" seleccionar el archivo.sql (viene en el RAR), seleccionar el usuario Postgres y darle enel boton "Restore"

Realizar la Conexion en caso de llamar la base de datos con diferente nombre
   - Ingresar a la carpeta "PruebaTecnicaNequi" desde el framework preferido, se recomienda Visual Studio Code,  luego ingresar a la carpeta "Config" y abrir el archivo "db.js"
   - Dentro de este archivo se encontrra un comentario donde dice que se debe ingresar la informacion de la DB:

   const sequelize = new Sequelize('database', 'username', 'password', {
  host: 'localhost',
  dialect:'postgres'
});

- Donde database = Nombre de la base de datos
- Donde username= Usuario en la base de datos (por lo general postgres)
- Donde Password = Contraseña asignada al momento de instalar postgreSQL
   
Ejecucion del proyecto 
   - Por medio de la Consola se debe ingresar internamente al proyecto en su locacion principal, para eso ingresamos a la ruta del archivo " cd ../../ubicaciondelarchivo/PruebaTecnicaNequi"
   - Posteriormente digitamos el comando node index.js

Aqui pueden salir 2 posibles resultados, uno exitoso mostrandonos por consola cuales son las rutas para acceder a las Apis u otro que no levante el servicio por algun problema con el puerto,para este se soluciona asi:

- Ingresamos al archivo index.js
- Cambiamos el puerto en la linea numero 7, en vez de "3000" por algun puerto que se tenga disponible

# Explicacion clases

## Carpeta Config

### DB.JS 

Aqui se importa la biblioteca Sequelize y se crea una nueva instancia de Sequelize
para conectarse a una base de datos PostgreSQL. Especifica el nombre de la base de datos como'datoslibros', el nombre de usuario como 'postgres', la contraseña como '123', el host como 'localhost' y el dialecto como 'postgres'(nombre de la aplciacion para la DB). Finalmente, exporta la instancia de Sequelize para su uso en otras
partes de la aplicación

## Carpeta Models

### Books.JS

Este código define un modelo Sequelize, en el cual definiremos las columnas en la base de Datos, adicionalmente al final de este se parametriza la tabla donde se escogieron las columnas y la relacion entre otra tabla llamada Category que se vera mas adelante,
Finalmente, exporta la instancia de Book para su uso en otras
partes de la aplicación


### Category.JS

Este código define un modelo Sequelize, en el cual definiremos las columnas en la base de Datos, adicionalmente al final de este se parametriza la tabla donde se escogieron las columnas y la relacion entre otra tabla llamada Books que se vio anteriormente,
Finalmente, exporta la instancia de Category para su uso en otras
partes de la aplicación

## Carpeta routes

### books.JS

Este código está configurando una API RESTful utilizando Express. Define rutas para realizar operaciones CRUD en una colección de libros con sus categorías correspondientes
Finalmente, exporta la instancia de router para su uso en otras
partes de la aplicación

### categories.js

Este código está configurando una API RESTful utilizando Express. Define rutas para realizar operaciones CRUD en una colección de categorias con sus libros correspondientes
Finalmente, exporta la instancia de router para su uso en otras
partes de la aplicación


## Index.JS

Este fragmento de código es una aplicación Node.js que utiliza el framework Express para crear un servidor, se tiene escrito como se ingresa a las apis (books y categories) ademas de mostrar en que puerto esta ejecutando


# Evidencias


Aqui veremos elcomando para que se ejecute el programa

![1](https://github.com/user-attachments/assets/0ab836e5-588a-4c41-adf7-a8fd7f291ad6)

Verificamos que si se ejecutara correctamente:

![2](https://github.com/user-attachments/assets/f6fe14e3-12ed-4958-8616-39997b1eb656)

## Ingresamos al dominio con la Api de books

![3](https://github.com/user-attachments/assets/ba701eb3-9a24-4a49-a130-bb7c1d122333)


### Procedemos a revisar los testeos en Postman

Hacemos una prueba con un post paraverificar que tenga el control de errores 

![5](https://github.com/user-attachments/assets/9644a1b6-8169-45d4-ba88-4e00f6a38a14)

Ahora revisamos ya con la sentencia ejecutandose y revisando en la app (id = 176)

![6](https://github.com/user-attachments/assets/cbbc867f-a071-4200-bfb7-835a43c380fd)

Revisamos la sentencia Put en el dominio y vemos como se edita lo que seleccionamos en el postman:

![7](https://github.com/user-attachments/assets/15c4a64a-bf60-4d9d-8f26-e2c4504d044c)

Revisamos la sentencia Delete para eliminar el libro en caso de que sea obsoleta:

![8](https://github.com/user-attachments/assets/916eca6b-ad8e-4c9e-91ad-8e5773d669b6)

## Ingresamos al dominio con la Api de categories

![4](https://github.com/user-attachments/assets/d9845a4b-b2bb-427b-92a0-395f340a817b)

Revisamos el testeo dela api con valores nulos y vemos que no los admite:

![9](https://github.com/user-attachments/assets/683de722-18e3-4854-b9c5-050bab4246c3)

Revisamos la api con un metodo Post que nos crea una nueva categoria:

![10](https://github.com/user-attachments/assets/c6134cce-e61c-43b1-b555-fd01e9ca67bc)

Editamos el nombrede una categoria copiando el id al que hace refrencia:

![11](https://github.com/user-attachments/assets/43ccc40e-9781-4536-8239-54691c679df1)


