
_ = require "underscore"
_str = require "underscore.string"

class Model

  constructor: ->
    @_viewProperties =
      body: ""
      head: "head"
      bodyOptions: ""
      collapse: true
      navbar: [
        {
          text: "About"
          url: "/about/"
        }
        {
          text: "Projects"
          url: "/projects/"
        }
      ]

    for key, value of @_viewProperties
      k = _str.capitalize(key)
      @["set#{k}"] = _.bind @_setViewProperty, @, [key]
      @["get#{k}"] = _.bind @_getViewProperty, @, [key]

    @_setup()

  getModel: ->
    @_createModel()

    viewOptions = {}
    for key, value of @_viewProperties
      _key = _str.underscored(key)
      viewOptions["__#{_key}__"] = value
    _.extend @model, viewOptions

  add: (key, value) ->
    @model[key] = value

  # Implement this method to add post contructor logic
  _setup: ->
    @model = {}

  _createModel: ->

  _setViewProperty: (property, value, capitalize=true) =>
    @_viewProperties[property] = if capitalize then _str.capitalize(value) else value

  _getViewProperty: (property) =>
    @_viewProperties[property]

module.exports = Model
