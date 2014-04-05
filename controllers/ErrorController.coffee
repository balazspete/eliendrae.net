Controller = require "./index"
Model = require "#{__dirname}/../models/index"

class ErrorController extends Controller

  _setup: ->
    @model = new Model()

  _get: (req, res) =>
    @model.setBody "Error"
    @_renderPage res

module.exports = ErrorController
