/**
 * IMPORTS
 */
const dotenv = require('dotenv').config()
const express = require('express')
const cors = require('cors')
const connectdb = require('./config/dbConfig')
const errorHandler = require('./middleware/errorHandler')
const authRoutes = require('./routes/authRoutes')

/**
 * CONNECT TO DATABASE
 */
connectdb()


/**
 * CREATE EXPRESS APP
 */
const app = express()
app.use(cors())
app.use(express.json())
app.use('/auth',authRoutes)
app.use(errorHandler)

/**
 * LISTEN AT PORT 5001
 */
const PORT = process.env.PORT

app.listen(PORT,  ["localhost" ],()=>{

    console.log(`Server started listening at port ${PORT}`);

})

