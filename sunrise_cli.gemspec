lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sunrise_cli/version'

Gem::Specification.new do |spec|
  spec.name          = "sunrise_cli"
  spec.version       = SunriseCli::VERSION
  spec.authors       = ["ndorazil"]
  spec.email         = ["nathandorazil@live.com"]

  spec.summary       = %q{Get your Sunrise and Sunset times right here!}
  spec.description   = %q{Put in your latitude and longitude to find sunrise and sunset times!}
  spec.homepage      = "https://github.com/ndorazil/sunrise_cli"
  spec.license       = "MIT"
  # spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  # spec.bindir        = "exe"
  spec.executables   = ["sunrise_cli"]
  spec.require_paths = ["lib"]
  
  spec.add_dependency "http"
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
