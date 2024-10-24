import sequelize from './Config/db.js'; 

const testConnection = async () => {
    try {
        await sequelize.authenticate();
        console.log('La conexión a la base de datos se ha establecido correctamente.');
    } catch (error) {
        console.error('No se pudo conectar a la base de datos:', error);
    }
};

testConnection();
