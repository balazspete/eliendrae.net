
getController = (name) ->
  controller = require("#{__dirname}/../controllers/#{name}Controller")
  new controller()

app.get '/', getController("Home").get


