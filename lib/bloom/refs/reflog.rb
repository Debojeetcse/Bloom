module Bloom
  module Refs
    class Reflog
      def initialize(repo)
        @repo = repo
      end

      def append(ref, entry)
        puts "Reflog: #{ref} -> #{entry}"
      end
    end
  end
end
