require 'emblem/source'

module Barber
  module Emblem
    module Shared
      def emblem
        @emblem = File.new(::Emblem::Source.bundled_path)
      end

      def precompiler
        @emblem = File.new(File.expand_path("../../javascripts/emblem_precompiler.js", __FILE__))
      end
    end
  end
end
