# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rman/version'

Gem::Specification.new do |spec|
  spec.name          = "rman"
  spec.version       = Rman::VERSION
  spec.authors       = ["ravelll"]
  spec.email         = ["menchikats@gmail.com"]

  spec.summary       = "See a man page randomly."
  spec.description   = "Command as 'man' with randomness."
  spec.homepage      = "https://github.com/ravelll/rman"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "thor", "~> 0.19.1"
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
