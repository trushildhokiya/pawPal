const User = require('../models/users')
const asyncHandler = require('express-async-handler')
const bcrypt = require('bcryptjs')

const login = asyncHandler( async(req,res)=>{

    res.status(200).json({
        message:"Ok"
    })
})


const register = asyncHandler( async(req,res)=>{

    const {email, password} = req.body

    // user already exists
    const user = await User.findOne({email: email});

    if(user){
        res.status(400)
        throw new Error("User already exits")
    }

    // no password or email

    if(!email || !password ){

        res.status(400)
        throw new Error("Password and email required")
    
    }

    const hashedPassword = await bcrypt.hash(password,10)

    await User.create({
        email: email,
        password:hashedPassword
    })

    res.status(200).json({
        message:"Success"
    })
})


module.exports = {
    login,
    register
}