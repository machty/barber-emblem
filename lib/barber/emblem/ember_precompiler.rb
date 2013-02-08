module Barber
  module Emblem
    class EmberPrecompiler < Barber::Ember::Precompiler
      def sources
        [precompiler, handlebars, emblem]
      end

      def emblem
        @emblem = File.new(File.expand_path("../../javascripts/emblem.js", __FILE__))
      end

      def handlebars
        @handlebars = File.new(File.expand_path("../../javascripts/ember-template-compiler.js", __FILE__))
      end

      def precompiler
        @emblem = File.new(File.expand_path("../../javascripts/emblem_precompiler.js", __FILE__))
      end
    end
  end
end

