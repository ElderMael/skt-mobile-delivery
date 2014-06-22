// Generated by CoffeeScript 1.6.3
define(['backbone', 'jquery', 'appViews'], function(Backbone, $, Views) {
  return Backbone.Router.extend({
    routes: {
      '': 'index'
    },
    index: function() {
      if (!App.mainView) {
        App.mainView = new Views.MainView();
      } else {
        App.mainView.delegateEvents();
      }
      return $('main.content > .container').html(App.mainView.render().el);
    }
  });
});