# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mech_js/version'

Gem::Specification.new do |spec|
  spec.name          = "mech-js"
  spec.version       = MechJS::VERSION
  spec.authors       = ["Sam Treweek"]
  spec.email         = ["info@uksa.eu"]
  spec.summary       = %q{Addon library for mechanize for Javascript.}
  spec.description   = %q{Mechanize has no support for Javascript,
                          this library allows the user to apply standard browser
                          type events, which will trigger a get request}
  spec.homepage      = "https://www.uksa.eu"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
