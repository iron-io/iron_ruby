# IronWorker::TasksApi

All URIs are relative to *https://localhost:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**groups_name_tasks_get**](TasksApi.md#groups_name_tasks_get) | **GET** /groups/{name}/tasks | Get task list by group name.
[**groups_name_tasks_id_cancel_post**](TasksApi.md#groups_name_tasks_id_cancel_post) | **POST** /groups/{name}/tasks/{id}/cancel | Cancel a task.
[**groups_name_tasks_id_delete**](TasksApi.md#groups_name_tasks_id_delete) | **DELETE** /groups/{name}/tasks/{id} | Delete the task.
[**groups_name_tasks_id_error_post**](TasksApi.md#groups_name_tasks_id_error_post) | **POST** /groups/{name}/tasks/{id}/error | Mark task as failed.
[**groups_name_tasks_id_get**](TasksApi.md#groups_name_tasks_id_get) | **GET** /groups/{name}/tasks/{id} | Gets task by id
[**groups_name_tasks_id_log_get**](TasksApi.md#groups_name_tasks_id_log_get) | **GET** /groups/{name}/tasks/{id}/log | Get the log of a completed task.
[**groups_name_tasks_id_log_post**](TasksApi.md#groups_name_tasks_id_log_post) | **POST** /groups/{name}/tasks/{id}/log | Send in a log for storage.
[**groups_name_tasks_id_retry_post**](TasksApi.md#groups_name_tasks_id_retry_post) | **POST** /groups/{name}/tasks/{id}/retry | Retry a task.
[**groups_name_tasks_id_start_post**](TasksApi.md#groups_name_tasks_id_start_post) | **POST** /groups/{name}/tasks/{id}/start | Mark task as started, ie: status &#x3D; &#39;running&#39;
[**groups_name_tasks_id_success_post**](TasksApi.md#groups_name_tasks_id_success_post) | **POST** /groups/{name}/tasks/{id}/success | Mark task as succeeded.
[**groups_name_tasks_id_touch_post**](TasksApi.md#groups_name_tasks_id_touch_post) | **POST** /groups/{name}/tasks/{id}/touch | Extend task timeout.
[**groups_name_tasks_post**](TasksApi.md#groups_name_tasks_post) | **POST** /groups/{name}/tasks | Enqueue task
[**tasks_get**](TasksApi.md#tasks_get) | **GET** /tasks | Get next task.


# **groups_name_tasks_get**
> TasksWrapper groups_name_tasks_get(name, opts)

Get task list by group name.

This will list tasks for a particular group.

### Example
```ruby
# load the gem
require 'worker_ruby'

api_instance = IronWorker::TasksApi.new

name = "name_example" # String | Name of group for this set of tasks.

opts = { 
  created_after: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Will return tasks created after this time. In RFC3339 format.
  n: 56, # Integer | Number of tasks to return per page. Default is 50. Max is 1000.
  cursor: "cursor_example" # String | Pass this in from a previous query to paginate results.
}

begin
  #Get task list by group name.
  result = api_instance.groups_name_tasks_get(name, opts)
  p result
rescue IronWorker::ApiError => e
  puts "Exception when calling TasksApi->groups_name_tasks_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of group for this set of tasks. | 
 **created_after** | **DateTime**| Will return tasks created after this time. In RFC3339 format. | [optional] 
 **n** | **Integer**| Number of tasks to return per page. Default is 50. Max is 1000. | [optional] 
 **cursor** | **String**| Pass this in from a previous query to paginate results. | [optional] 

### Return type

[**TasksWrapper**](TasksWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **groups_name_tasks_id_cancel_post**
> TaskWrapper groups_name_tasks_id_cancel_post(name, id)

Cancel a task.

Cancels a task in delayed, queued or running status. The worker may continue to run a running task. reason is set to `client_request`. The task's completed_at field is set to the current time on the taskserver.

### Example
```ruby
# load the gem
require 'worker_ruby'

api_instance = IronWorker::TasksApi.new

name = "name_example" # String | Name of group for this set of tasks.

id = "id_example" # String | Task id


begin
  #Cancel a task.
  result = api_instance.groups_name_tasks_id_cancel_post(name, id)
  p result
rescue IronWorker::ApiError => e
  puts "Exception when calling TasksApi->groups_name_tasks_id_cancel_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of group for this set of tasks. | 
 **id** | **String**| Task id | 

### Return type

[**TaskWrapper**](TaskWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **groups_name_tasks_id_delete**
> groups_name_tasks_id_delete(name, id)

Delete the task.

Delete only succeeds if task status is one of `succeeded | failed | cancelled`. Cancel a task if it is another state and needs to be deleted.  All information about the task, including the log, is irretrievably lost when this is invoked. 

### Example
```ruby
# load the gem
require 'worker_ruby'

api_instance = IronWorker::TasksApi.new

name = "name_example" # String | Name of group for this set of tasks.

id = "id_example" # String | Task id


begin
  #Delete the task.
  api_instance.groups_name_tasks_id_delete(name, id)
rescue IronWorker::ApiError => e
  puts "Exception when calling TasksApi->groups_name_tasks_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of group for this set of tasks. | 
 **id** | **String**| Task id | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **groups_name_tasks_id_error_post**
> TaskWrapper groups_name_tasks_id_error_post(name, id, body)

Mark task as failed.

Task is marked as failed if it was in a valid state. Task's `finished_at` time is initialized.

### Example
```ruby
# load the gem
require 'worker_ruby'

api_instance = IronWorker::TasksApi.new

name = "name_example" # String | Name of group for this set of tasks.

id = "id_example" # String | Task id

body = IronWorker::Complete.new # Complete | 


begin
  #Mark task as failed.
  result = api_instance.groups_name_tasks_id_error_post(name, id, body)
  p result
rescue IronWorker::ApiError => e
  puts "Exception when calling TasksApi->groups_name_tasks_id_error_post: #{e}"
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



# **groups_name_tasks_id_get**
> TaskWrapper groups_name_tasks_id_get(name, id)

Gets task by id

Gets a task by id.

### Example
```ruby
# load the gem
require 'worker_ruby'

api_instance = IronWorker::TasksApi.new

name = "name_example" # String | Name of group for this set of tasks.

id = "id_example" # String | task id


begin
  #Gets task by id
  result = api_instance.groups_name_tasks_id_get(name, id)
  p result
rescue IronWorker::ApiError => e
  puts "Exception when calling TasksApi->groups_name_tasks_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of group for this set of tasks. | 
 **id** | **String**| task id | 

### Return type

[**TaskWrapper**](TaskWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **groups_name_tasks_id_log_get**
> String groups_name_tasks_id_log_get(name, id)

Get the log of a completed task.

Retrieves the log from log storage.

### Example
```ruby
# load the gem
require 'worker_ruby'

api_instance = IronWorker::TasksApi.new

name = "name_example" # String | Name of group for this set of tasks.

id = "id_example" # String | Task id


begin
  #Get the log of a completed task.
  result = api_instance.groups_name_tasks_id_log_get(name, id)
  p result
rescue IronWorker::ApiError => e
  puts "Exception when calling TasksApi->groups_name_tasks_id_log_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of group for this set of tasks. | 
 **id** | **String**| Task id | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain



# **groups_name_tasks_id_log_post**
> TaskWrapper groups_name_tasks_id_log_post(name, id, log)

Send in a log for storage.

Logs are sent after a task completes since they may be very large and the runner can process the next task.

### Example
```ruby
# load the gem
require 'worker_ruby'

api_instance = IronWorker::TasksApi.new

name = "name_example" # String | Name of group for this set of tasks.

id = "id_example" # String | Task id

log = File.new("/path/to/file.txt") # File | Output log for the task. Content-Type must be \"text/plain; charset=utf-8\".


begin
  #Send in a log for storage.
  result = api_instance.groups_name_tasks_id_log_post(name, id, log)
  p result
rescue IronWorker::ApiError => e
  puts "Exception when calling TasksApi->groups_name_tasks_id_log_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of group for this set of tasks. | 
 **id** | **String**| Task id | 
 **log** | **File**| Output log for the task. Content-Type must be \&quot;text/plain; charset&#x3D;utf-8\&quot;. | 

### Return type

[**TaskWrapper**](TaskWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **groups_name_tasks_id_retry_post**
> TaskWrapper groups_name_tasks_id_retry_post(name, id)

Retry a task.

\"The /retry endpoint can be used to force a retry of tasks with status succeeded, cancelled or failed. The retried task has the same attributes. max_retries is not modified.\" 

### Example
```ruby
# load the gem
require 'worker_ruby'

api_instance = IronWorker::TasksApi.new

name = "name_example" # String | Name of group for this set of tasks.

id = "id_example" # String | Task id


begin
  #Retry a task.
  result = api_instance.groups_name_tasks_id_retry_post(name, id)
  p result
rescue IronWorker::ApiError => e
  puts "Exception when calling TasksApi->groups_name_tasks_id_retry_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of group for this set of tasks. | 
 **id** | **String**| Task id | 

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

api_instance = IronWorker::TasksApi.new

name = "name_example" # String | Name of group for this set of tasks.

id = "id_example" # String | Task id

body = IronWorker::Start.new # Start | 


begin
  #Mark task as started, ie: status = 'running'
  result = api_instance.groups_name_tasks_id_start_post(name, id, body)
  p result
rescue IronWorker::ApiError => e
  puts "Exception when calling TasksApi->groups_name_tasks_id_start_post: #{e}"
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

api_instance = IronWorker::TasksApi.new

name = "name_example" # String | Name of group for this set of tasks.

id = "id_example" # String | Task id

body = IronWorker::Complete.new # Complete | 


begin
  #Mark task as succeeded.
  result = api_instance.groups_name_tasks_id_success_post(name, id, body)
  p result
rescue IronWorker::ApiError => e
  puts "Exception when calling TasksApi->groups_name_tasks_id_success_post: #{e}"
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



# **groups_name_tasks_id_touch_post**
> groups_name_tasks_id_touch_post(name, id)

Extend task timeout.

Consumers can sometimes take a while to run the task after accepting it.  An example is when the runner does not have the docker image locally, it can spend a significant time downloading the image. If the timeout is small, the task may never get to run, or run but not be accepted by Titan. Consumers can touch the task before it times out. Titan will reset the timeout, giving the consumer another timeout seconds to run the task. Touch is only valid while the task is in a running state. If touch fails, the runner may stop running the task. 

### Example
```ruby
# load the gem
require 'worker_ruby'

api_instance = IronWorker::TasksApi.new

name = "name_example" # String | Name of group for this set of tasks.

id = "id_example" # String | Task id


begin
  #Extend task timeout.
  api_instance.groups_name_tasks_id_touch_post(name, id)
rescue IronWorker::ApiError => e
  puts "Exception when calling TasksApi->groups_name_tasks_id_touch_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of group for this set of tasks. | 
 **id** | **String**| Task id | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **groups_name_tasks_post**
> TasksWrapper groups_name_tasks_post(name, body)

Enqueue task

Enqueues task(s). If any of the tasks is invalid, none of the tasks are enqueued. 

### Example
```ruby
# load the gem
require 'worker_ruby'

api_instance = IronWorker::TasksApi.new

name = "name_example" # String | name of the group.

body = IronWorker::NewTasksWrapper.new # NewTasksWrapper | Array of tasks to post.


begin
  #Enqueue task
  result = api_instance.groups_name_tasks_post(name, body)
  p result
rescue IronWorker::ApiError => e
  puts "Exception when calling TasksApi->groups_name_tasks_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| name of the group. | 
 **body** | [**NewTasksWrapper**](NewTasksWrapper.md)| Array of tasks to post. | 

### Return type

[**TasksWrapper**](TasksWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **tasks_get**
> TasksWrapper tasks_get(opts)

Get next task.

Gets the next task in the queue, ready for processing. Titan may return <=n tasks. Consumers should start processing tasks in order. Each returned task is set to `status` \"running\" and `started_at` is set to the current time. No other consumer can retrieve this task.

### Example
```ruby
# load the gem
require 'worker_ruby'

api_instance = IronWorker::TasksApi.new

opts = { 
  n: 1 # Integer | Number of tasks to return.
}

begin
  #Get next task.
  result = api_instance.tasks_get(opts)
  p result
rescue IronWorker::ApiError => e
  puts "Exception when calling TasksApi->tasks_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **n** | **Integer**| Number of tasks to return. | [optional] [default to 1]

### Return type

[**TasksWrapper**](TasksWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



