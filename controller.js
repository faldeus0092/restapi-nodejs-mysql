'use strict';

var response = require('./res');
var connection = require('./conn');

exports.index = function (req, res) {
    response.ok('Application Running!', res);
}

// show all employee
exports.showAllEmp = function (req, res) {
    connection.query(`SELECT employee.emp_id, employee.name, employee.gender, employee.hire_date, departments.dept_name, designation.designation_name, salaries.salary, employee.cc_number FROM employee
    JOIN departments
    JOIN designation
    JOIN salaries
    WHERE employee.dept_id = departments.dept_id
    AND employee.designation_id = designation.designation_id
    AND employee.emp_id = salaries.emp_id
    AND salaries.from_date < CURRENT_DATE 
    AND CURRENT_DATE < salaries.to_date
    ORDER BY employee.emp_id`, function (error, rows, fields) {
        if (error) {
            console.log(error);
        } else if (rows.length > 0) {
            response.ok(rows, res);
        } else {
            response.no(rows, res);
        }
    });
};

// show based on ID
exports.showByID = function (req, res) {
    let id = req.params.id;
    connection.query(`SELECT employee.emp_id, employee.name, employee.gender, employee.hire_date, departments.dept_name, designation.designation_name, salaries.salary, employee.cc_number FROM employee
    JOIN departments
    JOIN designation
    JOIN salaries
    WHERE employee.dept_id = departments.dept_id
    AND employee.designation_id = designation.designation_id
    AND employee.emp_id = salaries.emp_id
    AND salaries.from_date < CURRENT_DATE 
    AND CURRENT_DATE < salaries.to_date
    AND employee.emp_id = ?`, [id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else if (rows.length > 0){
                response.ok(rows, res);
            } 
            else {
                response.no(rows, res);
            }
        });
};

// for putting new data
exports.addNewEmp = function (req, res) {
    var name = req.body.name;
    var gender = req.body.gender;
    var dept_id = req.body.dept_id;
    var designation_id = req.body.designation_id;
    var hire_date = req.body.hire_date;
    var cc_number = req.body.cc_number;

    connection.query("INSERT INTO employee (emp_id, name, gender, dept_id, designation_id, hire_date, cc_number) VALUES (NULL, ?, ?, ?, ?, ?, ?)",
        [name, gender, dept_id, designation_id, hire_date, cc_number],
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
    var dept_id = req.body.dept_id;
    var designation_id = req.body.designation_id;
    var hire_date = req.body.hire_date;
    var cc_number = req.body.cc_number;

    connection.query("UPDATE `employee` SET name=?, gender=?, dept_id=?, designation_id=?, hire_date=?, cc_number=? WHERE emp_id=?",
        [name, gender, dept_id, designation_id, hire_date, cc_number, id],
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

// show employee salaries history
exports.showSalaries = function (req, res){
    connection.query(`
    SELECT salaries.emp_id, salaries.salary, salaries.from_date, salaries.to_date, employee.name FROM salaries JOIN employee WHERE salaries.emp_id = employee.emp_id `,
        function (error, rows, fields){
            if (error) {
                console.log(error);
            }
            else {
                response.ok(rows, res);
            }
        }
    )
}
exports.showSalariesByID = function (req, res){
    let id = req.params.id;
    connection.query(`
    SELECT salaries.emp_id, salaries.salary, salaries.from_date, salaries.to_date, employee.name FROM salaries JOIN employee WHERE salaries.emp_id = employee.emp_id AND salaries.emp_id = ?`, [id],
        function (error, rows, fields){
            if (error) {
                console.log(error);
            }
            else {
                response.ok(rows, res);
            }
        }
    )
}

// update/edit current active salaries by ID
exports.updateSalaries = function (req, res) {
    var id = req.body.id;
    var salary = req.body.salary;
    var from_date = req.body.from_date;
    var to_date = req.body.to_date;

    connection.query("UPDATE `salaries` SET salary=?, from_date=?, to_date=? WHERE emp_id=? AND salaries.from_date < CURRENT_DATE AND CURRENT_DATE < salaries.to_date",
        [salary, from_date, to_date, id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Successfully updated salaries", res);
            }
        });
        
    }

// add new salaries
exports.addNewSalaries = function (req, res) {
    var id = req.body.id;
    var salary = req.body.salary;
    var from_date = req.body.from_date;
    var to_date = req.body.to_date;

    connection.query("INSERT INTO salaries (emp_id, salary, from_date, to_date) VALUES (?, ?, ?, ?)",
        [id, salary, from_date, to_date],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Successfully added data", res);
            }
        });
};

// show employed
// exports.showEmployed = function (req, res){
//     connection.query(`
//         SELECT employee.emp_id, employee.name, employee.gender, employee.hire_date, departments.dept_id, departments.dept_name, dept_emp.from_date, dept_emp.to_date FROM employee
//         JOIN departments
//         JOIN dept_emp
//         WHERE dept_emp.dept_id = departments.dept_id 
//         AND dept_emp.emp_id = employee.emp_id 
//         ORDER BY employee.emp_id
//         `,
//         function (error, rows, fields){
//             if (error) {
//                 console.log(error);
//             }
//             else {
//                 response.oknested(rows, res);
//             }
//         }
//     )
// }