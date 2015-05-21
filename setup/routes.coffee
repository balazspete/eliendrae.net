subdomain = require 'express-subdomain'
lessMiddleware = require 'less-middleware'

getController = (name) ->
  controller = require "#{__dirname}/../controllers/#{name}Controller"
  new controller()

app.use subdomain('get-around-dublin', express.static(__dirname + '/../get-around-dublin'))

app.use(lessMiddleware "/less", {
  dest: "/css"
  pathRoot: "#{__dirname}/../"
  debug: true
  force: true
})

app.use '/css', express.static(__dirname + '/../css')
app.use '/static', express.static(__dirname + '/../assets')
app.use '/fonts', express.static(__dirname + '/../assets/fonts')

app.get '/', getController("Home").get
app.get '/about', getController("About").get
app.get '/about/cv', getController("AboutCV").get
app.get '/projects', getController("Projects").get

app.get '/policies', getController("Policy").get

app.use getController("Error").get
