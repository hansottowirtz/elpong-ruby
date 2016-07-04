# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'httpong/version'

Gem::Specification.new do |spec|
  spec.name          = 'httpong'
  spec.version       = HTTPong::VERSION
  spec.authors       = ['Hans Otto Wirtz']
  spec.email         = ['hansottowirtz@gmail.com']

  spec.summary       = 'HTTPong for Ruby'
  spec.homepage      = 'https://github.com/hansottowirtz/httpong-ruby'
  spec.license       = 'MIT'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.4.0'
end
