
Model = require './index'

class ProjectsModel extends Model

  _setup: ->
    super()

    @setBody "Projects"
    @_setViewProperty "title", "Projects"

    @_setViewProperty "scripts", ["projects"], false

    @add "projects", [
      {
        id: "evoco"
        name: "evoco"
        description: 'Rediscover your timeline'
        date: "2014"
        skills: ["iOS", "Facebook iOS SDK"]
        details: [
        ]
      }
      {
        inverse: true
        id: "tcd-dissertation"
        name: "Usable Mobile Geographical Linked Data Visualisation"
        description: 'MSc dissertation'
        date: "2014"
        skills: ["Linked data", "SPARQL", "iOS", "Usability evaluation", "Information visualisation"]
        details: [
          "Applications: PVGeoVisualisation, PVGeoVisualisation mobile"
          "In this study, the usability of the visualisation of geographical Linked Data on a mobile device was investigated. A mobile application was developed through an iterative process where the development of later prototype iterations were guided by analysing the results of usability studies. After a paper-based study and three prototype iterations, this application was compared to a desktop-based Linked Data geographical visualisation. This work is important because the amount of available spatial Linked Data is growing every day and the need to visualise this information to help users understand it increases correspondingly. There has been less effort to date in mobile Linked Data research, and not many mobile applications focus on visualising geographical data."
          "The experiments showed that the usability of the mobile app was affected by the addition visual feedback, the increased number of features, the introduction of visual cues, and whether users preferred the mobile app over the desktop one. The results indicated that achieving equivalent usability to the desktop application on mobile is possible. These results show that both applications are suitable for the exploration of geographical Linked Data, however one application cannot fully replace the other as the suitability of an application ultimately depended on the user‚Äôs platform preferences."
          "The analysis of the results of the usability experiments enable readers to identify the main challenges to consider when designing a mobile Linked Data application. This is supported by the presented investigation of how different mobile and Linked Data visualisation challenges can apply to a tablet application. The findings of this study could help in making appropriate design decisions for future applications. However, it is important to note that the experiments have been carried out with a small number of participants and that more data would need to be gathered through user studies prior to making any final conclusions."
        ]
      }
      {
        id: "eliendrae-net"
        name: "eliendrae.net"
        description: "personal website"
        link: "//github.com/balazspete/eliendrae.net"
        date: "2014"
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
        link: "//github.com/balazspete/smart-collaborations"
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
        link: "//github.com/balazspete/crystal-game"
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
        link: "//github.com/balazspete/multi-hop-train-journey-booking"
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
        link: "//github.com/balazspete/Gesture-Recognition-for-Exercise"
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


module.exports = ProjectsModel
