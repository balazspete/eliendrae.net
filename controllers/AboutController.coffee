Controller = require "./index"
AboutModel = require "#{__dirname}/../models/AboutModel"

class AboutController extends Controller

  _setup: ->
    @model = new AboutModel()

  _get: (req, res) =>
    @_renderPage res

module.exports = AboutController
