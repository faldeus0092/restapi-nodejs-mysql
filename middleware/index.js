var express = require('express');
var auth = require('./auth');
var router = express.Router();
var verification = require('./verification');
var verificationAdmin = require('./verificationAdmin');
var myJson = require('../controller');

// registration menu
router.post('/api/v1/register', auth.register);
router.post('/api/v1/login', auth.login);

// page that needed authorization rank 1
router.get('/api/v1/testpage', verification(), auth.testpage);
router.get('/api/v1/showAllEmp', verification(), myJson.showAllEmp);
router.get('/api/v1/showByID/:id', verification(), myJson.showByID);
router.get('/api/v1/showByDeptID/:id', verification(), myJson.showByDeptID);
router.get('/api/v1/showSalaries', verification(), myJson.showSalaries);
router.get('/api/v1/showSalariesByID', verification(), myJson.showSalariesByID);


// page that needed authorization rank 2
router.post('/api/v1/addNewEmp', verificationAdmin(), myJson.addNewEmp);
router.delete('/api/v1/deleteEmp', verificationAdmin(), myJson.deleteEmp);
router.put('/api/v1/updateEmp', verificationAdmin(), myJson.updateEmp);
router.put('/api/v1/updateSalaries', verificationAdmin(), myJson.updateSalaries);
router.post('/api/v1/addNewSalaries', verificationAdmin(), myJson.addNewSalaries);

module.exports = router;