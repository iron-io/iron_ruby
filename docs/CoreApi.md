# IronTitan::CoreApi

All URIs are relative to *https://localhost:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**job_id_delete**](CoreApi.md#job_id_delete) | **DELETE** /job/{id} | Delete the job.
[**job_id_get**](CoreApi.md#job_id_get) | **GET** /job/{id} | Gets job by id
[**jobs_consume_get**](CoreApi.md#jobs_consume_get) | **GET** /jobs/consume | Get next job.
[**jobs_post**](CoreApi.md#jobs_post) | **POST** /jobs | Enqueue Job


# **job_id_delete**
> job_id_delete(id)

Delete the job.

Delete only succeeds if job status is one of `succeeded\n| failed | cancelled`. Cancel a job if it is another state and needs to\nbe deleted.  All information about the job, including the log, is\nirretrievably lost when this is invoked.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::CoreApi.new

id = "id_example" # String | Job id


begin
  #Delete the job.
  api_instance.job_id_delete(id)
rescue IronTitan::ApiError => e
  puts "Exception when calling CoreApi->job_id_delete: #{e}"
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



# **job_id_get**
> JobWrapper job_id_get(id)

Gets job by id

Gets a job by id.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::CoreApi.new

id = "id_example" # String | Job id


begin
  #Gets job by id
  result = api_instance.job_id_get(id)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling CoreApi->job_id_get: #{e}"
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



# **jobs_consume_get**
> JobsWrapper jobs_consume_get(opts)

Get next job.

Gets the next job in the queue, ready for processing. Titan may return <=n jobs. Consumers should start processing jobs in order. Each returned job is set to `status` \"running\" and `started_at` is set to the current time. No other consumer can retrieve this job.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::CoreApi.new

opts = { 
  n: 1 # Integer | Number of jobs to return.
}

begin
  #Get next job.
  result = api_instance.jobs_consume_get(opts)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling CoreApi->jobs_consume_get: #{e}"
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



# **jobs_post**
> JobsWrapper jobs_post(body)

Enqueue Job

Enqueues job(s). If any of the jobs is invalid, none of the jobs are enqueued.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::CoreApi.new

body = IronTitan::NewJobsWrapper.new # NewJobsWrapper | Array of jobs to post.


begin
  #Enqueue Job
  result = api_instance.jobs_post(body)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling CoreApi->jobs_post: #{e}"
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



