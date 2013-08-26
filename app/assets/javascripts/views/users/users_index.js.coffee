class OurAgendaApp.Views.UsersIndex extends Backbone.View
  initialize: ->
    _.bindAll(this, 'add')
    this.on "reset", => this.reset_collection()
  render: ->
    this.reset_collection()
    $("body").append(this.$el)
  reset_collection: ->
    _(@userViews).each (uv) -> uv.off(); uv.remove()
    @userViews = []
    _(OurAgendaApp.usersCollection.models).each(this.add) 
  add: (_model) ->
    userView = new OurAgendaApp.Views.UsersShow(model: (_model))
    this.userViews.push(userView)
    this.$el.append(userView.render().$el)