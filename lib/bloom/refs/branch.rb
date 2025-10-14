module Bloom
  module Refs
    class Branch
      def initialize(repo)
        @repo = repo
      end

      def list
        dir = File.join(@repo.git_dir, 'refs', 'heads')
        Dir.children(dir)
      rescue
        []
      end
    end
  end
end
