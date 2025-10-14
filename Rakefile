require 'rake'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'
require 'yard'

RSpec::Core::RakeTask.new(:spec)
RuboCop::RakeTask.new
YARD::Rake::YardocTask.new

task default: %i[spec rubocop yard]

namespace :bloom do
  desc "Run all quality checks"
  task :quality => [:spec, :rubocop]
end