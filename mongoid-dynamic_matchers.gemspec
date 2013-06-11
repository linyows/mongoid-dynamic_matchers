# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mongoid/dynamic_matchers/version'

Gem::Specification.new do |spec|
  spec.name          = 'mongoid-dynamic_matchers'
  spec.version       = Mongoid::DynamicMatchers::VERSION
  spec.authors       = ['linyows']
  spec.email         = ['linyows@gmail.com']
  spec.description   = %q{Support `find_by_xxx_and_yyy` like activerecord to mongoid.}
  spec.summary       = %q{This is a mongoid extension.}
  spec.homepage      = 'https://github.com/linyows/mongoid-dynamic_matchers'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'mongoid', '>= 3.1'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'coveralls'
end
