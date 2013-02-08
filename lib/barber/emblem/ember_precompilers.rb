module Barber
  module Emblem
    class EmberFilePrecompiler
      class << self
        def call(template)
          "Ember.Handlebars.template(#{compile(template)});"
        end

        def compile(template)
          Barber::Emblem::EmberPrecompiler.compile template
        end
      end
    end
  end
end
