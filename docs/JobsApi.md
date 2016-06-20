# IronTitan::JobsApi

All URIs are relative to *https://localhost:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**groups_name_jobs_get**](JobsApi.md#groups_name_jobs_get) | **GET** /groups/{name}/jobs | Get job list by group name.
[**groups_name_jobs_id_cancel_post**](JobsApi.md#groups_name_jobs_id_cancel_post) | **POST** /groups/{name}/jobs/{id}/cancel | Cancel a job.
[**groups_name_jobs_id_delete**](JobsApi.md#groups_name_jobs_id_delete) | **DELETE** /groups/{name}/jobs/{id} | Delete the job.
[**groups_name_jobs_id_error_post**](JobsApi.md#groups_name_jobs_id_error_post) | **POST** /groups/{name}/jobs/{id}/error | Mark job as failed.
[**groups_name_jobs_id_get**](JobsApi.md#groups_name_jobs_id_get) | **GET** /groups/{name}/jobs/{id} | Gets job by id
[**groups_name_jobs_id_log_get**](JobsApi.md#groups_name_jobs_id_log_get) | **GET** /groups/{name}/jobs/{id}/log | Get the log of a completed job.
[**groups_name_jobs_id_log_post**](JobsApi.md#groups_name_jobs_id_log_post) | **POST** /groups/{name}/jobs/{id}/log | Send in a log for storage.
[**groups_name_jobs_id_retry_post**](JobsApi.md#groups_name_jobs_id_retry_post) | **POST** /groups/{name}/jobs/{id}/retry | Retry a job.
[**groups_name_jobs_id_start_post**](JobsApi.md#groups_name_jobs_id_start_post) | **POST** /groups/{name}/jobs/{id}/start | Mark job as started, ie: status &#x3D; &#39;running&#39;
[**groups_name_jobs_id_success_post**](JobsApi.md#groups_name_jobs_id_success_post) | **POST** /groups/{name}/jobs/{id}/success | Mark job as succeeded.
[**groups_name_jobs_id_touch_post**](JobsApi.md#groups_name_jobs_id_touch_post) | **POST** /groups/{name}/jobs/{id}/touch | Extend job timeout.
[**groups_name_jobs_post**](JobsApi.md#groups_name_jobs_post) | **POST** /groups/{name}/jobs | Enqueue Job
[**jobs_get**](JobsApi.md#jobs_get) | **GET** /jobs | Get next job.


# **groups_name_jobs_get**
> JobsWrapper groups_name_jobs_get(name, opts)

Get job list by group name.

This will list jobs for a particular group.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::JobsApi.new

name = "name_example" # String | Name of group for this set of jobs.

opts = { 
  created_after: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Will return jobs created after this time. In RFC3339 format.
  n: 56 # Integer | Number of jobs to return.
}

begin
  #Get job list by group name.
  result = api_instance.groups_name_jobs_get(name, opts)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling JobsApi->groups_name_jobs_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of group for this set of jobs. | 
 **created_after** | **DateTime**| Will return jobs created after this time. In RFC3339 format. | [optional] 
 **n** | **Integer**| Number of jobs to return. | [optional] 

### Return type

[**JobsWrapper**](JobsWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **groups_name_jobs_id_cancel_post**
> JobWrapper groups_name_jobs_id_cancel_post(name, id)

Cancel a job.

Cancels a job in delayed, queued or running status. The worker may continue to run a running job. reason is set to `client_request`. The job's completed_at field is set to the current time on the jobserver.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::JobsApi.new

name = "name_example" # String | Name of group for this set of jobs.

id = "id_example" # String | Job id


begin
  #Cancel a job.
  result = api_instance.groups_name_jobs_id_cancel_post(name, id)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling JobsApi->groups_name_jobs_id_cancel_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of group for this set of jobs. | 
 **id** | **String**| Job id | 

### Return type

[**JobWrapper**](JobWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **groups_name_jobs_id_delete**
> groups_name_jobs_id_delete(name, id)

Delete the job.

Delete only succeeds if job status is one of `succeeded | failed | cancelled`. Cancel a job if it is another state and needs to be deleted.  All information about the job, including the log, is irretrievably lost when this is invoked. 

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::JobsApi.new

name = "name_example" # String | Name of group for this set of jobs.

id = "id_example" # String | Job id


begin
  #Delete the job.
  api_instance.groups_name_jobs_id_delete(name, id)
rescue IronTitan::ApiError => e
  puts "Exception when calling JobsApi->groups_name_jobs_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of group for this set of jobs. | 
 **id** | **String**| Job id | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **groups_name_jobs_id_error_post**
> JobWrapper groups_name_jobs_id_error_post(name, id, body)

Mark job as failed.

Job is marked as failed if it was in a valid state. Job's `finished_at` time is initialized.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::JobsApi.new

name = "name_example" # String | Name of group for this set of jobs.

id = "id_example" # String | Job id

body = IronTitan::Complete.new # Complete | 


begin
  #Mark job as failed.
  result = api_instance.groups_name_jobs_id_error_post(name, id, body)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling JobsApi->groups_name_jobs_id_error_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of group for this set of jobs. | 
 **id** | **String**| Job id | 
 **body** | [**Complete**](Complete.md)|  | 

### Return type

[**JobWrapper**](JobWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **groups_name_jobs_id_get**
> JobWrapper groups_name_jobs_id_get(name, id)

Gets job by id

Gets a job by id.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::JobsApi.new

name = "name_example" # String | Name of group for this set of jobs.

id = "id_example" # String | Job id


begin
  #Gets job by id
  result = api_instance.groups_name_jobs_id_get(name, id)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling JobsApi->groups_name_jobs_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of group for this set of jobs. | 
 **id** | **String**| Job id | 

### Return type

[**JobWrapper**](JobWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **groups_name_jobs_id_log_get**
> String groups_name_jobs_id_log_get(name, id)

Get the log of a completed job.

Retrieves the log from log storage.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::JobsApi.new

name = "name_example" # String | Name of group for this set of jobs.

id = "id_example" # String | Job id


begin
  #Get the log of a completed job.
  result = api_instance.groups_name_jobs_id_log_get(name, id)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling JobsApi->groups_name_jobs_id_log_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of group for this set of jobs. | 
 **id** | **String**| Job id | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain



# **groups_name_jobs_id_log_post**
> JobWrapper groups_name_jobs_id_log_post(name, id, log)

Send in a log for storage.

Logs are sent after a job completes since they may be very large and the runner can process the next job.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::JobsApi.new

name = "name_example" # String | Name of group for this set of jobs.

id = "id_example" # String | Job id

log = File.new("/path/to/file.txt") # File | Output log for the job. Content-Type must be \"text/plain; charset=utf-8\".


begin
  #Send in a log for storage.
  result = api_instance.groups_name_jobs_id_log_post(name, id, log)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling JobsApi->groups_name_jobs_id_log_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of group for this set of jobs. | 
 **id** | **String**| Job id | 
 **log** | **File**| Output log for the job. Content-Type must be \&quot;text/plain; charset&#x3D;utf-8\&quot;. | 

### Return type

[**JobWrapper**](JobWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **groups_name_jobs_id_retry_post**
> JobWrapper groups_name_jobs_id_retry_post(name, id)

Retry a job.

\"The /retry endpoint can be used to force a retry of jobs with status succeeded or cancelled. It can also be used to retry jobs that in the failed state, but whose max_retries field is 0. The retried job will continue to have max_retries = 0.\" 

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::JobsApi.new

name = "name_example" # String | Name of group for this set of jobs.

id = "id_example" # String | Job id


begin
  #Retry a job.
  result = api_instance.groups_name_jobs_id_retry_post(name, id)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling JobsApi->groups_name_jobs_id_retry_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of group for this set of jobs. | 
 **id** | **String**| Job id | 

### Return type

[**JobWrapper**](JobWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **groups_name_jobs_id_start_post**
> JobWrapper groups_name_jobs_id_start_post(name, id, body)

Mark job as started, ie: status = 'running'

Job status is changed to 'running' if it was in a valid state before. Job's `started_at` time is initialized.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::JobsApi.new

name = "name_example" # String | Name of group for this set of jobs.

id = "id_example" # String | Job id

body = IronTitan::Start.new # Start | 


begin
  #Mark job as started, ie: status = 'running'
  result = api_instance.groups_name_jobs_id_start_post(name, id, body)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling JobsApi->groups_name_jobs_id_start_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of group for this set of jobs. | 
 **id** | **String**| Job id | 
 **body** | [**Start**](Start.md)|  | 

### Return type

[**JobWrapper**](JobWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **groups_name_jobs_id_success_post**
> JobWrapper groups_name_jobs_id_success_post(name, id, body)

Mark job as succeeded.

Job status is changed to succeeded if it was in a valid state before. Job's `completed_at` time is initialized.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::JobsApi.new

name = "name_example" # String | Name of group for this set of jobs.

id = "id_example" # String | Job id

body = IronTitan::Complete.new # Complete | 


begin
  #Mark job as succeeded.
  result = api_instance.groups_name_jobs_id_success_post(name, id, body)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling JobsApi->groups_name_jobs_id_success_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of group for this set of jobs. | 
 **id** | **String**| Job id | 
 **body** | [**Complete**](Complete.md)|  | 

### Return type

[**JobWrapper**](JobWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **groups_name_jobs_id_touch_post**
> groups_name_jobs_id_touch_post(name, id)

Extend job timeout.

Consumers can sometimes take a while to run the task after accepting it.  An example is when the runner does not have the docker image locally, it can spend a significant time downloading the image. If the timeout is small, the job may never get to run, or run but not be accepted by Titan. Consumers can touch the job before it times out. Titan will reset the timeout, giving the consumer another timeout seconds to run the job. Touch is only valid while the job is in a running state. If touch fails, the runner may stop running the job. 

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::JobsApi.new

name = "name_example" # String | Name of group for this set of jobs.

id = "id_example" # String | Job id


begin
  #Extend job timeout.
  api_instance.groups_name_jobs_id_touch_post(name, id)
rescue IronTitan::ApiError => e
  puts "Exception when calling JobsApi->groups_name_jobs_id_touch_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of group for this set of jobs. | 
 **id** | **String**| Job id | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **groups_name_jobs_post**
> JobsWrapper groups_name_jobs_post(name, body)

Enqueue Job

Enqueues job(s). If any of the jobs is invalid, none of the jobs are enqueued. 

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::JobsApi.new

name = "name_example" # String | name of the group.

body = IronTitan::NewJobsWrapper.new # NewJobsWrapper | Array of jobs to post.


begin
  #Enqueue Job
  result = api_instance.groups_name_jobs_post(name, body)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling JobsApi->groups_name_jobs_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| name of the group. | 
 **body** | [**NewJobsWrapper**](NewJobsWrapper.md)| Array of jobs to post. | 

### Return type

[**JobsWrapper**](JobsWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **jobs_get**
> JobsWrapper jobs_get(opts)

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
  result = api_instance.jobs_get(opts)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling JobsApi->jobs_get: #{e}"
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

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



