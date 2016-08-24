# IronWorker::RunnerApi

All URIs are relative to *https://localhost:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**groups_name_tasks_id_error_post**](RunnerApi.md#groups_name_tasks_id_error_post) | **POST** /groups/{name}/tasks/{id}/error | Mark task as failed.
[**groups_name_tasks_id_start_post**](RunnerApi.md#groups_name_tasks_id_start_post) | **POST** /groups/{name}/tasks/{id}/start | Mark task as started, ie: status &#x3D; &#39;running&#39;
[**groups_name_tasks_id_success_post**](RunnerApi.md#groups_name_tasks_id_success_post) | **POST** /groups/{name}/tasks/{id}/success | Mark task as succeeded.


# **groups_name_tasks_id_error_post**
> TaskWrapper groups_name_tasks_id_error_post(name, id, body)

Mark task as failed.

Task is marked as failed if it was in a valid state. Task's `finished_at` time is initialized.

### Example
```ruby
# load the gem
require 'worker_ruby'

api_instance = IronWorker::RunnerApi.new

name = "name_example" # String | Name of group for this set of tasks.

id = "id_example" # String | Task id

body = IronWorker::Complete.new # Complete | 


begin
  #Mark task as failed.
  result = api_instance.groups_name_tasks_id_error_post(name, id, body)
  p result
rescue IronWorker::ApiError => e
  puts "Exception when calling RunnerApi->groups_name_tasks_id_error_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of group for this set of tasks. | 
 **id** | **String**| Task id | 
 **body** | [**Complete**](Complete.md)|  | 

### Return type

[**TaskWrapper**](TaskWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **groups_name_tasks_id_start_post**
> TaskWrapper groups_name_tasks_id_start_post(name, id, body)

Mark task as started, ie: status = 'running'

Task status is changed to 'running' if it was in a valid state before. Task's `started_at` time is initialized.

### Example
```ruby
# load the gem
require 'worker_ruby'

api_instance = IronWorker::RunnerApi.new

name = "name_example" # String | Name of group for this set of tasks.

id = "id_example" # String | Task id

body = IronWorker::Start.new # Start | 


begin
  #Mark task as started, ie: status = 'running'
  result = api_instance.groups_name_tasks_id_start_post(name, id, body)
  p result
rescue IronWorker::ApiError => e
  puts "Exception when calling RunnerApi->groups_name_tasks_id_start_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of group for this set of tasks. | 
 **id** | **String**| Task id | 
 **body** | [**Start**](Start.md)|  | 

### Return type

[**TaskWrapper**](TaskWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **groups_name_tasks_id_success_post**
> TaskWrapper groups_name_tasks_id_success_post(name, id, body)

Mark task as succeeded.

Task status is changed to succeeded if it was in a valid state before. Task's `completed_at` time is initialized.

### Example
```ruby
# load the gem
require 'worker_ruby'

api_instance = IronWorker::RunnerApi.new

name = "name_example" # String | Name of group for this set of tasks.

id = "id_example" # String | Task id

body = IronWorker::Complete.new # Complete | 


begin
  #Mark task as succeeded.
  result = api_instance.groups_name_tasks_id_success_post(name, id, body)
  p result
rescue IronWorker::ApiError => e
  puts "Exception when calling RunnerApi->groups_name_tasks_id_success_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of group for this set of tasks. | 
 **id** | **String**| Task id | 
 **body** | [**Complete**](Complete.md)|  | 

### Return type

[**TaskWrapper**](TaskWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



