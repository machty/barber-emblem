module Barber
  module Ember
    class Precompiler < Barber::Precompiler
      def sources
        [precompiler, emblem]
      end

      def emblem
        @ember ||= File.new(::Emblem::Source.path)
      end

      def precompile_function
        "Emblem.precompile"
      end

      def precompiler
        @precompiler = File.new(File.expand_path("../../javascripts/ember_precompiler.js", __FILE__))
      end
    end
  end
end
