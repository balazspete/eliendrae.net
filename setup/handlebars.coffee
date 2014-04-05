
fs = require "fs"
_ = require "underscore"
_str = require "underscore.string"

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
