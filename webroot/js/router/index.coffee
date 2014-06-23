define ['backbone', 'jquery', 'appViews'], (Backbone, $, Views) ->
  Backbone.Router.extend
    initialize: ->
      unless App.headerView?
        App.headerView = new Views.HeaderView()
      else
        App.headerView.delegateEvents()

      $('header.content').html App.headerView.render().el

    routes:
      '': 'index'
      'portfolio': 'showPortfolio'

    index: ->
      unless App.mainView?
        App.mainView = new Views.MainView()
      else
        App.mainView.delegateEvents()

      $('main.content > .container').html App.mainView.render().el

    showPortfolio: ->
      unless App.portfolioView?
        App.portfolioView = new Views.PortfolioView();
      else
        App.portfolioView.delegateEvents()

      $('main.content > .container').html App.portfolioView.render().el