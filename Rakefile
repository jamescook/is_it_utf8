require 'rake/testtask'
require 'rake/extensiontask'

spec = Gem::Specification.load('is_it_utf8.gemspec')
Rake::ExtensionTask.new('is_it_utf8', spec)

Rake::TestTask.new(test: [:clean, :clobber, :compile]) do |t|
  t.description = "Run unit tests"
  t.libs << "test"
  t.test_files = FileList['test/unit/*.rb']
  t.verbose = true
end

desc "Run benchmarks"
task :benchmark do
  require_relative "./benchmark/bench"
end

task :default => ["test"]

