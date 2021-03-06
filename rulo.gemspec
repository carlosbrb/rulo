lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rulo/version"

Gem::Specification.new do |spec|
  spec.name          = "rulo"
  spec.version       = Rulo::VERSION
  spec.authors       = ["Carlos Barbiero"]
  spec.email         = ["me@carlosb.dev"]

  spec.summary       = %q{Another ruby web framework.}
  spec.homepage      = "https://github.com/carlosbrb/rulo"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/carlosbrb/rulo"
  spec.metadata["changelog_uri"] = "https://github.com/carlosbrb/rulo/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_runtime_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "rack"
  spec.add_development_dependency "rack-test"
end
