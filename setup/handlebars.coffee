
fs = require "fs"
_ = require "underscore"
_str = require "underscore.string"
querystring = require 'querystring'

global.hbs = require "hbs"

app.set 'view engine', 'html'
app.engine 'html', require('hbs').__express

viewsPath = "#{__dirname}/../views"
hbs.registerPartials "#{viewsPath}/partials"

hbs.registerHelper "include", (templateName, options) ->
  if /^[A-Z].*/.test templateName
    path = "#{viewsPath}/#{templateName}View.html"
  else
    path = "#{viewsPath}/partials/#{templateName}.html"

  if fs.existsSync path
    model = _.extend {}, this, options
    template = hbs.handlebars.compile fs.readFileSync(path, "utf8")
    return new hbs.SafeString template(model) if template
  ""

hbs.registerHelper "createMainNavbar", (structure) ->
  content = ""
  for element in structure
    continue unless element.url
    content += "<li class='nav-element"
    content += if element.active then " active" else " inactive"
    content += "'><a href='#{element.url ? ""}'>#{element.text ? element.url}</a></li>"
  new hbs.SafeString content

hbs.registerHelper "eduwork", (data) ->
  content = ""
  for element in data.structure
    content += """<div class="eduwork collapsible">
        <div>
            <a data-toggle="collapse" data-parent="##{data.section}" href="##{element.id}">
                <p class="eduwork-title"><span class="thicker-text">#{element.title}</span>
                #{element.description}
                <small style="position:absolute;right:0px;top:2px">#{element.date}</small></p>
                <p class="eduwork-subtext"><em><small>#{if element.at then "@" else ""}#{element.subtext}</small></em></p>
            </a>
        </div>
        <div id="#{element.id}" class="collapse in"><div class="eduwork-body">"""
    for detail in element.details or ['<em>No additional information</em>']
      content += """<p>#{detail}</p>"""
    if element.skills
      content += '<br><p><strong>Skills earned:</strong>&nbsp;'
      count = 0
      for skill in element.skills
        content += ', ' if count > 0
        content += "<span>#{skill}</span>"
        count += 1
      content += '</p>'
    content += """</div></div>
      </div>"""

  new hbs.SafeString content

hbs.registerHelper "filterquery", (data) ->
  querystring.stringify {filter: data}

