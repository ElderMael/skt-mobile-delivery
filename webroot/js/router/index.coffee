define ['backbone', 'jquery', 'appViews'], (Backbone, $, Views) ->
  Backbone.Router.extend
    initialize: ->
      App.headerView = new Views.HeaderView({el: 'header.content' })
      App.headerView.render()
      App.headerView.delegateEvents()

    routes:
      '': 'index'
      'portfolio': 'showPortfolio'
      'sap-erp': 'showSapErp'

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

    showSapErp: ->
      unless App.sapErpView?
        App.sapErpView = new Views.SapErpView();
      else
        App.sapErpView.delegateEvents()

      $('main.content > .container').html App.sapErpView.render().el