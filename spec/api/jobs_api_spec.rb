=begin
Titan API

The ultimate, language agnostic, container based job processing framework.

OpenAPI spec version: 0.2.17

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'spec_helper'
require 'json'

# Unit tests for IronTitan::JobsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'JobsApi' do
  before do
    # run before each test
    @instance = IronTitan::JobsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of JobsApi' do
    it 'should create an instact of JobsApi' do
      @instance.should be_a(IronTitan::JobsApi)
    end
  end

  # unit tests for job_id_cancel_post
  # Cancel a job.
  # Cancels a job in delayed, queued or running status. The worker may continue to run a running job. reason is set to `client_request`.
  # @param id Job id
  # @param details Human-readable detailed message explaining cancellation reason.
  # @param [Hash] opts the optional parameters
  # @return [JobWrapper]
  describe 'job_id_cancel_post test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for job_id_delete
  # Delete the job.
  # Delete only succeeds if job status is one of `succeeded\n| failed | cancelled`. Cancel a job if it is another state and needs to\nbe deleted.  All information about the job, including the log, is\nirretrievably lost when this is invoked.
  # @param id Job id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'job_id_delete test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for job_id_fail_post
  # Mark job as failed.
  # Job is marked as failed if it was in a valid state. Job&#39;s `completed_at` time is initialized.
  # @param id Job id
  # @param reason Reason for job failure.
  # @param details Details of job failure.
  # @param log Output log for the job. Content-Type must be \&quot;text/plain; charset=utf-8\&quot;.
  # @param [Hash] opts the optional parameters
  # @return [JobWrapper]
  describe 'job_id_fail_post test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for job_id_get
  # Gets job by id
  # Gets a job by id.
  # @param id Job id
  # @param [Hash] opts the optional parameters
  # @return [JobWrapper]
  describe 'job_id_get test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for job_id_log_get
  # Get the log of a completed job.
  # Retrieves the log from log storage.
  # @param id Job id
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'job_id_log_get test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for job_id_patch
  # Update a job
  # Typically used to update status on error/completion. TODO: only allow &#39;status&#39; field.
  # @param id Job id
  # @param body Job data to post
  # @param [Hash] opts the optional parameters
  # @return [JobWrapper]
  describe 'job_id_patch test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for job_id_retry_post
  # Retry a job.
  # The /retry endpoint can be used to force a retry of jobs with status succeeded or cancelled. It can also be used to retry jobs that in the failed state, but whose max_retries field is 0. The retried job will continue to have max_retries = 0.
  # @param id Job id
  # @param [Hash] opts the optional parameters
  # @return [JobWrapper]
  describe 'job_id_retry_post test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for job_id_success_post
  # Mark job as succeeded.
  # Job status is changed to succeeded if it was in a valid state before. Job&#39;s `completed_at` time is initialized.
  # @param id Job id
  # @param log Output log for the job. Content-Type must be \&quot;text/plain; charset=utf-8\&quot;.
  # @param [Hash] opts the optional parameters
  # @return [JobWrapper]
  describe 'job_id_success_post test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for job_id_touch_post
  # Extend job timeout.
  # Consumers can sometimes take a while to run the task after accepting it.  An example is when the runner does not have the docker image locally, it can spend a significant time downloading the image.\nIf the timeout is small, the job may never get to run, or run but not be accepted by Titan. Consumers can touch the job before it times out. Titan will reset the timeout, giving the consumer another timeout seconds to run the job.\nTouch is only valid while the job is in a running state. If touch fails, the runner may stop running the job.
  # @param id Job id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'job_id_touch_post test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for jobs_consume_get
  # Get next job.
  # Gets the next job in the queue, ready for processing. Titan may return &lt;=n jobs. Consumers should start processing jobs in order. Each returned job is set to `status` \&quot;running\&quot; and `started_at` is set to the current time. No other consumer can retrieve this job.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :n Number of jobs to return.
  # @return [JobsWrapper]
  describe 'jobs_consume_get test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for jobs_get
  # Peek at list of jobs.
  # Get a list of active jobs. This endpoint can be used to observe the state of jobs in Titan. To run a job, use /jobs/consume. TODO: Needs pagination support.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :n Number of jobs to return. Titan may return &lt;=n jobs. Titan does not make any guarantees about job ordering, but jobs will not be repeated. To make sure you get unique jobs, use the cursor effectively. TODO: We don&#39;t actually support pagination.
  # @return [JobsWrapper]
  describe 'jobs_get test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for jobs_post
  # Enqueue Job
  # Enqueues job(s). If any of the jobs is invalid, none of the jobs are enqueued.
  # @param body Array of jobs to post.
  # @param [Hash] opts the optional parameters
  # @return [JobsWrapper]
  describe 'jobs_post test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

end
