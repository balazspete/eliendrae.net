
class Controller

  httpMethods = ['all', 'get', 'post', 'put', 'delete']

  contstructor: =>
    for method in httpMethods
      _.bind method, @_VERB, method
    _setup()

  _setup: ->
    @model = {}

  VERB = (method, req, res) =>
    try
      @["_#{method}"](req, res)
    catch e
      res.send e.message ? "Error"

module.exports = Controller
