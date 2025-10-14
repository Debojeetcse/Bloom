module Bloom
  module WorkingTree
    class Ignore
      def initialize(path)
        @path = path
      end

      def ignored?(file)
        false
      end
    end
  end
end
