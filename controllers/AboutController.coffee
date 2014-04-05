Controller = require "./index"
Model = require "#{__dirname}/../models/index"

class AboutController extends Controller

  _setup: ->
    @model = new Model()

  _get: (req, res) =>
    @model.setBody "About"
    @model.add "skills", [
      { name: "Java", class: "big" }
      { name: "Ruby", class: "big" }
      { name: "JavaScript", class: "big" }
      { name: "CoffeeScript", class: "medium" }
      { name: "Objective-C", class: "medium" }
      { name: "C++", class: "medium" }
      { name: "C", class: "medium" }
      { name: "C#", class: "medium" }
      { name: "PHP", class: "small" }
      { name: "Processing", class: "small" }
      { name: "Shell", class: "small" }
      { name: "Bash", class: "small" }
      { name: "ARM Assembly", class: "small" }
      { name: "HTML", class: "big" }
      { name: "CSS", class: "big" }
      { name: "jQuery", class: "medium" }
      { name: "Node.js", class: "big" }
      { name: "LESS", class: "medium" }
      { name: "iOS", class: "big" }
      { name: "Android", class: "big" }
      { name: "Arduino", class: "medium" }
      { name: "ARM", class: "small" }
      { name: "OpenCV", class: "small" }
      { name: "Git", class: "medium" }
      { name: "Mercurial", class: "small" }
      { name: "Subversion", class: "small" }
      { name: "MySQL", class: "medium" }
      { name: "NoSQL", class: "medium" }
      { name: "OpenGL", class: "small" }
      { name: "Jasmine", class: "small" }
      { name: "jUnit", class: "small" }
      { name: "Moustache templating", class: "small" }
      { name: "Linked data", class: "small" }
      { name: "SPARQL", class: "medium" }
      { name: "Embedded Systems", class: "small" }
      { name: "Web development", class: "medium" }
      { name: "Agile development", class: "medium" }
      { name: "Scrum", class: "medium" }
      { name: "XP", class: "small" }
      { name: "Test-driven development", class: "small" }
      { name: "LaTeX", class: "small" }
      { name: "WebSockets", class: "medium" }
      { name: "Object Oriented Design", class: "big" }
    ]
    @_renderPage res

module.exports = AboutController
