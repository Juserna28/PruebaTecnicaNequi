import Sequelize from 'sequelize';
//Informacion de la Db
const sequelize = new Sequelize('datoslibros', 'postgres', '123', {
    host: 'localhost',
    dialect: 'postgres',
});

export default  sequelize;