require 'rubygems'
require 'commander'

require_relative 'version.rb'

class EBSTools
  include Commander::Methods

  def run
    program :version, EBSTools::VERSION
    program :description, 'Simple CLI tool for ebs snapshotting/copying/clean-up'

    command :snapshot do |c|
      c.syntax = 'ebs_tools snapshot [options]'
      c.summary = ''
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
      # Do something or c.when_called Ebs_tools::Commands::Snapshot,
      end
    end

    command :copy do |c|
      c.syntax = 'ebs_tools copy [options]'
      c.summary = ''
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
      # Do something or c.when_called Ebs_tools::Commands::Copy,
      end
    end

    command :cleanup do |c|
      c.syntax = 'ebs_tools cleanup [options]'
      c.summary = ''
      c.description = ''
      c.example 'description', 'command example'
      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
      # Do something or c.when_called Ebs_tools::Commands::Cleanup
      end
    end
    run!
  end
end
