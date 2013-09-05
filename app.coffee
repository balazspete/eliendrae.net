global.express = require "express"
global.app = express()

global.config = require "./config"

require "./setup/index"





app.listen config.httpPort
