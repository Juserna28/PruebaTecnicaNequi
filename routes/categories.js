import express from 'express';
const router = express.Router();
import Category from '../Models/Category.js';

// Crear una categoría
router.post('/', async (req, res) => {
    const { name } = req.body; 
    try {
        const newCategory = await Category.create({ name }); 
        res.status(201).json(newCategory);
    } catch (error) {
        console.error('Error al crear la categoría:', error);
        res.status(500).json({ message: 'Error al crear la categoría', error: error.message });
    }
});


// Obtener todas las categorías
router.get('/', async (req, res) => {
    try {
        const categories = await Category.findAll();
        res.json(categories);
    } catch (error) {
        console.error('Error al obtener categorías:', error);
        res.status(500).json({ message: 'Error al obtener categorías', error: error.message });
    }
});

export default router;
