=begin
Titan API

The ultimate, language agnostic, container based job processing framework.

OpenAPI spec version: 0.1.1

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'date'

module IronTitan
  class Job
    # Docker image to use for job. Default is the same as the 'image' parameter.
    attr_accessor :name

    # Docker image to use for job.
    attr_accessor :image

    # Payload for the job.  This is what you pass into each job to make it do something.
    attr_accessor :payload

    # Number of seconds to wait before starting. Default 0.
    attr_accessor :delay

    # Maximum runtime in seconds. If job runs for longer, it will be killed. Default 60 seconds.
    attr_accessor :timeout

    # Priority of the job. 3 levels from 0-2. Default 0.
    attr_accessor :priority

    # Max number of retries. A retry will be attempted if a task fails. Default 3. TODO: naming: retries or max_retries?
    attr_accessor :retries

    # Time in seconds to wait before next attempt. Default 60.
    attr_accessor :retries_delay

    # If this field is set, then this job is a retry of a previous job. retry_from_id points to the previous job.
    attr_accessor :retry_from_id

    # Unique identifier representing a specific job.
    attr_accessor :id

    # Status of job. One of: [pending, running, success, error, timeout]
    attr_accessor :status

    # Time when job was submitted.
    attr_accessor :created_at

    # Сorresponding error message, only when status=='error'.
    attr_accessor :error

    # Time when job started execution.
    attr_accessor :started_at

    # Time when job completed, whether it was successul or failed.
    attr_accessor :completed_at

    # If this field is set, then this job was retried and RetryId points to new job.
    attr_accessor :retry_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'name' => :'name',
        
        :'image' => :'image',
        
        :'payload' => :'payload',
        
        :'delay' => :'delay',
        
        :'timeout' => :'timeout',
        
        :'priority' => :'priority',
        
        :'retries' => :'retries',
        
        :'retries_delay' => :'retries_delay',
        
        :'retry_from_id' => :'retry_from_id',
        
        :'id' => :'id',
        
        :'status' => :'status',
        
        :'created_at' => :'created_at',
        
        :'error' => :'error',
        
        :'started_at' => :'started_at',
        
        :'completed_at' => :'completed_at',
        
        :'retry_id' => :'retry_id'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'image' => :'String',
        :'payload' => :'String',
        :'delay' => :'Integer',
        :'timeout' => :'Integer',
        :'priority' => :'Integer',
        :'retries' => :'Integer',
        :'retries_delay' => :'Integer',
        :'retry_from_id' => :'String',
        :'id' => :'String',
        :'status' => :'String',
        :'created_at' => :'DateTime',
        :'error' => :'String',
        :'started_at' => :'DateTime',
        :'completed_at' => :'DateTime',
        :'retry_id' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'name']
        self.name = attributes[:'name']
      end
      
      if attributes[:'image']
        self.image = attributes[:'image']
      end
      
      if attributes[:'payload']
        self.payload = attributes[:'payload']
      end
      
      if attributes[:'delay']
        self.delay = attributes[:'delay']
      end
      
      if attributes[:'timeout']
        self.timeout = attributes[:'timeout']
      end
      
      if attributes[:'priority']
        self.priority = attributes[:'priority']
      end
      
      if attributes[:'retries']
        self.retries = attributes[:'retries']
      end
      
      if attributes[:'retries_delay']
        self.retries_delay = attributes[:'retries_delay']
      end
      
      if attributes[:'retry_from_id']
        self.retry_from_id = attributes[:'retry_from_id']
      end
      
      if attributes[:'id']
        self.id = attributes[:'id']
      end
      
      if attributes[:'status']
        self.status = attributes[:'status']
      end
      
      if attributes[:'created_at']
        self.created_at = attributes[:'created_at']
      end
      
      if attributes[:'error']
        self.error = attributes[:'error']
      end
      
      if attributes[:'started_at']
        self.started_at = attributes[:'started_at']
      end
      
      if attributes[:'completed_at']
        self.completed_at = attributes[:'completed_at']
      end
      
      if attributes[:'retry_id']
        self.retry_id = attributes[:'retry_id']
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          image == o.image &&
          payload == o.payload &&
          delay == o.delay &&
          timeout == o.timeout &&
          priority == o.priority &&
          retries == o.retries &&
          retries_delay == o.retries_delay &&
          retry_from_id == o.retry_from_id &&
          id == o.id &&
          status == o.status &&
          created_at == o.created_at &&
          error == o.error &&
          started_at == o.started_at &&
          completed_at == o.completed_at &&
          retry_id == o.retry_id
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [name, image, payload, delay, timeout, priority, retries, retries_delay, retry_from_id, id, status, created_at, error, started_at, completed_at, retry_id].hash
    end

    # build the object from hash
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          else
            #TODO show warning in debug mode
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        else
          # data not found in attributes(hash), not an issue as the data can be optional
        end
      end

      self
    end

    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /^(true|t|yes|y|1)$/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        _model = IronTitan.const_get(type).new
        _model.build_from_hash(value)
      end
    end

    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_body (backward compatibility))
    def to_body
      to_hash
    end

    # return the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Method to output non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
