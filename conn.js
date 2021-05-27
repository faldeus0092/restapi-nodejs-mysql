const mysql = require('mysql');
const dbConfig = require('./config/db.config');

// connect to database

var conn = mysql.createPool({
    host: dbConfig.HOST,
    user: dbConfig.USER,
    password: dbConfig.PASSWORD,
    database: dbConfig.DB
});

// conn.getConnection((err) =>{
//     if(err) throw err;
//     console.log('MySQL Connected');
// })

module.exports = conn;
