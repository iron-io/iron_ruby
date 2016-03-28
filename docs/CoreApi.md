# IronTitan::CoreApi

All URIs are relative to *https://localhost:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**job_id_get**](CoreApi.md#job_id_get) | **GET** /job/{id} | Gets job by id
[**jobs_get**](CoreApi.md#jobs_get) | **GET** /jobs | Get next job.
[**jobs_post**](CoreApi.md#jobs_post) | **POST** /jobs | Enqueue Job


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



# **jobs_get**
> JobsWrapper jobs_get(opts)

Get next job.

Gets the next job in the queue, ready for processing.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::CoreApi.new

opts = { 
  n: 56 # Integer | Number of jobs to return.
}

begin
  #Get next job.
  result = api_instance.jobs_get(opts)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling CoreApi->jobs_get: #{e}"
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



# **jobs_post**
> JobsWrapper jobs_post(body)

Enqueue Job

Enqueues a job.

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



