# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'Accountr/version'

Gem::Specification.new do |spec|
  spec.name          = 'MC-Accountr'
  spec.version       = Accountr::VERSION
  spec.authors       = ['LambdaSix']
  spec.email         = ['alexander.somerville.cox@gmail.com']
  spec.summary       = 'Client to use Minecraft Profile API'
  spec.description   = 'Provides access for the minecraft profile API.'
  spec.homepage      = "https://github.com/LambdaSix/Accountr"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rest_client', '~> 1.7', '>= 1.7.3'
end
