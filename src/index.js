import dotenv from 'dotenv'
import express from 'express'
import router from '../src/routes/auth.route.js'
import connectDB from './config/db.js'

dotenv.config()

const app = express()
const PORT = process.env.PORT
app.use(express.json())
app.use(router)

app.listen(PORT, console.log(
    `server running at port: ${PORT}`,
    connectDB()
))
