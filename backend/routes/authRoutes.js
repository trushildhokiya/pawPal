/**
 * IMPORTS
 */
const express = require('express')
const { login, register } = require('../controller/authController')
const router = express.Router()

/**
 * ROUTES
 */

// POST 
router.route('/login').post(login)
router.route('/register').post(register)

/**
 * EXPORTS
 */
module.exports = router