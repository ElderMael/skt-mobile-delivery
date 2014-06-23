define ['backbone', 'handlebars', 'appTemplates'], (Backbone, Handlebars, templates)->
  Backbone.View.extend
    template: templates['header']
    initialize: ->
      this.model = {}

    events :
      'click #navItems > ul > li': 'collapseMobileMenu'

    render: ->
      this.$el.html this.template this.model
      return this

    collapseMobileMenu: ->
      $('#navItems').collapse('toggle');