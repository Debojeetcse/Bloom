module Bloom
  class Revert
    def initialize(repo)
      @repo = repo
    end

    def revert(commit)
      puts "Reverting #{commit} (stub)"
    end
  end
end
