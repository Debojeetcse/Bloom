module Bloom
  module WorkingTree
    class Manager
      def initialize(repo)
        @repo = repo
      end

      def checkout(branch)
        puts "Checking out #{branch} (stub)"
      end
    end
  end
end
