Controller = require "./index"
Model = require "#{__dirname}/../models/index"

class ProjectsController extends Controller

  _setup: ->
    @model = new Model()

  _get: (req, res) =>
    @model.setBody "Projects"
    @model._setViewProperty "scripts", ["projects"], false

    @model.add "projects", [
      {
        id: "tcd-dissertation"
        name: "Mobile Geographical Linked Data Visualisation"
        description: 'MSc dissertation'
        date: "Ongoing"
        skills: ["Linked data", "SPARQL", "iOS"]
        details: [
          "A mobile application to use and discover geographical linked data visually"
        ]
      }
      {
        inverse: true
        id: "rdf-visualiser"
        name: "RDFVisualiser"
        date: "Ongoing"
        skills: ['RDF', 'SPARQL', 'iOS']
        details: [
          "An iOS application to dereference, navigate, and visualise RDF resources"
        ]
      }
      {
        id: "eliendrae-net"
        name: "eliendrae.net"
        description: "personal website"
        date: "Ongoing"
        skills: ['Web development', 'HTML', 'LESS', 'CSS', 'JavaScript', 'Node.js', 'CoffeeScript', 'Handlebars.js', 'jQuery']
        details: [
          "Redesigned my personal website with a direction towards minimalistic UI design"
        ]
      }
      {
        inverse: true
        id: "tcd-fall-detection"
        link: "//github.com/balazspete/wearable-fall-sensor"
        name: "A fully mobile and unobtrusive wearable fall detection system"
        date: "2014"
        skills: ["Android", "Arduino", "BLE", "Java"]
        details: [
          "A wearable fall detection system, focusing on developing a fully mobile and location independent approach that results in a reliable fall detection system that is comparable in performance to existing solutions, however it should be comfortable to use by its wearer and should be non-intrusive requiring very little attention." 
          "Based on mainstream platforms to aim to reduce costs and investigate whether good performance is achievable."
        ]
      }
      {
        id: "tcd-learn"
        name: "Learn"
        description: "Classroom collaboration environment"
        date: "2014"
        skills: ["iOS", "Node.js", "OpenCV"]
        details: [
          "A system that is capable to draw in and organise external resources for students, such as the white-board or the student's notes and intelligently link them to online resources such as lecture slides. In addition, the system offers real time in-class collaboration between students." 
          "Targeted for iPads (with the possibility to expand to other platforms), includes use of OpenCV, machine learning, and web based services."
        ]
      }
      {
        inverse: true
        id: "tcd-crystal-game"
        name: "Crystal Game"
        description: "Augmented reality multi-player game"
        date: "2014"
        skills: ['Android', 'jUnit', 'XP', 'Scrum', 'Java', 'Socket programming', 'Distributed systems', 'Networks']
        details: [
          "An augmented reality mobile game, allowing users to collect crystals in the environment and duel with each other. The project focuses on the implementation of a reliable and concurrent distributed application."
        ]
      }
      {
        id: "tcd-train"
        name: "Multi-hop train journey booking system"
        date: "2013"
        skills: ['Java', 'Socket programming', 'Networks', 'Distributed Systems']
        details: [
          "A distributed multi-hop train journey booking application, capable to scale to millions of users."
        ]
      }
      {
        inverse: true
        id: "ucd-final-project"
        name: "Gesture Recognition for Exercise"
        description: "BSc final year project"
        date: "2012 - 2013"
        skills: ['Java', 'Gesture recognition', 'Machine learning', 'Signal processing']
        details: [
          "Created a system capable to recognise different physical activities using position sensors"
        ]
      }
      {
        id: "ucdsufb"
        name: "UCD Students' Union Facebook Application"
        date: "2012"
        skills: ['HTML', 'CSS', 'LESS', 'JavaScript', 'CoffeeScript', 'Handlebars.js', 'JSON', 'Facebook API', 'jQuery']
        details: [
          "Created an information portal for incoming students"
        ]
      }
      {
        inverse: true
        id: "ucd-scisoc"
        name: "UCD Science Society's Website"
        date: "2011"
        skills: ['HTML', 'CSS', 'MySQL', 'JavaScript', 'PHP', 'Facebook API', 'jQuery']
        details: [
          "As part of my responsibilities, I have developed the website for the Science Society."
          "The site possessed features such as tickets selling, members and events management, to help the committee in its duties. In addition, the website was integrated with Facebook in order to automatically relay information to the members."
        ]
      }
      {
        id: "ucd-fole"
        name: "FOL-E"
        description: "a first order logic editor"
        date: "2011"
        skills: ['Java']
        link: 'http://www.youtube.com/watch?v=FRAyMdXee0c'
        details: [
          "A college project to develop a first order logic editor, named Fol-E. The introductory video is on Youtube."
        ]
      }
    ]



    @_renderPage res

module.exports = ProjectsController


# 
###{
        id: ""
        name: ""
        date: ""
        skills: []
        details: []
      }
      {
        id: ""
        name: ""
        date: ""
        skills: []
        details: []
      }
      {
        id: ""
        name: ""
        date: ""
        skills: []
        details: []
      }###

