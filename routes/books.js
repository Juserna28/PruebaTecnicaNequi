import express from 'express';
const router = express.Router();
import Book from '../Models/Book.js';


// Obtener todos los libros
router.get('/', async (req, res) => {
    try {
        const books = await Book.findAll({
            attributes: ['book', 'author', 'original_language', 'first_published', 'approximate_sales_in_millions', 'genre'] 
        });
        res.json(books);
    } catch (error) {
        console.error('Error al obtener los libros:', error);
        res.status(500).json({ message: 'Error al obtener los libros', error: error.message });
    }
});


export default router;