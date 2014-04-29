Controller = require "./index"
ProjectsModel = require "#{__dirname}/../models/ProjectsModel"

class ProjectsController extends Controller

  _setup: ->
    @model = new ProjectsModel()

  _get: (req, res) =>
    @model.setBody "Projects"
    
    @_renderPage res

module.exports = ProjectsController

