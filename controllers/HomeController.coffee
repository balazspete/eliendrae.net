Controller = require "./index"

class HomeController extends Controller

  _setup: ->
    @model = {}

  get: (req, res) ->
    res.send "home"


module.exports = HomeController