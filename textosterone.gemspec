# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'textosterone/version'

Gem::Specification.new do |spec|
  spec.name          = "textosterone"
  spec.version       = Textosterone::VERSION
  spec.authors       = ["David Hahn"]
  spec.email         = ["davidmichaelhahn@gmail.com"]
  spec.description   = %q{ One stop shop for sending sms via email. }
  spec.summary   = %q{ Gem that makes sending a text message via email super simple }
  spec.homepage      = "https://github.com/dhahn/textosterone"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency('pony')
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
