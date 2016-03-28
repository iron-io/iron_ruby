=begin
Titan API

The ultimate, language agnostic, container based job processing framework.

OpenAPI spec version: 0.1.1

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

# Common files
require 'iron_titan/api_client'
require 'iron_titan/api_error'
require 'iron_titan/version'
require 'iron_titan/configuration'

# Models
require 'iron_titan/models/error'
require 'iron_titan/models/error_body'
require 'iron_titan/models/image'
require 'iron_titan/models/image_wrapper'
require 'iron_titan/models/images_wrapper'
require 'iron_titan/models/job'
require 'iron_titan/models/job_wrapper'
require 'iron_titan/models/jobs_wrapper'
require 'iron_titan/models/log'
require 'iron_titan/models/new_job'
require 'iron_titan/models/new_jobs_wrapper'

# APIs
require 'iron_titan/api/core_api'
require 'iron_titan/api/images_api'
require 'iron_titan/api/jobs_api'

module IronTitan
  class << self
    # Customize default settings for the SDK using block.
    #   IronTitan.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
