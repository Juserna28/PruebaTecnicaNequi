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
