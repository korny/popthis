require 'rubygems'
require 'rake'
require 'rake/testtask'
require 'rubygems/package_task'

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

spec = Gem::Specification.new do |s|
  s.name        = "popthis"
  s.version     = "0.4"
  s.summary     = "Run a pop server serving up the current dir."
  s.description = "Run a pop server serving up the current dir."

  s.files        = FileList['[A-Z]*', 'lib/**/*.rb', 'test/**/*.rb', 'rails/*']
  s.require_path = 'lib'
  s.test_files   = Dir[*['test/**/*_test.rb']]
  s.bindir       = 'bin'
  s.executables       = FileList["bin/*"].map { |f| File.basename(f) }

  s.has_rdoc         = true
  s.extra_rdoc_files = ["README.markdown"]
  s.rdoc_options = ['--line-numbers', '--inline-source', "--main", "README.textile"]

  s.authors = ["Tom Lea"]
  s.email   = %q{commit@tomlea.co.uk}

  s.add_dependency 'gserver'
  s.platform = Gem::Platform::RUBY
end

Gem::PackageTask.new spec do |pkg|
  pkg.need_tar = true
  pkg.need_zip = true
end

desc "Clean files generated by rake tasks"
task :clobber => [:clobber_package]

desc "Generate a gemspec file"
task :gemspec do
  File.open("#{spec.name}.gemspec", 'w') do |f|
    f.write spec.to_ruby
  end
end
