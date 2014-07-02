define ['backbone', 'handlebars', 'appTemplates'], (Backbone, Handlebars, templates)->

  Backbone.View.extend
    template: templates['header']
    initialize: ->
      this.model = {}

    events :
      'click #navItems > ul > li': 'collapseMobileMenu'
      'click .branding': 'goHome'

    render: ->
      this.$el.html this.template this.model
      return this

    collapseMobileMenu: (e) ->
      $('#navItems').collapse('toggle');
      $('#navItems > ul > li').removeClass 'active'
      $(e.currentTarget).addClass 'active'

    goHome: ->
      $('#navItems').collapse('hide');
      $('#navItems > ul > li').removeClass 'active'