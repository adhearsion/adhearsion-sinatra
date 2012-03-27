# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "adhearsion/sinatra/version"

Gem::Specification.new do |s|
  s.name        = "adhearsion-sinatra"
  s.version     = AdhearsionSinatra::VERSION
  s.authors     = ["Ben Klang"]
  s.email       = ["bklang&mojolingo.com"]
  s.homepage    = ""
  s.summary     = %q{Adhearsion plugin to run a Sinatra application in-process}
  s.description = %q{This plugin for Adhearsion allows you to create a simple Sinatra application that resides within the Adhearsion process.}

  s.rubyforge_project = "adhearsion-sinatra"

  # Use the following if using Git
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_runtime_dependency %q<adhearsion>, [">= 2.0.0.rc3"]
  s.add_runtime_dependency %q<sinatra>
  s.add_runtime_dependency %q<activesupport>, [">= 3.0.10"]

  s.add_development_dependency %q<bundler>, ["~> 1.0.0"]
  s.add_development_dependency %q<rspec>, [">= 2.5.0"]
  s.add_development_dependency %q<ci_reporter>, [">= 1.6.3"]
  s.add_development_dependency %q<simplecov>, [">= 0"]
  s.add_development_dependency %q<simplecov-rcov>, [">= 0"]
  s.add_development_dependency %q<yard>, ["~> 0.6.0"]
  s.add_development_dependency %q<rake>, [">= 0"]
  s.add_development_dependency %q<mocha>, [">= 0"]
  s.add_development_dependency %q<guard-rspec>
end
