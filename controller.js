'use strict';

var response = require('./res');
var connection = require('./conn');

exports.index = function (req, res) {
    response.ok('Application Running!', res);
}

// show all
exports.showAllEmp = function (req, res) {
    connection.query('SELECT * FROM `employee`', function (error, rows, fields) {
        if (error) {
            console.log(error);
        } else {
            response.ok(rows, res);
        }
    });
};

// show based on ID
exports.showByID = function (req, res) {
    let id = req.params.id;
    connection.query('SELECT * FROM `employee` WHERE emp_id = ?', [id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok(rows, res);
            }
        });
};

// for putting new data
exports.addNewEmp = function (req, res) {
    var name = req.body.name;
    var gender = req.body.gender;
    var hireDate = req.body.hireDate;

    connection.query("INSERT INTO `employee` (`name`, `gender`, `hire_date`) VALUES (?,?,?)",
        [name, gender, hireDate],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Successfully added data", res);
            }
        });
};

// alter data based on ID
exports.updateEmp = function (req, res) {
    var id = req.body.id;
    var name = req.body.name;
    var gender = req.body.gender;
    var hireDate = req.body.hireDate;

    connection.query("UPDATE `employee` SET name=?, gender=?, hire_date=? WHERE emp_id=?",
        [name, gender, hireDate, id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Successfully updated data", res);
            }
        });
        
    }
    
// delete employee
exports.deleteEmp = function (req, res) {
    var id = req.body.id;

    connection.query("DELETE FROM `employee` WHERE emp_id=?",
        [id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Successfully delete data", res);
            }
        });
    
}