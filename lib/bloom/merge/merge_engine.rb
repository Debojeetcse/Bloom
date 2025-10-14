module Bloom
  module Merge
    class MergeEngine
      def initialize(repo)
        @repo = repo
      end

      def merge(a, b)
        puts "Merging #{a} and #{b} (stub)"
      end
    end
  end
end
