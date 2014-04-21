Controller = require "./index"
Model = require "#{__dirname}/../models/index"

class PolicyController extends Controller

  _setup: ->
    @model = new Model()

  _get: (req, res) =>
    @model.setBody "Policy"
    @_renderPage res

module.exports = PolicyController
