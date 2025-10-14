module Bloom
  class Checkout
    def initialize(repo)
      @repo = repo
    end

    def checkout(ref)
      puts "Checking out #{ref} (stub)"
    end
  end
end
