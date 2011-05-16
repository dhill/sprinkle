# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sprinkle/version"

Gem::Specification.new do |s|
  s.name        = "sprinkle"
  s.version     = Sprinkle::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Marcus Crafter", "Dave Hill"]
  s.email       = ["crafter@redartisan.com", "dhill@digitalbrook.com"]
  s.homepage    = "http://github.com/dhill/sprinkle"
  s.summary     = %q{Ruby DSL-based software provisioning tool}
  s.description = %q{Ruby DSL-based software provisioning tool}

  s.rubyforge_project = "sprinkle"

	s.add_development_dependency "rspec", ">= 1.2.9"
	s.add_dependency('activesupport', '>= 2.0.2')
	s.add_dependency('highline', '>= 1.4.0')
	s.add_dependency('capistrano', '>= 2.5.5')

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
