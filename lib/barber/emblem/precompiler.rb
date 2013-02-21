module Barber
  module Emblem
    class Precompiler < Barber::Precompiler
      include Shared 

      def sources
        [precompiler, handlebars, emblem]
      end
    end
  end
end

