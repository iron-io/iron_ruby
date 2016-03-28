# IronTitan::ImagesApi

All URIs are relative to *https://localhost:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**images_get**](ImagesApi.md#images_get) | **GET** /images | Get all image names.
[**images_name_get**](ImagesApi.md#images_name_get) | **GET** /images/{name} | Get image by name.


# **images_get**
> ImagesWrapper images_get

Get all image names.

TODO: Using images for lack of a better term. See https://github.com/iron-io/titan/issues/43 for discussion.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::ImagesApi.new

begin
  #Get all image names.
  result = api_instance.images_get
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling ImagesApi->images_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ImagesWrapper**](ImagesWrapper.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **images_name_get**
> ImageWrapper images_name_get(name)

Get image by name.

NOT IMPLEMENTED YET. This gives more details about on image, such as statistics and what not.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::ImagesApi.new

name = "name_example" # String | Name of the image.


begin
  #Get image by name.
  result = api_instance.images_name_get(name)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling ImagesApi->images_name_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the image. | 

### Return type

[**ImageWrapper**](ImageWrapper.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



