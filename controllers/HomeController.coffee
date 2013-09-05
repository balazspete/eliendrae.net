Controller = require "./index"
Model = require "#{__dirname}/../models/index"

class HomeController extends Controller

  _setup: ->
    @model = new Model()

  _get: (req, res) =>
    @model.setBody "Home"
    @_renderPage res

module.exports = HomeController
