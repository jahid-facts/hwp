const express = require('express');
const { countAllModel } = require('../controllers/dashboardController');
const router = express.Router();

router.get('/dashboard', countAllModel);

module.exports = router;