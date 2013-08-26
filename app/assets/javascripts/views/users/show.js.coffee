class OurAgendaApp.Views.UsersShow extends Backbone.View
  tagName: "p"
  template: JST['users/show']
  render: ->
    $el.html(@template(user: @model))
    return this