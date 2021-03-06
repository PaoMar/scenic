# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'scenic/version'

Gem::Specification.new do |spec|
  spec.name          = 'scenic'
  spec.version       = Scenic::VERSION
  spec.authors       = ['Derek Prior', 'Caleb Thompson']
  spec.email         = ['derekprior@gmail.com', 'caleb@calebthompson.io']
  spec.summary       = %q{Support for database views in Rails migrations}
  spec.description   = <<-DESCRIPTION
    Adds methods to ActiveRecord::Migration to create and manage database views
    in Rails
  DESCRIPTION
  spec.homepage      = 'https://github.com/thoughtbot/scenic'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '>= 1.5'
  spec.add_development_dependency 'database_cleaner'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'pg'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'ammeter'

  spec.add_dependency 'activerecord', '>= 4.0.0'
  spec.add_dependency 'railties', '>= 4.0.0'

  spec.required_ruby_version = '~> 2.0'
end
