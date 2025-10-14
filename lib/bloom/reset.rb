module Bloom
  class Reset
    def initialize(repo)
      @repo = repo
    end

    def soft(ref)
      puts "Soft reset to #{ref} (stub)"
    end

    def hard(ref)
      puts "Hard reset to #{ref} (stub)"
    end
  end
end
