# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "ebs_tools"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kostiantyn Lysenko"]
  s.date = "2015-12-10"
  s.description = "Simple tools for doing AWS EBS snapshots and also copy and clean them\nup"
  s.email = "gshaud@gmail.com"
  s.executables = ["ebs_tools"]
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    ".document",
    "CHANGELOG.md",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE",
    "README.md",
    "Rakefile",
    "bin/ebs_tools",
    "ebs_tools.gemspec",
    "lib/ebs_tools.rb",
    "lib/ebstools/version.rb",
    "test/helper.rb",
    "test/test_ebs_tools.rb"
  ]
  s.homepage = "http://github.com/jakshi/ebs_tools"
  s.licenses = ["Apache License, Version 2.0"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "Simple tools for doing AWS EBS snapshots and also copy and clean them up"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<settingslogic>, [">= 0"])
      s.add_runtime_dependency(%q<commander>, [">= 0"])
      s.add_runtime_dependency(%q<aws-sdk>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
    else
      s.add_dependency(%q<settingslogic>, [">= 0"])
      s.add_dependency(%q<commander>, [">= 0"])
      s.add_dependency(%q<aws-sdk>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_dependency(%q<simplecov>, [">= 0"])
    end
  else
    s.add_dependency(%q<settingslogic>, [">= 0"])
    s.add_dependency(%q<commander>, [">= 0"])
    s.add_dependency(%q<aws-sdk>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
    s.add_dependency(%q<simplecov>, [">= 0"])
  end
end

