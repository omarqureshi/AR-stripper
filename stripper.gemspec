# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "stripper/version"

Gem::Specification.new do |s|
  s.name        = "stripper"
  s.version     = Stripper::VERSION
  s.authors     = ["Omar Qureshi"]
  s.email       = ["omar@omarqureshi.net"]
  s.homepage    = "http://omarqureshi.net"
  s.summary     = %q{Strips out spaces before saving using ActiveRecord}
  s.description = %q{Strips out spaces before saving using ActiveRecord}

  s.rubyforge_project = "stripper"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
