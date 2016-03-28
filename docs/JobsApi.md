# IronTitan::JobsApi

All URIs are relative to *https://localhost:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**job_id_cancel_post**](JobsApi.md#job_id_cancel_post) | **POST** /job/{id}/cancel | Cancel a job.
[**job_id_get**](JobsApi.md#job_id_get) | **GET** /job/{id} | Gets job by id
[**job_id_log_get**](JobsApi.md#job_id_log_get) | **GET** /job/{id}/log | Get the log of a completed job.
[**job_id_patch**](JobsApi.md#job_id_patch) | **PATCH** /job/{id} | Update a job
[**job_id_retry_post**](JobsApi.md#job_id_retry_post) | **POST** /job/{id}/retry | Retry a job.
[**jobs_get**](JobsApi.md#jobs_get) | **GET** /jobs | Get next job.
[**jobs_name_get**](JobsApi.md#jobs_name_get) | **GET** /jobs/{name} | Get job list by name.
[**jobs_post**](JobsApi.md#jobs_post) | **POST** /jobs | Enqueue Job


# **job_id_cancel_post**
> JobWrapper job_id_cancel_post(id)

Cancel a job.

This will prevent a job from running. TODO: should we attempt to kill a running job?

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::JobsApi.new

id = "id_example" # String | Job id


begin
  #Cancel a job.
  result = api_instance.job_id_cancel_post(id)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling JobsApi->job_id_cancel_post: #{e}"
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
> Log job_id_log_get(id)

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

[**Log**](Log.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **job_id_patch**
> JobWrapper job_id_patch(id, body)

Update a job

Typically used to update status on error/completion. TODO: only allow 'status' field.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::JobsApi.new

id = "id_example" # String | Job id

body = IronTitan::JobWrapper.new # JobWrapper | Job data to post


begin
  #Update a job
  result = api_instance.job_id_patch(id, body)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling JobsApi->job_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Job id | 
 **body** | [**JobWrapper**](JobWrapper.md)| Job data to post | 

### Return type

[**JobWrapper**](JobWrapper.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **job_id_retry_post**
> JobWrapper job_id_retry_post(id)

Retry a job.

If a job fails, you can retry the job with the original payload.

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



# **jobs_get**
> JobsWrapper jobs_get(opts)

Get next job.

Gets the next job in the queue, ready for processing.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::JobsApi.new

opts = { 
  n: 56 # Integer | Number of jobs to return.
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
 **n** | **Integer**| Number of jobs to return. | [optional] 

### Return type

[**JobsWrapper**](JobsWrapper.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **jobs_name_get**
> JobsWrapper jobs_name_get(name, opts)

Get job list by name.

Gets the next job in the queue, ready for processing.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::JobsApi.new

name = "name_example" # String | Name of this set of jobs.

opts = { 
  created_after: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Will return jobs created after this time. In RFC3339 format.
  n: 56 # Integer | Number of jobs to return.
}

begin
  #Get job list by name.
  result = api_instance.jobs_name_get(name, opts)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling JobsApi->jobs_name_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of this set of jobs. | 
 **created_after** | **DateTime**| Will return jobs created after this time. In RFC3339 format. | [optional] 
 **n** | **Integer**| Number of jobs to return. | [optional] 

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

Enqueues a job.

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



