// Generated by CoffeeScript 1.6.3
define(['backbone', 'handlebars', 'appTemplates'], function(Backbone, Handlebars, templates) {
  return Backbone.View.extend({
    template: templates['header'],
    initialize: function() {
      return this.model = {};
    },
    events: {
      'click #navItems > ul > li': 'collapseMobileMenu'
    },
    render: function() {
      this.$el.html(this.template(this.model));
      return this;
    },
    collapseMobileMenu: function() {
      return $('#navItems').collapse('toggle');
    }
  });
});
