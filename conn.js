var mysql = require('mysql');

// koneksi ke database
// mysql://b172dba8ad5895:70c3c3ae@us-cdbr-east-03.cleardb.com/heroku_a64de6f5af87faa?reconnect=true
const conn = mysql.createPool({
    host:'us-cdbr-east-03.cleardb.com',
    user:'b172dba8ad5895',
    password:'70c3c3ae',
    database:'heroku_a64de6f5af87faa'
});

conn.getConnection((err) =>{
    if(err) throw err;
    console.log('MySQL Connected');
})

module.exports = conn;