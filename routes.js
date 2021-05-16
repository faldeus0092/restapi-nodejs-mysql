// navigasi
'use strict';

module.exports = function(app){
    var myJson = require('./controller');

    app.route('/')
        .get(myJson.index);

    app.route('/showAll')
        .get(myJson.showAllEmp);

    app.route('/showByID/:id')
        .get(myJson.showByID);

    app.route('/addNewEmp')
        .post(myJson.addNewEmp);

    app.route('/updateEmp')
        .put(myJson.updateEmp);

    app.route('/deleteEmp')
        .delete(myJson.deleteEmp);

    app.route('/showEmployed')
        .get(myJson.showEmployed);
    }