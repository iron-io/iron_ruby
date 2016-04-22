# IronTitan::RunnerApi

All URIs are relative to *https://localhost:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**groups_group_name_jobs_id_error_post**](RunnerApi.md#groups_group_name_jobs_id_error_post) | **POST** /groups/{group_name}/jobs/{id}/error | Mark job as failed.
[**groups_group_name_jobs_id_start_post**](RunnerApi.md#groups_group_name_jobs_id_start_post) | **POST** /groups/{group_name}/jobs/{id}/start | Mark job as started, ie: status = &#39;running&#39;
[**groups_group_name_jobs_id_success_post**](RunnerApi.md#groups_group_name_jobs_id_success_post) | **POST** /groups/{group_name}/jobs/{id}/success | Mark job as succeeded.


# **groups_group_name_jobs_id_error_post**
> JobWrapper groups_group_name_jobs_id_error_post(group_name, id, body)

Mark job as failed.

Job is marked as failed if it was in a valid state. Job's `finished_at` time is initialized.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::RunnerApi.new

group_name = "group_name_example" # String | Name of group for this set of jobs.

id = "id_example" # String | Job id

body = IronTitan::Complete.new # Complete | 


begin
  #Mark job as failed.
  result = api_instance.groups_group_name_jobs_id_error_post(group_name, id, body)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling RunnerApi->groups_group_name_jobs_id_error_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_name** | **String**| Name of group for this set of jobs. | 
 **id** | **String**| Job id | 
 **body** | [**Complete**](Complete.md)|  | 

### Return type

[**JobWrapper**](JobWrapper.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **groups_group_name_jobs_id_start_post**
> JobWrapper groups_group_name_jobs_id_start_post(group_name, id, body)

Mark job as started, ie: status = 'running'

Job status is changed to 'running' if it was in a valid state before. Job's `started_at` time is initialized.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::RunnerApi.new

group_name = "group_name_example" # String | Name of group for this set of jobs.

id = "id_example" # String | Job id

body = IronTitan::Start.new # Start | 


begin
  #Mark job as started, ie: status = 'running'
  result = api_instance.groups_group_name_jobs_id_start_post(group_name, id, body)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling RunnerApi->groups_group_name_jobs_id_start_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_name** | **String**| Name of group for this set of jobs. | 
 **id** | **String**| Job id | 
 **body** | [**Start**](Start.md)|  | 

### Return type

[**JobWrapper**](JobWrapper.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **groups_group_name_jobs_id_success_post**
> JobWrapper groups_group_name_jobs_id_success_post(group_name, id, body)

Mark job as succeeded.

Job status is changed to succeeded if it was in a valid state before. Job's `completed_at` time is initialized.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::RunnerApi.new

group_name = "group_name_example" # String | Name of group for this set of jobs.

id = "id_example" # String | Job id

body = IronTitan::Complete.new # Complete | 


begin
  #Mark job as succeeded.
  result = api_instance.groups_group_name_jobs_id_success_post(group_name, id, body)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling RunnerApi->groups_group_name_jobs_id_success_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_name** | **String**| Name of group for this set of jobs. | 
 **id** | **String**| Job id | 
 **body** | [**Complete**](Complete.md)|  | 

### Return type

[**JobWrapper**](JobWrapper.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



