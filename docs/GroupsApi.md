# IronTitan::GroupsApi

All URIs are relative to *https://localhost:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**groups_get**](GroupsApi.md#groups_get) | **GET** /groups | Get all group names.
[**groups_name_get**](GroupsApi.md#groups_name_get) | **GET** /groups/{name} | Get information for a group.
[**groups_name_put**](GroupsApi.md#groups_name_put) | **PUT** /groups/{name} | Create/update a job group.
[**groups_post**](GroupsApi.md#groups_post) | **POST** /groups | Post new group


# **groups_get**
> GroupsWrapper groups_get

Get all group names.

Get a list of all the groups in the system.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::GroupsApi.new

begin
  #Get all group names.
  result = api_instance.groups_get
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling GroupsApi->groups_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GroupsWrapper**](GroupsWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **groups_name_get**
> GroupWrapper groups_name_get(name)

Get information for a group.

This gives more details about a job group, such as statistics.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::GroupsApi.new

name = "name_example" # String | name of the group.


begin
  #Get information for a group.
  result = api_instance.groups_name_get(name)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling GroupsApi->groups_name_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| name of the group. | 

### Return type

[**GroupWrapper**](GroupWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **groups_name_put**
> GroupWrapper groups_name_put(name, body)

Create/update a job group.

You can set group level settings here. 

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::GroupsApi.new

name = "name_example" # String | name of the group.

body = IronTitan::GroupWrapper.new # GroupWrapper | Group to post.


begin
  #Create/update a job group.
  result = api_instance.groups_name_put(name, body)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling GroupsApi->groups_name_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| name of the group. | 
 **body** | [**GroupWrapper**](GroupWrapper.md)| Group to post. | 

### Return type

[**GroupWrapper**](GroupWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **groups_post**
> GroupWrapper groups_post(body)

Post new group

Insert a new job group

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::GroupsApi.new

body = IronTitan::GroupWrapper.new # GroupWrapper | Group to post.


begin
  #Post new group
  result = api_instance.groups_post(body)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling GroupsApi->groups_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GroupWrapper**](GroupWrapper.md)| Group to post. | 

### Return type

[**GroupWrapper**](GroupWrapper.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



