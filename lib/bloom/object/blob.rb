module Bloom
  module Object
    class Blob
      def initialize(data)
        @data = data
      end

      def sha1
        require 'digest'
        Digest::SHA1.hexdigest(@data)
      end
    end
  end
end
