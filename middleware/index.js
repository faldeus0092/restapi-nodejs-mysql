var express = require('express');
var auth = require('./auth');
var router = express.Router();
var verification = require('./verification');
var verificationAdmin = require('./verificationAdmin');
var myJson = require('../controller');

router.get('/', myJson.index);
// registration menu
router.post('/api/v1/register', auth.register);
router.post('/api/v1/login', auth.login);

// page that needed authorization rank 1
// router.get('/api/v1/testpage', verification(), auth.testpage);
router.get('/api/v1/emp/all', verification(), myJson.showAllEmp);
router.get('/api/v1/emp/:id', verification(), myJson.showByID);
router.get('/api/v1/emp/dept/:id', verification(), myJson.showByDeptID);
router.get('/api/v1/salaries/all', verification(), myJson.showSalaries);
router.get('/api/v1/salaries/:id', verification(), myJson.showSalariesByID);


// page that needed authorization rank 2
router.post('/api/v1/emp/new', verificationAdmin(), myJson.addNewEmp);
router.delete('/api/v1/emp/delete', verificationAdmin(), myJson.deleteEmp);
router.put('/api/v1/emp/update', verificationAdmin(), myJson.updateEmp);
router.put('/api/v1/salaries/update', verificationAdmin(), myJson.updateSalaries);
router.post('/api/v1/salaries/new', verificationAdmin(), myJson.addNewSalaries);

module.exports = router;