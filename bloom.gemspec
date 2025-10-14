require_relative 'lib/bloom/version'

Gem::Specification.new do |spec|
  spec.name = "bloom-vcs"
  spec.version = Bloom::VERSION
  spec.authors = ["Debojeetcse"]
  spec.email = ["debojeet@example.com"]

  spec.summary = "A production-ready Git-like version control system"
  spec.description = "Bloom is a full-featured version control system implementing Git-like functionality with a focus on reliability and extensibility"
  spec.homepage = "https://github.com/Debojeetcse/Bloom"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Debojeetcse/Bloom"
  spec.metadata["changelog_uri"] = "https://github.com/Debojeetcse/Bloom/blob/main/CHANGELOG.md"

  spec.files = Dir.glob("{bin,lib}/**/*") + %w[LICENSE README.md CHANGELOG.md]
  spec.bindir = "bin"
  spec.executables = ["bloom"]
  spec.require_paths = ["lib"]

  spec.add_dependency "thor", "~> 1.2"
  spec.add_dependency "zeitwerk", "~> 2.6"
  spec.add_dependency "rugged", "~> 1.5"
  spec.add_dependency "tty-prompt", "~> 0.23"
end