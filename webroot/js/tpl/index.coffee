define ['handlebars', 'text!/js/tpl/main.hbs',
        'text!/js/tpl/sap-erp.hbs',
        'text!/js/tpl/portfolio.hbs'], (Handlebars, mainTemplate, sapErpTemplate, portfolioTemplate) ->
  {
  'main': Handlebars.default.compile mainTemplate
  'sapErp': Handlebars.default.compile sapErpTemplate
  'portfolio': Handlebars.default.compile portfolioTemplate
  }