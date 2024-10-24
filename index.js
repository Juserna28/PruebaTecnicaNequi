import express, { json } from 'express';
import sequelize from './Config/db.js'; 
import booksRouter from './routes/books.js';

const app = express();
const port = process.env.PORT || 3000;
app.use(json());

// Ruta 
app.use('/api/books', booksRouter);

(async () => {
    try {
        await sequelize.sync({ alter: true }); // Ajuste para evitar mdicficacion de tabla
        console.log(`Conexion correcta`);

        app.listen(port, () => {
            console.log(`Servidor corriendo en http://localhost:${port}/api/books`);  //Verificar puerto apra testeo
        });
    } catch (error) {
        console.error('Error en :', error);
    }
})();
