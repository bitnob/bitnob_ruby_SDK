# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bitnob/version'

Gem::Specification.new do |spec|
  spec.name          = 'bitnob'
  spec.version       = Bitnob::VERSION
  spec.authors       = ['Bitnob', 'Nonso Amadi']
  spec.email         = ['nonso@bitnob.com']

  spec.summary       = 'Bitnob gem for Ruby/Rails'
  spec.description   = 'Client Library Gem for bitnob.co'
  spec.homepage      = 'https://github.com/bitnob/bitnob_ruby_SDK'
  spec.license       = 'BSD'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.extra_rdoc_files = ['README.md']

  # Dev dependencies
  spec.add_development_dependency 'bundler', '~> 2.2.27'
  spec.add_development_dependency 'rake', '~> 13.0.1'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 1.20.0'
  spec.add_development_dependency 'rubocop-performance', '~> 1.11.5'
  spec.add_development_dependency 'rubocop-rspec', '~> 2.4.0'

  # Dependencies
  spec.required_ruby_version = '>= 2.5.0'
end