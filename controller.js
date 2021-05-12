'use strict';

var response = require('./res');
var connection = require('./conn');

exports.index = function(req, res){
    response.ok('Application Running!', res);
}

// show all
exports.showAllEmp = function (req, res){
    connection.query('SELECT * FROM `employee`', function(error, rows, fields){
        if (error){
            console.log(error);
        } else {
            response.ok(rows, res);
        }
    });
};

// show based on ID
exports.showByID = function (req, res){
    let id = req.params.id;
    connection.query('SELECT * FROM `employee` WHERE emp_id = ?', [id], 
    function(error, rows, fields){
        if (error){
            console.log(error);
        } else {
            response.ok(rows, res);
        }
    });
};