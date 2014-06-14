# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/icon_roulette/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-icon_roulette"
  spec.version       = Ruboty::IconRoulette::VERSION
  spec.authors       = ["Seiei Higa"]
  spec.email         = ["hanachin@gmail.com"]
  spec.summary       = %q{ruboty handler for change bot's icon at random.}
  spec.homepage      = "https://github.com/hanachin/ruboty-icon_roulette"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "atabodi"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
