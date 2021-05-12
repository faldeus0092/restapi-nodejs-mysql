var mysql = require('mysql');

// koneksi ke database
const conn = mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'',
    database:'restapidb'
});

conn.connect((err) =>{
    if(err) throw err;
    console.log('MySQL Connected');
})

module.exports = conn;