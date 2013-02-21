module Barber
  module Emblem
    class EmberPrecompiler < Barber::Ember::Precompiler
      include Shared 

      def sources
        [precompiler, handlebars, ember_template_precompiler, emblem]
      end
    end
  end
end

