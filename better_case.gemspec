# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'better_case'

Gem::Specification.new do |spec|
  spec.name          = "better_case"
  spec.version       = BetterCase::VERSION
  spec.authors       = ["Eloy Espinaco"]
  spec.email         = ["eloyesp@gmail.com"]
  spec.summary       = %q{Make case usefull adding good stuff to ===.}
  spec.description   = %q{Add cool behavior on case equality for core classes.}
  spec.homepage      = ""
  spec.license       = "GPLv3"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '~> 2.0'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "cutest"
end
