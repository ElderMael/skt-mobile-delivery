((root) ->

  root.App = {} unless root.App?

  require.config(
    paths:
      'jquery': '/vendors/jquery/dist/jquery',
      'handlebars': '/vendors/handlebars/handlebars.amd',
      'underscore': '/vendors/underscore/underscore',
      'backbone': '/vendors/backbone/backbone',
      'bootstrap': '/vendors/bootstrap/dist/js/bootstrap',
      'text': '/vendors/requirejs-text/text'

      'appRouter': '/js/router/index'
      'appViews': '/js/views/index'
      'appTemplates': '/js/tpl/index'

    shim:
      'backbone':
        'deps': ['underscore', 'jquery']

      'handlebars':
        'deps': ['jquery', 'text']

      'bootstrap':
        'deps': ['jquery']

    waitSeconds: 20
  )

  require ['jquery', 'backbone', 'appRouter', 'bootstrap'], ($, Backbone, Router) ->

    $(document).ready ->

      App.router = new Router()
      Backbone.history.start();

    return
)(this)