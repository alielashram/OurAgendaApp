class OurAgendaApp.Routers.Users extends Backbone.Router
  routes:
    "": "index"
  index: ->
    OurAgendaApp.usersCollection.fetch(
      success: ->
        OurAgendaApp.usersIndexView.render()
    ) 