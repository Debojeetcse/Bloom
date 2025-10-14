module Bloom
  module Merge
    class RebaseEngine
      def initialize(repo)
        @repo = repo
      end

      def rebase(branch)
        puts "Rebasing onto #{branch} (stub)"
      end
    end
  end
end
