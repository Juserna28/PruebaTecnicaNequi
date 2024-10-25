import express from 'express';
import Category from '../Models/Category.js';

const router = express.Router();

// Crear una categoría (Post)
router.post('/', async (req, res) => {
    const { name } = req.body; 
    //Validar que etnga name
    if (!name) {
        return res.status(400).json({ message: 'El campo name no puede estar vacio.' });
    }
    try {
        const newCategory = await Category.create({ name }); 
        res.status(201).json(newCategory);
    } catch (error) {
        console.error('Error al crear la categoría:', error);
        res.status(500).json({ message: 'Error al crear la categoría', error: error.message });
    }
});

// Obtener todas las categorías (Get)
router.get('/', async (req, res) => {
    try {
        const categories = await Category.findAll();
        res.json(categories);
    } catch (error) {
        console.error('Error al obtener categorías:', error);
        res.status(500).json({ message: 'Error al obtener categorías', error: error.message });
    }
});

// Actualizar una categoría (Put)
router.put('/:id', async (req, res) => {
    const { id } = req.params;
    const { name } = req.body;

    // Validación
    if (!name) {
        return res.status(400).json({ message: 'El campo name no puede estar vacio.' });
    }

    try {
        const [updated] = await Category.update({ name }, {
            where: { id }
        });

        if (updated) {
            const updatedCategory = await Category.findByPk(id);
            res.status(200).json(updatedCategory);
        } else {
            res.status(404).json({ message: 'Categoría no encontrada.' });
        }
    } catch (error) {
        console.error('Error al actualizar la categoría:', error);
        res.status(500).json({ message: 'Error al actualizar la categoría', error: error.message });
    }
});


export default router;
