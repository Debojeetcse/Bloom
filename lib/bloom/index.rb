module Bloom
  class Index
    def initialize(repo)
      @repo = repo
      @entries = {}
    end

    def add(path)
      @entries[path] = File.read(path)
      puts "Staged #{path}"
    end

    def write
      index_path = File.join(@repo.git_dir, 'index')
      File.write(index_path, @entries.to_s)
      puts "Index written to #{index_path}"
    end
  end
end
