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

    // Validación genral de campos
    if (!book || !author || CategoryId === undefined) {
        return res.status(400).json({ message: 'Alguno de los campos de book, author y/o CategoryId se encuentra/n vacio/s.' });
    }

    // Verificar que la categoría existe
    const categoryExists = await Category.findByPk(CategoryId);
    if (!categoryExists) {
        return res.status(404).json({ message: 'La categoría con el ID seleccioando no existe.' });
    }

    try {
        const newBook = await Book.create({ book, author, CategoryId });
        res.status(201).json(newBook);
    } catch (error) {
        console.error('Error al crear el libro:', error);
        res.status(500).json({ message: 'Error al crear el libro', error: error.message });
    }
});

export default router;