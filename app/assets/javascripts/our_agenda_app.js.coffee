window.OurAgendaApp =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: -> 
    OurAgendaApp.usersCollection = new OurAgendaApp.Collections.Users()
    OurAgendaApp.usersIndexView = new OurAgendaApp.Views.UsersIndex()
    OurAgendaApp.usersRouter = new OurAgendaApp.Routers.Users()
    Backbone.history.start(pushState: true)

$(document).ready ->
  OurAgendaApp.init()