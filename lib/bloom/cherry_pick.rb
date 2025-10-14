module Bloom
  class CherryPick
    def initialize(repo)
      @repo = repo
    end

    def pick(commit)
      puts "Cherry-picking #{commit} (stub)"
    end
  end
end
