import express from 'express';
import Book from '../Models/Book.js';
import Category from '../Models/Category.js';

const router = express.Router();

// Obtener todos los libros con su categoría
router.get('/', async (req, res) => {
    try {
        const books = await Book.findAll({
            include: [{
                model: Category,
                attributes: ['name'] 
            }],
            attributes: ['id', 'book', 'author', 'original_language', 'first_published', 'approximate_sales_in_millions', 'genre', 'CategoryId']
        });
        res.json(books);
    } catch (error) {
        console.error('Error al obtener los libros:', error);
        res.status(500).json({ message: 'Error al obtener los libros', error: error.message });
    }
});

// Crear un nuevo libro
router.post('/', async (req, res) => {
    const { book, author, CategoryId } = req.body;

    try {
        const newBook = await Book.create({ book, author, CategoryId });
        res.status(201).json(newBook);
    } catch (error) {
        console.error('Error al crear el libro:', error);
        res.status(500).json({ message: 'Error al crear el libro', error: error.message });
    }
});

export default router;