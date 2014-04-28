
Model = require './index'

class AboutModel extends Model

  _setup: ->
    super()

    @setBody "About"
    @_setViewProperty "title", "Balázs Pete"
    @_setViewProperty 'collapse', false, false

    @add "education", {
      section: "education"
      structure: [
        {
          id: "education_tcd"
          title: "MSc in Computer Science"
          description: "Mobile and Ubiquitous Computing"
          subtext: "Trinity College, University of Dublin"
          date: "2013 - 2014"
          details: [
            "Studied networks, distributed systems, information architecture, and HCI in mobile contexts to follow my interests in mobile and personal computing."
            "The course was very intensive, however it taught me a lot, not just about mobile and ubiquitous computing, but about team and project management, scheduling, and managing workload."
          ]
          skills: ["Distributed systems", "Networks", "Computer vision", "Mobile and Autonomous Systems", "Human-Computer Interaction", "Real-time and Embedded Systems", "Context Awareness", "Information Architecture"]
          at: true
          collapse: false
        }
        {
          id: "education_ucd"
          title: "BSc in Computer Science"
          description: "2.1 honours"
          subtext: "University College Dublin"
          date: "2009 - 2013"
          details: ["Studied machine learning and artificial intelligence in final year"]
          at: true
        }
        {
          id: "education_ib"
          title: "International Baccalaureate"
          description: "and Leaving Certificate"
          subtext: "St Andrews College, Dublin"
          date: "2007 - 2009"
          details: ["Completed the International Baccalaureate and Maths HL and Hungarian in the Leaving Certificate"]
          at: true
        }
      ]
    }
    @add "experience", {
      section: "experience"
      structure: [
        {
          id: "experience_sf2013"
          title: "Intern"
          description: "Software Development Engineer"
          subtext: "ServiceFrame Limited, NovaUCD, Belfield"
          date: "Summer 2013"
          details: [
            "Throughout the internship, I was tasked with automating tests and set up continuous integration. Building on these, I had to implement a system, working together with another intern, capable to automatically build, test, and deploy solutions either on schedule or on demand.",
            "My other duties involved the migration of customer data from the old environment to the new version of the solution. In addition, I have gained additional experience in web development, Node.js, and unit testing."
          ]
          at: true
        }
        {
          id: "experience_sf2012"
          title: "Intern"
          description: "Solutions Analyst"
          subtext: "ServiceFrame Limited, NovaUCD, Belfield"
          date: "Summer 2012"
          details: [
            "I have had the chance to work in a startup environment, where I worked with experts in the field of web development, working on a large scale web based data analytics tool. I was tasked with both front and back end development, including interface design and feature development. I also had the chance to design and develop some of the product’s REST API end points.",
            "I also had insight into product testing, agile development techniques and working collaboratively with team members."
          ]
          at: true
        }
        {
          id: "experience_ucdsci"
          title: "Intern"
          description: "Research in Multi-agent Systems"
          subtext: "School of Computer Science, University College Dublin"
          date: "Summer 2011"
          details: [
            "I was involved in a team of lecturers and post graduates developing several strategies for a multi agent programming competition. I had the chance to learn a lot about the multi-agent systems, how these systems work and how to improve existing strategies.", 
            "I also had the chance to develop different strategies based on my ideas. The team published a paper, detailing the proceedings of the project."
          ]
          at: true
        }
      ]
    }
    @add "responsibilities", {
      section: "responsibilities"
      structure: [
        {
          id: "responsabilities_tcdgsu"
          title: "Class and School Representative"
          description: ""
          subtext: "Trinity College Dublin Graduate Students' Union"
          date: "2013 - 2014"
          at: true
        }
        {
          id: "responsabilities_netsoc"
          title: "Auditor"
          description: "Chair of the Committee"
          subtext: "UCD Netsoc (Internet and Computer Science Society)"
          date: "2012 - 2013"
          details: ["I was in charge of and responsible for the UCD Internet and Computer Science Society.",
            """My duties included<br>
- overseeing the day to day operations of the Society,<br>
- management of the Committee,<br>
- management of the members,<br>
- ensure the presence of communication within the committee and between the committee and the members,<br>
- make contact with companies within the Industry and find sponsorship and other opportunities,<br>
- act as a liaison between the college and the Society,<br>
- be a member of the Societies Council and have an impact on the decision of the representatives of the student body.""",

          """Throughout my time as the Auditor of the Society, we have<br>
- achieved a significant increase in both interest in the society and the number of members,<br>
- established relationships with companies from the Industry,<br>
- received several sponsorships,<br>
- ensured the future activity of the Society."""]
          at: true
        }
        {
          id: "responsabilities_scisoc"
          title: "Webmaster"
          description: "Senior-Committee"
          subtext: "UCD Science Society"
          date: "2011 - 2012"
          details: ["I was elected to the position of webmaster of UCD Science Society. I have developed the society's website to help the committee to easily track and manage their important information.", " I was also involved in the running of the society, organising and managing events. These responsibilities helped me learn how to communicate and manage people on a large scale."]
          at: true
        }
      ]
    }
    @add "achievements", {
      section: "achievements"
      structure: [
        {
          id: "achievements_nwerc"
          title: "Team member"
          description: "Team BSD"
          subtext: "North-Western European Regional Programming Competition 2012"
          date: "November 2012"
          details: ["Participated in the regional competition, held in the Netherlands, along with two other team members."]
        }
        {
          id: "achievements_ucdsci"
          title: "Winner"
          description: ""
          subtext: "UCD SCI Programming Competition"
          date: "March 2012"
          details: ["A day long programming competition where I competed using Ruby."]
        }
      ]
    }
    @add "skills", {
      section: "skills"
      structure: [
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
        { name: "iOS", class: "big" }
        { name: "Android", class: "big" }
        { name: "ARM Assembly", class: "small" }
        { name: "HTML", class: "big" }
        { name: "CSS", class: "big" }
        { name: "jQuery", class: "medium" }
        { name: "Node.js", class: "big" }
        { name: "LESS", class: "medium" }
        { name: "Arduino", class: "medium" }
        { name: "ARM", class: "small" }
        { name: "OpenCV", class: "medium" }
        { name: "Git", class: "big" }
        { name: "Mercurial", class: "small" }
        { name: "Subversion", class: "small" }
        { name: "MySQL", class: "medium" }
        { name: "NoSQL", class: "medium" }
        { name: "Object Oriented Design", class: "big" }
        { name: "OpenGL", class: "small" }
        { name: "Jasmine", class: "small" }
        { name: "jUnit", class: "small" }
        { name: "UI and UX design", class: "big" }
        { name: "Moustache templating", class: "small" }
        { name: "Linked data", class: "medium" }
        { name: "SPARQL", class: "big" }
        { name: "Embedded Systems", class: "medium" }
        { name: "Web development", class: "big" }
        { name: "Agile development", class: "medium" }
        { name: "Scrum", class: "medium" }
        { name: "XP", class: "small" }
        { name: "Test-driven development", class: "small" }
        { name: "LaTeX", class: "small" }
        { name: "WebSockets", class: "medium" }
        { name: "BLE", class: "small" }  
        { name: "Machine learning", class: "medium" }
      ]
    }

module.exports = AboutModel


