
fs = require "fs"
_ = require "underscore"
_str = require "underscore.string"

global.hbs = require "hbs"
app.set 'view engine', 'html'
app.engine 'html', require('hbs').__express

templates = {}
viewsPath = __dirname + "/../views"
for controller in fs.readdirSync(viewsPath) when _str.endsWith(controller, ".html")
  template = hbs.handlebars.compile fs.readFileSync("#{viewsPath}/#{controller}", "utf8")
  templates[controller.substring(0, controller.indexOf(".html"))] = template

hbs.registerPartials "#{viewsPath}/partials"

hbs.registerHelper "include", (partial) ->
  new hbs.SafeString (template for name, template of templates when name is partial)[0](this)



