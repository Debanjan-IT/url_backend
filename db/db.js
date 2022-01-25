const Sequelize = require('sequelize');
const sequelize = new Sequelize('url_shortner', 'root', '', {
    host: 'localhost',
    dialect: 'mysql',
},);

module.exports = sequelize;