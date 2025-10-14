module Bloom
  module MergeTools
    class ThreeWay
      def initialize(repo)
        @repo = repo
      end

      def resolve(base, a, b)
        puts "Three-way merge between #{a} and #{b} with base #{base} (stub)"
      end
    end
  end
end
