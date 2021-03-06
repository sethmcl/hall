# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hall/version'

Gem::Specification.new do |spec|
  spec.name          = "hall"
  spec.version       = Hall::VERSION
  spec.authors       = ["Alexander Berezovsky"]
  spec.email         = ["a.b@usa.com"]
  spec.description   = %q{Client for corporate messanger Hall}
  spec.summary       = %q{Client for corporate messanger Hall.com allow to post message to the chat room}
  spec.homepage      = "https://github.com/a-b/hall"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty", "~> 0.12.0"

  spec.add_development_dependency "rake"
  spec.add_development_dependency "bundler", "~> 1.3"

  #Test stuff
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rr"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency 'rdoc', '> 2.4.2'
end
