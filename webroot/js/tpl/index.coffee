define ['handlebars', 'text!/js/tpl/main.hbs',
        'text!/js/tpl/sap-erp.hbs'], (Handlebars, mainTemplate, sapErpTemplate) ->
  {
  'main': mainTemplate
  'sapErp': Handlebars.default.compile sapErpTemplate
  }