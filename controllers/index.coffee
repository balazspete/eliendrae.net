
_ = require "underscore"
Model = require "#{__dirname}/../models/index"

class Controller

  httpMethods = ['all', 'get', 'post', 'put', 'delete']

  constructor: ->
    for method in httpMethods
      @[method] = _.bind @_VERB, @, [method]

    @_setup()

  # Implement this method to add post contructor logic
  _setup: ->
    @model = new Model()

  _renderPage: (res) ->
    res.locals = @model.getModel()
    res.render 'BaseView'

  _VERB: (method, req, res) =>
    try
      @["_#{method}"](req, res)
    catch e
      res.send e.message ? "Error"

module.exports = Controller
