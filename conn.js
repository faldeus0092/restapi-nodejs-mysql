const mysql = require('mysql');
const dbConfig = require('./config/db.config');

// koneksi ke database
// mysql://b172dba8ad5895:70c3c3ae@us-cdbr-east-03.cleardb.com/heroku_a64de6f5af87faa?reconnect=true
// mysql --host=us-cdbr-east-03.cleardb.com --user=b172dba8ad5895 --password=70c3c3ae --reconnect heroku_a64de6f5af87faa

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