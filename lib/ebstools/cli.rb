require 'rubygems'
require 'commander'
require 'settingslogic'

require_relative 'version'
require_relative 'snapshot'

class Settings < Settingslogic
  config_file = ENV['EBS_TOOLS_CONFIG'] || '/etc/ebs_tools/config.yml'

  unless ::File.exists?(::File.expand_path(config_file))
    puts 'ebs_tools config file doesn\'t exist'
    exit 1
  end
  
  source ::File.expand_path(config_file)
  load!
end

class EBSTools
  include Commander::Methods

  def run
    program :version, EBSTools::VERSION
    program :description, 'Simple CLI tool for ebs snapshotting/copying/clean-up'

    command :snapshot do |c|
      c.syntax = 'ebs_tools snapshot [options]'
      c.summary = 'Do EBS snapshot of specified EBS volume'
      c.description = 'Do EBS snapshot of specified EBS volume'
      c.example 'description', 'ebs_tools snapshot'
#      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
        ebs = EBSTools::Commands::Snapshot.new('idxxxxxx')
        ebs.create
      end
    end

    command :copy do |c|
      c.syntax = 'ebs_tools copy [options]'
      c.summary = 'Copy EBS snapshot to specified AWS regions'
      c.description = 'Copy EBS snapshot to specified AWS regions'
      c.example 'description', 'ebs_tools copy'
#      c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
      # Do something or c.when_called Ebs_tools::Commands::Copy,
      end
    end

    command :cleanup do |c|
      c.syntax = 'ebs_tools cleanup [options]'
      c.summary = 'Clean up old EBS snapshots from specified AWS regions'
      c.description = 'Clean up old EBS snapshots from specified AWS regions'
      c.example 'description', 'ebs_tools cleanup'
 #     c.option '--some-switch', 'Some switch that does something'
      c.action do |args, options|
      # Do something or c.when_called Ebs_tools::Commands::Cleanup
      end
    end
    run!
  end
end
