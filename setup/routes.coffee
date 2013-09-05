
getController = (name) ->
  controller = require("#{__dirname}/../controllers/#{name}Controller")
  new controller()

app.use '/static', express.static(__dirname + '/../assets')

app.get '/', getController("Home").get


