# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simpre/version'

Gem::Specification.new do |spec|
  spec.name          = "simpre"
  spec.version       = Simpre::VERSION
  spec.authors       = ["Jamie Dyer"]
  spec.email         = ["jamie@kernowsoul.com"]
  spec.summary       = "A super simple presenter implementation for Rails apps"
  spec.description   = "A super simple presenter implementation for Rails apps"
  spec.homepage      = "https://github.com/kernow/simpre"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
