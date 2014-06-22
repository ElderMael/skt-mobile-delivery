define ['backbone', 'jquery', 'appViews'], (Backbone, $, Views) ->

  Backbone.Router.extend

    routes:
      '': 'index'

    index: ->
      unless App.mainView?
        App.mainView = new Views.MainView()
      else
        App.mainView.delegateEvents()

      $('main.content > .container').html App.mainView.render().el