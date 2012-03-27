# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "editor/version"

Gem::Specification.new do |s|
  s.name        = "editor"
  s.version     = Editor::VERSION
  s.authors     = ["Onur Uyar"]
  s.email       = ["fluxproject@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Editor for Active Admin}
  s.description = %q{wyswyg and code editor for active admin}

  s.rubyforge_project = "editor"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
  s.add_runtime_dependency "tinymce-rails"
end
