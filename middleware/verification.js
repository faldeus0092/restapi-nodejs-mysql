const jwt = require('jsonwebtoken');
const config = require('../config/secret');

function verify(roles) {
    return function (req, rest, next) {
        // check authorization dari header
        var tokenWithBearer = req.header.authorization;
        if (tokenWithBearer) {
            var token = tokenWithBearer.split(' ')[1];
            jwt.verify(token, config.secret, function (error, rows) {
                if (error) {
                    return rest.status(401).send({
                        auth: false,
                        message: "Token invalid."
                    });
                } else {
                    if (roles == 2) {
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
                message: "Token not available."
            });
        }
    }
}

module.exports = verification;