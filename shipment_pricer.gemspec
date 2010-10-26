# -*- encoding: utf-8 -*-
require File.expand_path("../lib/shipment_pricer/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "shipment_pricer"
  s.version     = ShipmentPricer::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Cédric Darricau"]
  s.email       = ["info@avantagegraphique.com"]
  s.homepage    = "http://rubygems.org/gems/shipment_pricer"
  s.summary     = "TODO: Write a gem summary"
  s.description = "TODO: Write a gem description"

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "shipment_pricer"

  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_dependency "rails", ">= 2.3.8"
  s.add_development_dependency "rspec", "~> 2.0.0.beta.22"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
