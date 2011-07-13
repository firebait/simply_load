# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "simply_load/version"

Gem::Specification.new do |s|
  s.name        = "simply_load"
  s.version     = SimplyLoad::VERSION
  s.authors     = ["Firebait"]
  s.email       = ["marcotapiag@gmail.com"]
  s.homepage    = "http://firebait.com"
  s.summary     = %q{simply_load adds a view helper method that simplyfies the loading of content via ajax. Very useful when you need to create a complex view with multiple instances of objects and models.}
  s.description = %q{}

  s.rubyforge_project = "simply_load"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency('jquery-rails')
end
