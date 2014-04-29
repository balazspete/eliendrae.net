Controller = require "./index"
Model = require "#{__dirname}/../models/index"

class AboutCVController extends Controller

  _setup: ->
    @model = new Model()

  _get: (req, res) =>
    @model.setBody "AboutCV"
    @model.add 'files', [
      {
        id: 'cv-full-design'
        name: 'Resume/Curriculum Vitae'
        description: 'original version'
        link: 'https://dl.dropbox.com/s/oht3ntkfiac78lt/CV.pdf'
        details: [
          'An interactive version, mimicking the design of the website. Contains links to more details on the website.'
        ]
      }
      {
        id: 'cv-full-design-plain'
        name: 'Resume/Curriculum Vitae'
        description: 'printer friendly version'
        link: 'https://dl.dropboxusercontent.com/s/rujphjmpd4fj9os/CVplain.pdf'
        details: [
          'An interactive version, with colours removed. Contains links to more details on the website.'
        ]
      }
    ]
    @_renderPage res

module.exports = AboutCVController
