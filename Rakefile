# encoding: utf-8

require 'rubygems'
require 'bundler'
require './lib/ebstools/version'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://guides.rubygems.org/specification-reference/ for more options
  gem.name = "ebs_tools"
  gem.homepage = "http://github.com/jakshi/ebs_tools"
  gem.license = "Apache License, Version 2.0"
  gem.summary = %Q{Simple tools for doing AWS EBS snapshots and also copy and clean them
up}
  gem.description = %Q{Simple tools for doing AWS EBS snapshots and also copy and clean them
up}
  gem.email = "gshaud@gmail.com"
  gem.authors = ["Kostiantyn Lysenko"]
  gem.executables = ['ebs_tools']
  gem.version = EBSTools::VERSION
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

desc "Code coverage detail"
task :simplecov do
  ENV['COVERAGE'] = "true"
  Rake::Task['test'].execute
end

task :default => :test

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "ebs_tools #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
