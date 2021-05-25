// // navigasi
// 'use strict';

// module.exports = function(app){
//     var myJson = require('./controller');

//     app.route('/')
//         .get(myJson.index);
//     // show all employees data, with their departments, designation, and current salary
//     app.route('/showAllEmp')
//         .get(myJson.showAllEmp);
//     // show employee data based on ID
//     app.route('/showByID/:id')
//         .get(myJson.showByID);
//     // show employee data based on department ID
//     app.route('/showByDeptID/:id')
//         .get(myJson.showByDeptID);
//     // add new employee
//     app.route('/addNewEmp')
//         .post(myJson.addNewEmp);
//     // update employee data
//     app.route('/updateEmp')
//         .put(myJson.updateEmp);
//     // remove employee
//     app.route('/deleteEmp')
//         .delete(myJson.deleteEmp);
//     // show employee salaries history
//     app.route('/showSalaries')
//         .get(myJson.showSalaries);
//     app.route('/showSalariesByID/:id')
//         .get(myJson.showSalariesByID);

//     // edit salaries
//     app.route('/updateSalaries')
//         .put(myJson.updateSalaries);
//     // add new salaries
//     app.route('/addNewSalaries')
//         .post(myJson.addNewSalaries);
//     }