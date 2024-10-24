import Sequelize from 'sequelize';
import sequelize from '../Config/db.js';

const Book = sequelize.define('Book', {

    //Columnas
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
    }
},{
    tableName: 'books',//Nombre de la tabla en Pgadmin
    timestamps: false
}
);

export default Book;
