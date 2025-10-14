require 'fileutils'
require_relative 'index'
require_relative 'object/blob'
require_relative 'object/tree'
require_relative 'object/commit'

module Bloom
  class Repo
    attr_reader :path

    def initialize(path)
      @path = File.expand_path(path)
    end

    def init
      FileUtils.mkdir_p(git_dir)
      FileUtils.mkdir_p(File.join(git_dir, 'objects'))
      FileUtils.mkdir_p(File.join(git_dir, 'refs', 'heads'))
      File.write(File.join(git_dir, 'HEAD'), "ref: refs/heads/main\n")
      puts "Initialized empty Bloom repository in #{git_dir}"
    end

    def git_dir
      File.join(@path, '.bloom')
    end
  end
end
