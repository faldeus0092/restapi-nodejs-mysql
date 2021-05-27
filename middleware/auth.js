var conn = require('../conn');
var mysql = require('mysql');
var md5 = require('md5');
var response = require('../res');
var jwt = require('jsonwebtoken');
var config = require('../config/secret');
var ip = require('ip');

// register
exports.register = function (req,res) {
    var post = {
        username: req.body.username,
        email: req.body.email,
        password: md5(req.body.password),
        reg_date: new Date()
    }
    // check if email exist
    var query = "SELECT email FROM ?? WHERE ??=?";
    var table = ["user", "email", post.email];
    query = mysql.format(query, table);
    conn.query(query, function (error, rows) {
        if(error){
            console.log(error);
        }
        else {
            // if email does not exist
            if (rows.length == 0){
                var query = "INSERT INTO ?? SET ?";
                var table = "user";
                query = mysql.format(query, table);
                conn.query(query, post, function (error, rows) {
                    if (error) {
                        console.log(error);
                    }
                    else {
                        response.ok("Successfully added new user", res);
                    }
                })
            } else {
                response.ok("Email already registered", res)
            }
        }
    })
}

// login
exports.login = function (req, res) {
    var post = {
        password: req.body.password,
        email: req.body.email
    }

    var query = "SELECT * FROM ?? WHERE ??=? AND ??=?";
    var table = ["user", "password", md5(post.password), "email", post.email];
    query = mysql.format(query, table);
    conn.query(query, function (error, rows) {
        if(error){
            console.log(error);
            return;
        } else {
            // if exists
            if (rows.length == 1) {
                var token = jwt.sign({rows}, config.secret, {
                    expiresIn: 86400 // expires in 1 day
                });
                user_id = rows[0].user_id;
                var data = {
                    user_id: user_id,
                    access_token: token,
                    ip_address: ip.address()
                }

                var query = "SELECT * FROM ?? WHERE ??=?";
                var table = ["access_token", "user_id", data.user_id];
                query = mysql.format(query, table);
                conn.query(query, function (error, rows){
                    if (error) {
                        console.log(error);
                        return;
                    } else {
                        if (rows.length == 0){
                            var query = "INSERT INTO ?? SET ?";
                            var table = ["access_token"];
            
                            query = mysql.format(query, table);
                            conn.query(query, data, function (error, rows) {
                                if (error) {
                                    console.log(error);
                                } else {
                                    return res.json({
                                         success: true,
                                         message: 'Login Success. Token generated.',
                                         token: token,
                                         currentUser: data.user_id
                                     });
                                }
                            });
                        }
                        if (rows.length == 1) {
                            var query = "UPDATE ?? SET ??=?, ??=? WHERE ??=?";
                            var table = ["access_token", "access_token", token, "ip_address", data.ip_address, "user_id", data.user_id];
            
                            query = mysql.format(query, table);
                            conn.query(query, function (error, rows) {
                                if (error) {
                                    console.log(error);
                                    return;
                                } else {
                                    return res.json({
                                         success: true,
                                         message: 'Login Success. Token generated.',
                                         token: token,
                                         currentUser: data.user_id
                                     });
                                }
                            });
                        }
                    }
                });

            } else {
                return res.json({
                     "Error": true,
                     "Message": "Wrong credentials."
                 });
            }
        }
    })
}

// exports.testpage = function (req, res) {
//     response.ok("Exclusive to role 1", res);
// }