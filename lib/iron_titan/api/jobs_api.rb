=begin
Titan API

The ultimate, language agnostic, container based job processing framework.

OpenAPI spec version: 0.2.17

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require "uri"

module IronTitan
  class JobsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Cancel a job.
    # Cancels a job in delayed, queued or running status. The worker may continue to run a running job. reason is set to `client_request`.
    # @param id Job id
    # @param details Human-readable detailed message explaining cancellation reason.
    # @param [Hash] opts the optional parameters
    # @return [JobWrapper]
    def job_id_cancel_post(id, details, opts = {})
      data, status_code, headers = job_id_cancel_post_with_http_info(id, details, opts)
      return data
    end

    # Cancel a job.
    # Cancels a job in delayed, queued or running status. The worker may continue to run a running job. reason is set to `client_request`.
    # @param id Job id
    # @param details Human-readable detailed message explaining cancellation reason.
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobWrapper, Fixnum, Hash)>] JobWrapper data, response status code and response headers
    def job_id_cancel_post_with_http_info(id, details, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: JobsApi#job_id_cancel_post ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling job_id_cancel_post" if id.nil?
      
      # verify the required parameter 'details' is set
      fail "Missing the required parameter 'details' when calling job_id_cancel_post" if details.nil?
      
      # resource path
      local_var_path = "/job/{id}/cancel".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(details)
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'JobWrapper')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#job_id_cancel_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete the job.
    # Delete only succeeds if job status is one of `succeeded\n| failed | cancelled`. Cancel a job if it is another state and needs to\nbe deleted.  All information about the job, including the log, is\nirretrievably lost when this is invoked.
    # @param id Job id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def job_id_delete(id, opts = {})
      job_id_delete_with_http_info(id, opts)
      return nil
    end

    # Delete the job.
    # Delete only succeeds if job status is one of `succeeded\n| failed | cancelled`. Cancel a job if it is another state and needs to\nbe deleted.  All information about the job, including the log, is\nirretrievably lost when this is invoked.
    # @param id Job id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def job_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: JobsApi#job_id_delete ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling job_id_delete" if id.nil?
      
      # resource path
      local_var_path = "/job/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#job_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Mark job as failed.
    # Job is marked as failed if it was in a valid state. Job's `completed_at` time is initialized.
    # @param id Job id
    # @param reason Reason for job failure.
    # @param details Details of job failure.
    # @param log Output log for the job. Content-Type must be \&quot;text/plain; charset=utf-8\&quot;.
    # @param [Hash] opts the optional parameters
    # @return [JobWrapper]
    def job_id_fail_post(id, reason, details, log, opts = {})
      data, status_code, headers = job_id_fail_post_with_http_info(id, reason, details, log, opts)
      return data
    end

    # Mark job as failed.
    # Job is marked as failed if it was in a valid state. Job&#39;s `completed_at` time is initialized.
    # @param id Job id
    # @param reason Reason for job failure.
    # @param details Details of job failure.
    # @param log Output log for the job. Content-Type must be \&quot;text/plain; charset=utf-8\&quot;.
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobWrapper, Fixnum, Hash)>] JobWrapper data, response status code and response headers
    def job_id_fail_post_with_http_info(id, reason, details, log, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: JobsApi#job_id_fail_post ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling job_id_fail_post" if id.nil?
      
      # verify the required parameter 'reason' is set
      fail "Missing the required parameter 'reason' when calling job_id_fail_post" if reason.nil?
      
      # verify the required parameter 'details' is set
      fail "Missing the required parameter 'details' when calling job_id_fail_post" if details.nil?
      
      # verify the required parameter 'log' is set
      fail "Missing the required parameter 'log' when calling job_id_fail_post" if log.nil?
      
      # resource path
      local_var_path = "/job/{id}/fail".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['multipart/form-data']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}
      form_params["reason"] = reason
      form_params["details"] = details
      form_params["log"] = log

      # http body (model)
      post_body = nil
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'JobWrapper')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#job_id_fail_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets job by id
    # Gets a job by id.
    # @param id Job id
    # @param [Hash] opts the optional parameters
    # @return [JobWrapper]
    def job_id_get(id, opts = {})
      data, status_code, headers = job_id_get_with_http_info(id, opts)
      return data
    end

    # Gets job by id
    # Gets a job by id.
    # @param id Job id
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobWrapper, Fixnum, Hash)>] JobWrapper data, response status code and response headers
    def job_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: JobsApi#job_id_get ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling job_id_get" if id.nil?
      
      # resource path
      local_var_path = "/job/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'JobWrapper')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#job_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the log of a completed job.
    # Retrieves the log from log storage.
    # @param id Job id
    # @param [Hash] opts the optional parameters
    # @return [String]
    def job_id_log_get(id, opts = {})
      data, status_code, headers = job_id_log_get_with_http_info(id, opts)
      return data
    end

    # Get the log of a completed job.
    # Retrieves the log from log storage.
    # @param id Job id
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def job_id_log_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: JobsApi#job_id_log_get ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling job_id_log_get" if id.nil?
      
      # resource path
      local_var_path = "/job/{id}/log".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['text/plain']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#job_id_log_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a job
    # Typically used to update status on error/completion. TODO: only allow 'status' field.
    # @param id Job id
    # @param body Job data to post
    # @param [Hash] opts the optional parameters
    # @return [JobWrapper]
    def job_id_patch(id, body, opts = {})
      data, status_code, headers = job_id_patch_with_http_info(id, body, opts)
      return data
    end

    # Update a job
    # Typically used to update status on error/completion. TODO: only allow &#39;status&#39; field.
    # @param id Job id
    # @param body Job data to post
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobWrapper, Fixnum, Hash)>] JobWrapper data, response status code and response headers
    def job_id_patch_with_http_info(id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: JobsApi#job_id_patch ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling job_id_patch" if id.nil?
      
      # verify the required parameter 'body' is set
      fail "Missing the required parameter 'body' when calling job_id_patch" if body.nil?
      
      # resource path
      local_var_path = "/job/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'JobWrapper')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#job_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retry a job.
    # The /retry endpoint can be used to force a retry of jobs with status succeeded or cancelled. It can also be used to retry jobs that in the failed state, but whose max_retries field is 0. The retried job will continue to have max_retries = 0.
    # @param id Job id
    # @param [Hash] opts the optional parameters
    # @return [JobWrapper]
    def job_id_retry_post(id, opts = {})
      data, status_code, headers = job_id_retry_post_with_http_info(id, opts)
      return data
    end

    # Retry a job.
    # The /retry endpoint can be used to force a retry of jobs with status succeeded or cancelled. It can also be used to retry jobs that in the failed state, but whose max_retries field is 0. The retried job will continue to have max_retries = 0.
    # @param id Job id
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobWrapper, Fixnum, Hash)>] JobWrapper data, response status code and response headers
    def job_id_retry_post_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: JobsApi#job_id_retry_post ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling job_id_retry_post" if id.nil?
      
      # resource path
      local_var_path = "/job/{id}/retry".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'JobWrapper')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#job_id_retry_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Mark job as succeeded.
    # Job status is changed to succeeded if it was in a valid state before. Job's `completed_at` time is initialized.
    # @param id Job id
    # @param log Output log for the job. Content-Type must be \&quot;text/plain; charset=utf-8\&quot;.
    # @param [Hash] opts the optional parameters
    # @return [JobWrapper]
    def job_id_success_post(id, log, opts = {})
      data, status_code, headers = job_id_success_post_with_http_info(id, log, opts)
      return data
    end

    # Mark job as succeeded.
    # Job status is changed to succeeded if it was in a valid state before. Job&#39;s `completed_at` time is initialized.
    # @param id Job id
    # @param log Output log for the job. Content-Type must be \&quot;text/plain; charset=utf-8\&quot;.
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobWrapper, Fixnum, Hash)>] JobWrapper data, response status code and response headers
    def job_id_success_post_with_http_info(id, log, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: JobsApi#job_id_success_post ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling job_id_success_post" if id.nil?
      
      # verify the required parameter 'log' is set
      fail "Missing the required parameter 'log' when calling job_id_success_post" if log.nil?
      
      # resource path
      local_var_path = "/job/{id}/success".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['multipart/form-data']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}
      form_params["log"] = log

      # http body (model)
      post_body = nil
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'JobWrapper')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#job_id_success_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Extend job timeout.
    # Consumers can sometimes take a while to run the task after accepting it.  An example is when the runner does not have the docker image locally, it can spend a significant time downloading the image.\nIf the timeout is small, the job may never get to run, or run but not be accepted by Titan. Consumers can touch the job before it times out. Titan will reset the timeout, giving the consumer another timeout seconds to run the job.\nTouch is only valid while the job is in a running state. If touch fails, the runner may stop running the job.
    # @param id Job id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def job_id_touch_post(id, opts = {})
      job_id_touch_post_with_http_info(id, opts)
      return nil
    end

    # Extend job timeout.
    # Consumers can sometimes take a while to run the task after accepting it.  An example is when the runner does not have the docker image locally, it can spend a significant time downloading the image.\nIf the timeout is small, the job may never get to run, or run but not be accepted by Titan. Consumers can touch the job before it times out. Titan will reset the timeout, giving the consumer another timeout seconds to run the job.\nTouch is only valid while the job is in a running state. If touch fails, the runner may stop running the job.
    # @param id Job id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def job_id_touch_post_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: JobsApi#job_id_touch_post ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling job_id_touch_post" if id.nil?
      
      # resource path
      local_var_path = "/job/{id}/touch".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#job_id_touch_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get next job.
    # Gets the next job in the queue, ready for processing. Titan may return <=n jobs. Consumers should start processing jobs in order. Each returned job is set to `status` \"running\" and `started_at` is set to the current time. No other consumer can retrieve this job.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :n Number of jobs to return. (default to 1)
    # @return [JobsWrapper]
    def jobs_consume_get(opts = {})
      data, status_code, headers = jobs_consume_get_with_http_info(opts)
      return data
    end

    # Get next job.
    # Gets the next job in the queue, ready for processing. Titan may return &lt;=n jobs. Consumers should start processing jobs in order. Each returned job is set to `status` \&quot;running\&quot; and `started_at` is set to the current time. No other consumer can retrieve this job.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :n Number of jobs to return.
    # @return [Array<(JobsWrapper, Fixnum, Hash)>] JobsWrapper data, response status code and response headers
    def jobs_consume_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: JobsApi#jobs_consume_get ..."
      end
      
      # resource path
      local_var_path = "/jobs/consume".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'n'] = opts[:'n'] if opts[:'n']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'JobsWrapper')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#jobs_consume_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Peek at list of jobs.
    # Get a list of active jobs. This endpoint can be used to observe the state of jobs in Titan. To run a job, use /jobs/consume. TODO: Needs pagination support.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :n Number of jobs to return. Titan may return &lt;=n jobs. Titan does not make any guarantees about job ordering, but jobs will not be repeated. To make sure you get unique jobs, use the cursor effectively. TODO: We don&#39;t actually support pagination. (default to 10)
    # @return [JobsWrapper]
    def jobs_get(opts = {})
      data, status_code, headers = jobs_get_with_http_info(opts)
      return data
    end

    # Peek at list of jobs.
    # Get a list of active jobs. This endpoint can be used to observe the state of jobs in Titan. To run a job, use /jobs/consume. TODO: Needs pagination support.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :n Number of jobs to return. Titan may return &lt;=n jobs. Titan does not make any guarantees about job ordering, but jobs will not be repeated. To make sure you get unique jobs, use the cursor effectively. TODO: We don&#39;t actually support pagination.
    # @return [Array<(JobsWrapper, Fixnum, Hash)>] JobsWrapper data, response status code and response headers
    def jobs_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: JobsApi#jobs_get ..."
      end
      
      # resource path
      local_var_path = "/jobs".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'n'] = opts[:'n'] if opts[:'n']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'JobsWrapper')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#jobs_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Enqueue Job
    # Enqueues job(s). If any of the jobs is invalid, none of the jobs are enqueued.
    # @param body Array of jobs to post.
    # @param [Hash] opts the optional parameters
    # @return [JobsWrapper]
    def jobs_post(body, opts = {})
      data, status_code, headers = jobs_post_with_http_info(body, opts)
      return data
    end

    # Enqueue Job
    # Enqueues job(s). If any of the jobs is invalid, none of the jobs are enqueued.
    # @param body Array of jobs to post.
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobsWrapper, Fixnum, Hash)>] JobsWrapper data, response status code and response headers
    def jobs_post_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: JobsApi#jobs_post ..."
      end
      
      # verify the required parameter 'body' is set
      fail "Missing the required parameter 'body' when calling jobs_post" if body.nil?
      
      # resource path
      local_var_path = "/jobs".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'JobsWrapper')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#jobs_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
