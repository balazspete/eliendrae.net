Controller = require "./index"

class HomeController extends Controller

  _setup: =>
    @model = {}

  get: (req, res) =>
    console.log @
    @_renderPage res, 'Home', {}


module.exports = HomeController