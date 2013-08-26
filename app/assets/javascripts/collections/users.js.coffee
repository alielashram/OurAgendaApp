class OurAgendaApp.Collections.Users extends Backbone.Collection
  model: OurAgendaApp.Models.User
  url: '/api/users'