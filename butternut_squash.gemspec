# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'butternut_squash/version'

Gem::Specification.new do |spec|
  spec.name          = "butternut_squash"
  spec.version       = ButternutSquash::VERSION
  spec.authors       = ["James Ruston", "Dan Ellis"]
  spec.email         = ["jruston90@gmail.com", "danny_ellis90@hotmail.com"]
  spec.summary       = %q{Excellent advice}
  spec.description   = %q{For developer who care}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "httparty"
  spec.add_runtime_dependency "ruby_cowsay"
end
