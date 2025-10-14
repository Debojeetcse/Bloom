module Bloom
  module Remote
    class Server
      def initialize(path)
        @path = path
      end

      def start
        puts "Starting remote server at #{@path} (stub)"
      end
    end
  end
end
