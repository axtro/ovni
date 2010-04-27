# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'ovni/version'

Gem::Specification.new do |s|
  s.name        = "ovni"
  s.version     = OVNI::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Henning Kiel"]
  s.email       = ["henning.kiel@gmail.com"]
  s.homepage    = "http://github.com/hennk/ovni"
  s.summary     = "Simple wrapper for the Flying Saucer Java library"
  s.description = "Simple wrapper helping to use the Flying Saucer Java library to convert HTML to PDF"

  s.required_rubygems_version = ">= 1.3.5"
  s.rubyforge_project         = "ovni"

#  s.add_development_dependency "rspec"

  s.files        = %w{LICENSE} + Dir.glob("lib/**/*") + %w()
  s.require_path = 'lib'
end
