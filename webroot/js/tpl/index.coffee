define ['handlebars', 'text!/js/tpl/header-nav.hbs', 'text!/js/tpl/main.hbs',
        'text!/js/tpl/sap-erp.hbs',
        'text!/js/tpl/portfolio.hbs'], (Handlebars, headerTemplate, mainTemplate, sapErpTemplate, portfolioTemplate) ->
  {
  'header': Handlebars.default.compile headerTemplate
  'main': Handlebars.default.compile mainTemplate
  'sapErp': Handlebars.default.compile sapErpTemplate
  'portfolio': Handlebars.default.compile portfolioTemplate
  }