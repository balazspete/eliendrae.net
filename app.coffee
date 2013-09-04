global.express = require "express"
global.app = express()

global.config = require "./config"

require "./routes"




app.listen config.httpPort
