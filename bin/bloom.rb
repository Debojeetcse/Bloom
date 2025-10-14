#!/usr/bin/env ruby
require_relative "../lib/bloom"

USAGE = <<~USAGE
	Usage:
		bloom init [path]    Initialize a new Bloom repository at path (defaults to current dir)
		bloom version        Print Bloom version
		bloom help           Show this help
USAGE

if ARGV.empty?
	puts USAGE
	exit 0
end

cmd = ARGV.shift
case cmd
when 'init'
	path = ARGV.shift || Dir.pwd
	repo = Bloom::Repo.new(path)
	repo.init
when 'version'
	puts Bloom::VERSION
when 'help', '-h', '--help'
	puts USAGE
else
	puts "Unknown command: #{cmd}\n"
	puts USAGE
	exit 1
end
