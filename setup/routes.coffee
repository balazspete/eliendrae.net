
lessMiddleware = require 'less-middleware'

getController = (name) ->
  controller = require "#{__dirname}/../controllers/#{name}Controller"
  new controller()


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

app.use getController("Error").get

