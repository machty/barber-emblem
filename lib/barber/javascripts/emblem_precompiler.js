var exports = this.exports || {};

var Emblem;
var self = this;

function require() {
  // ember-template-compiler only requires('handlebars')
  return Handlebars;
}

var Barber = {
  precompile: function(string) {
      Emblem = self.Emblem;
      var handlebarsVariant = exports.EmberHandlebars || Handlebars;

      return Emblem.precompile(handlebarsVariant, string).toString();
  }
};
