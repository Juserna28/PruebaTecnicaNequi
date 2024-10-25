import express, { json } from 'express';
import sequelize from './Config/db.js'; 
import booksRouter from './routes/books.js';
import categoriesRouter from './routes/categories.js'

const app = express();
const port = process.env.PORT || 3000;
app.use(json());

// Rutas
app.use('/api/books', booksRouter);
app.use('/api/categories', categoriesRouter); 

(async () => {
    try {
        await sequelize.sync({ alter: true }); 
        console.log(`Conexion correcta`);

        app.listen(port, () => {
            console.log(`Servidor corriendo en http://localhost:${port}/api/books`);
            console.log(`Servidor corriendo en http://localhost:${port}/api/categories`);
        });
    } catch (error) {
        console.error('Error en :', error);
    }
})();

