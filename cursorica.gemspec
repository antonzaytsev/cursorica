$:.push File.expand_path("../lib", __FILE__)
require "cursorica/version"

Gem::Specification.new do |spec|
  spec.name        = 'cursorica'
  spec.version     = Cursorica::VERSION
  spec.authors     = ['Anton Zaytsev']
  spec.email       = ['me@antonzaytsev.com']
  spec.homepage    = ''
  spec.summary     = ''
  spec.description = ''
  spec.license       = "MIT"

  spec.files         = ''
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_dependency 'activesupport', '>= 4.1.0'
  spec.add_dependency 'activerecord'

  spec.add_development_dependency "bundler", ">= 1.12"
  spec.add_development_dependency "rake", ">= 10.0"
end
