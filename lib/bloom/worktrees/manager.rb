module Bloom
  module Worktrees
    class Manager
      def initialize(repo)
        @repo = repo
      end

      def add(path)
        puts "Adding worktree at #{path} (stub)"
      end
    end
  end
end
