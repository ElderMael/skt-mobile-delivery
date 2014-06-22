define ['handlebars', 'text!/js/templates/main.hbs', 'text!/js/templates/sap-erp.hbs'], (Handlebars, mainTemplate, sapErpTemplate) ->
  {
    'main': mainTemplate
    'sapErp': Handlebars.default.compile sapErpTemplate
  }