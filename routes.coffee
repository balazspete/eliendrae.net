
getController = (name) ->
  controller = require("./controllers/#{name}Controller")
  new controller()

app.get '/', getController("Home").get


