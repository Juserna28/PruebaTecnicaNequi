import Sequelize from 'sequelize';

const sequelize = new Sequelize('datoslibros', 'postgres', '123', {
    host: 'localhost',
    dialect: 'postgres',
});

export default  sequelize;