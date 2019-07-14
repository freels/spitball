# -*- encoding: utf-8 -*-
require File.expand_path("../lib/spitball/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "spitball-server"
  s.version     = Spitball::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Matt Freels", "Brandon Mitchell", "Joshua Hull"]
  s.email       = "freels@twitter.com"
  s.homepage    = ""
  s.summary     = %q{Use bundler to generate gem tarball packages -- server!}
  s.description = %q{Use bundler to generate gem tarball packages - server!}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = ['spitball-server', 'spitball-cache-cleanup']
  s.require_paths = ["lib"]

  s.add_dependency 'json'
  s.add_dependency 'bundler'
  s.add_dependency 'puma'
  s.add_dependency 'sem_ver'
  s.add_dependency 'sinatra', '~> 1.4'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'diff-lcs'
  s.add_development_dependency 'rr'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'phocus'
end
