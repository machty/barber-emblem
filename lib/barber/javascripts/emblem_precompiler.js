var exports = this.exports || {};

var Emblem;
var self = this;

var Barber = {
  precompile: function(string) {
      Emblem = self.Emblem;
      var handlebarsVariant = exports.emberHandlebars || Handlebars;

      return Emblem.precompile(handlebarsVariant, string).toString();
  }
};
