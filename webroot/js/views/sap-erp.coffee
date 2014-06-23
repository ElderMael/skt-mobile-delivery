define ['backbone', 'handlebars', 'appTemplates'], (Backbone, Handlebars, templates)->
  Backbone.View.extend
    template: templates['sapErp']
    initialize: ->
      this.model = {}

    render: ->
      this.el = this.template this.model
      return this
