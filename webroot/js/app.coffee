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

    shim:
      'backbone':
        'deps': ['underscore', 'jquery']

      'handlebars':
        'deps': ['jquery', 'text']

      'bootstrap':
        'deps': ['jquery']

    waitSeconds: 20
  )

  require ['jquery'], ($) ->

    App.$ = jQuery

    console.log "Hello, World!"

    App.$(document).ready ->
      console.log "Hello, World from jQuery"
      App.$('#hello-p').append 'Hello, World from jQuery'

    return
)(this)