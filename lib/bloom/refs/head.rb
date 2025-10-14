module Bloom
  module Refs
    class Head
      def initialize(repo)
        @repo = repo
      end

      def current
        head_file = File.join(@repo.git_dir, 'HEAD')
        content = File.read(head_file).strip
        if content.start_with?('ref:')
          content.split(':', 2).last.strip
        else
          content
        end
      end
    end
  end
end
