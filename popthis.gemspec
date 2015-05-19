# -*- encoding: utf-8 -*-
# stub: popthis 0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "popthis"
  s.version = "0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Tom Lea"]
  s.date = "2015-05-19"
  s.description = "Run a pop server serving up the current dir."
  s.email = "commit@tomlea.co.uk"
  s.executables = ["popthis"]
  s.extra_rdoc_files = ["README.markdown"]
  s.files = ["Gemfile", "Gemfile.lock", "README.markdown", "Rakefile", "bin", "bin/popthis", "lib", "lib/pop_this.rb", "popthis.gemspec"]
  s.rdoc_options = ["--line-numbers", "--inline-source", "--main", "README.textile"]
  s.rubygems_version = "2.4.6"
  s.summary = "Run a pop server serving up the current dir."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<gserver>, [">= 0"])
    else
      s.add_dependency(%q<gserver>, [">= 0"])
    end
  else
    s.add_dependency(%q<gserver>, [">= 0"])
  end
end
