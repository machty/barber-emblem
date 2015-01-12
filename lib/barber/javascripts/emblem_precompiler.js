var exports = this.exports || {};
var module = this.module || {exports: null};

var Emblem;
var self = this;

function require() {
  // ember-template-compiler only requires('handlebars')
  return module.exports || Handlebars;
}

var Barber = {
  precompile: function(string) {
      Emblem = self.Emblem;
      var handlebarsVariant = exports.EmberHandlebars || Handlebars;

      return Emblem.precompile(handlebarsVariant, string).toString();
  }
};
