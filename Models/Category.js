import Sequelize from 'sequelize';
import sequelize from '../Config/db.js';

const Category = sequelize.define('Category', {
    //Columnas
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true, 
    },
    name: {
        type: Sequelize.STRING,
        allowNull: false,
    },
}, {
    tableName: 'categories', //Nombre de la tabla en Pgadmin
    timestamps: false,
});

export default Category;
