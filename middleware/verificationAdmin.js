const jwt = require('jsonwebtoken');
const config = require('../config/secret');
var mysql = require('mysql');
var conn = require('../conn');

function verificationAdmin(roles) {
    return function (req, rest, next) {
        // var role = req.body.role;
        // check authorization dari header
        var tokenWithBearer = req.headers.authorization;
        if (tokenWithBearer) {
            var token = tokenWithBearer.split(' ')[1];
            var query = "SELECT role FROM user JOIN access_token WHERE user.user_id = access_token.user_id AND access_token.access_token = ?";
            var table = [token];
            query = mysql.format(query, table);
            conn.query(query, function (error, rows){
                if (error) {
                    console.log(error);
                } else {
                    if (rows.length == 1) {
                        var role = rows[0].role;
                        jwt.verify(token, config.secret, function (error, rows) {
                            if (error) {
                                return rest.status(401).send({
                                    auth: false,
                                    message: "Token invalid."
                                });
                            } else {
                                if (role == 2) {
                                    req.auth = rows;
                                    next();
                                } else {
                                    return rest.status(401).send({
                                        auth: false,
                                        message: "Failed to authorize role."
                                    });
                                }
                            }
                        });
                    } else {
                        return rest.status(401).send({
                            auth: false,
                            message: "Tokenmu invalid"
                        });
                    }
                }
            });
        } else {
            return rest.status(401).send({
                auth: false,
                message: "Token not available."
            });
        }
    }
}

module.exports = verificationAdmin;