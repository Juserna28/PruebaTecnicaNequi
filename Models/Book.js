import Sequelize from 'sequelize';
import sequelize from '../Config/db.js';
import Category from './Category.js'

const Book = sequelize.define('Book', {

    //Columnas
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    book: { 
        type: Sequelize.STRING,
        allowNull: false
    },
    author: {
        type: Sequelize.STRING,
        allowNull: false
    },
    original_language: {
        type: Sequelize.STRING
    },
    first_published: {
        type: Sequelize.INTEGER
    },
    approximate_sales_in_millions: { 
        type: Sequelize.INTEGER
    },
    genre: {
        type: Sequelize.STRING
    },
    CategoryId: { // Campo para la relación con Categoría
        type: Sequelize.INTEGER,
        references: {
            model: Category,
            key: 'id',
        },
    },
},{
    tableName: 'books',//Nombre de la tabla en Pgadmin
    timestamps: false
}
);

Book.belongsTo(Category, { foreignKey: 'CategoryId' });
Category.hasMany(Book, { foreignKey: 'CategoryId' });

export default Book;
