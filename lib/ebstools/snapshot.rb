require 'aws-sdk'

class EBSTools::Commands
  class Snapshot

    attr_accessor :ebs_id

    def initialize(ebs_id, options = {})
      @ebs_id = ebs_id
    end
  
    def create
      puts "AWS_ACCESS_KEY is #{Settings.aws_access_key}"
      puts "AWS_SECRET_KEY is #{Settings.aws_secret_key}"
    end
  end
end
