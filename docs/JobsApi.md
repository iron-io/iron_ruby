# IronTitan::JobsApi

All URIs are relative to *https://localhost:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**job_id_cancel_post**](JobsApi.md#job_id_cancel_post) | **POST** /job/{id}/cancel | Cancel a job.
[**job_id_delete**](JobsApi.md#job_id_delete) | **DELETE** /job/{id} | Delete the job.
[**job_id_fail_post**](JobsApi.md#job_id_fail_post) | **POST** /job/{id}/fail | Mark job as failed.
[**job_id_get**](JobsApi.md#job_id_get) | **GET** /job/{id} | Gets job by id
[**job_id_log_get**](JobsApi.md#job_id_log_get) | **GET** /job/{id}/log | Get the log of a completed job.
[**job_id_retry_post**](JobsApi.md#job_id_retry_post) | **POST** /job/{id}/retry | Retry a job.
[**job_id_success_post**](JobsApi.md#job_id_success_post) | **POST** /job/{id}/success | Mark job as succeeded.
[**job_id_touch_post**](JobsApi.md#job_id_touch_post) | **POST** /job/{id}/touch | Extend job timeout.
[**jobs_consume_get**](JobsApi.md#jobs_consume_get) | **GET** /jobs/consume | Get next job.
[**jobs_get**](JobsApi.md#jobs_get) | **GET** /jobs | Peek at list of jobs.
[**jobs_post**](JobsApi.md#jobs_post) | **POST** /jobs | Enqueue Job


# **job_id_cancel_post**
> JobWrapper job_id_cancel_post(id, details)

Cancel a job.

Cancels a job in delayed, queued or running status. The worker may continue to run a running job. reason is set to `client_request`.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::JobsApi.new

id = "id_example" # String | Job id

details = "details_example" # String | Human-readable detailed message explaining cancellation reason.


begin
  #Cancel a job.
  result = api_instance.job_id_cancel_post(id, details)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling JobsApi->job_id_cancel_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Job id | 
 **details** | **String**| Human-readable detailed message explaining cancellation reason. | 

### Return type

[**JobWrapper**](JobWrapper.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **job_id_delete**
> job_id_delete(id)

Delete the job.

Delete only succeeds if job status is one of `succeeded\n| failed | cancelled`. Cancel a job if it is another state and needs to\nbe deleted.  All information about the job, including the log, is\nirretrievably lost when this is invoked.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::JobsApi.new

id = "id_example" # String | Job id


begin
  #Delete the job.
  api_instance.job_id_delete(id)
rescue IronTitan::ApiError => e
  puts "Exception when calling JobsApi->job_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Job id | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **job_id_fail_post**
> JobWrapper job_id_fail_post(id, reason, details, log)

Mark job as failed.

Job is marked as failed if it was in a valid state. Job's `completed_at` time is initialized.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::JobsApi.new

id = "id_example" # String | Job id

reason = "reason_example" # String | Reason for job failure.

details = "details_example" # String | Details of job failure.

log = File.new("/path/to/file.txt") # File | Output log for the job. Content-Type must be \"text/plain; charset=utf-8\".


begin
  #Mark job as failed.
  result = api_instance.job_id_fail_post(id, reason, details, log)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling JobsApi->job_id_fail_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Job id | 
 **reason** | **String**| Reason for job failure. | 
 **details** | **String**| Details of job failure. | 
 **log** | **File**| Output log for the job. Content-Type must be \&quot;text/plain; charset=utf-8\&quot;. | 

### Return type

[**JobWrapper**](JobWrapper.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **job_id_get**
> JobWrapper job_id_get(id)

Gets job by id

Gets a job by id.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::JobsApi.new

id = "id_example" # String | Job id


begin
  #Gets job by id
  result = api_instance.job_id_get(id)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling JobsApi->job_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Job id | 

### Return type

[**JobWrapper**](JobWrapper.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **job_id_log_get**
> String job_id_log_get(id)

Get the log of a completed job.

Retrieves the log from log storage.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::JobsApi.new

id = "id_example" # String | Job id


begin
  #Get the log of a completed job.
  result = api_instance.job_id_log_get(id)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling JobsApi->job_id_log_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Job id | 

### Return type

**String**

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: text/plain



# **job_id_retry_post**
> JobWrapper job_id_retry_post(id)

Retry a job.

The /retry endpoint can be used to force a retry of jobs with status succeeded or cancelled. It can also be used to retry jobs that in the failed state, but whose max_retries field is 0. The retried job will continue to have max_retries = 0.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::JobsApi.new

id = "id_example" # String | Job id


begin
  #Retry a job.
  result = api_instance.job_id_retry_post(id)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling JobsApi->job_id_retry_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Job id | 

### Return type

[**JobWrapper**](JobWrapper.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **job_id_success_post**
> JobWrapper job_id_success_post(id, log)

Mark job as succeeded.

Job status is changed to succeeded if it was in a valid state before. Job's `completed_at` time is initialized.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::JobsApi.new

id = "id_example" # String | Job id

log = File.new("/path/to/file.txt") # File | Output log for the job. Content-Type must be \"text/plain; charset=utf-8\".


begin
  #Mark job as succeeded.
  result = api_instance.job_id_success_post(id, log)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling JobsApi->job_id_success_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Job id | 
 **log** | **File**| Output log for the job. Content-Type must be \&quot;text/plain; charset=utf-8\&quot;. | 

### Return type

[**JobWrapper**](JobWrapper.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **job_id_touch_post**
> job_id_touch_post(id)

Extend job timeout.

Consumers can sometimes take a while to run the task after accepting it.  An example is when the runner does not have the docker image locally, it can spend a significant time downloading the image.\nIf the timeout is small, the job may never get to run, or run but not be accepted by Titan. Consumers can touch the job before it times out. Titan will reset the timeout, giving the consumer another timeout seconds to run the job.\nTouch is only valid while the job is in a running state. If touch fails, the runner may stop running the job.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::JobsApi.new

id = "id_example" # String | Job id


begin
  #Extend job timeout.
  api_instance.job_id_touch_post(id)
rescue IronTitan::ApiError => e
  puts "Exception when calling JobsApi->job_id_touch_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Job id | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **jobs_consume_get**
> JobsWrapper jobs_consume_get(opts)

Get next job.

Gets the next job in the queue, ready for processing. Titan may return <=n jobs. Consumers should start processing jobs in order. Each returned job is set to `status` \"running\" and `started_at` is set to the current time. No other consumer can retrieve this job.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::JobsApi.new

opts = { 
  n: 1 # Integer | Number of jobs to return.
}

begin
  #Get next job.
  result = api_instance.jobs_consume_get(opts)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling JobsApi->jobs_consume_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **n** | **Integer**| Number of jobs to return. | [optional] [default to 1]

### Return type

[**JobsWrapper**](JobsWrapper.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **jobs_get**
> JobsWrapper jobs_get(opts)

Peek at list of jobs.

Get a list of active jobs. This endpoint can be used to observe the state of jobs in Titan. To run a job, use /jobs/consume. TODO: Needs pagination support.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::JobsApi.new

opts = { 
  n: 10 # Integer | Number of jobs to return. Titan may return <=n jobs. Titan does not make any guarantees about job ordering, but jobs will not be repeated. To make sure you get unique jobs, use the cursor effectively. TODO: We don't actually support pagination.
}

begin
  #Peek at list of jobs.
  result = api_instance.jobs_get(opts)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling JobsApi->jobs_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **n** | **Integer**| Number of jobs to return. Titan may return &lt;=n jobs. Titan does not make any guarantees about job ordering, but jobs will not be repeated. To make sure you get unique jobs, use the cursor effectively. TODO: We don&#39;t actually support pagination. | [optional] [default to 10]

### Return type

[**JobsWrapper**](JobsWrapper.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **jobs_post**
> JobsWrapper jobs_post(body)

Enqueue Job

Enqueues job(s). If any of the jobs is invalid, none of the jobs are enqueued.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::JobsApi.new

body = IronTitan::NewJobsWrapper.new # NewJobsWrapper | Array of jobs to post.


begin
  #Enqueue Job
  result = api_instance.jobs_post(body)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling JobsApi->jobs_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**NewJobsWrapper**](NewJobsWrapper.md)| Array of jobs to post. | 

### Return type

[**JobsWrapper**](JobsWrapper.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



