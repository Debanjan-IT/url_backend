//Importing module
const express = require('express')
const app = express()
const routes = require('./router/router')
require('dotenv')
var cors = require('cors')
let jsonParser = require('body-parser').json()
app.use(jsonParser)
app.use(cors())

// Routes declaration
app.use('/api/operations', routes)


// Starting app
const port = process.env.PORT || 4040
app.listen(port, () => {console.log(`listening to ${port}`)})