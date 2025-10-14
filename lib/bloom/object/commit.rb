module Bloom
  module Object
    class Commit
      attr_reader :message, :tree, :parents

      def initialize(tree:, parents: [], message: '')
        @tree = tree
        @parents = parents
        @message = message
      end
    end
  end
end
