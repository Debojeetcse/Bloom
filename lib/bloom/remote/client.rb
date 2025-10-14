module Bloom
  module Remote
    class Client
      def initialize(repo)
        @repo = repo
      end

      def fetch(remote)
        puts "Fetch from #{remote} (stub)"
      end
    end
  end
end
