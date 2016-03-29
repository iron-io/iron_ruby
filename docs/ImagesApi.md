# IronTitan::ImagesApi

All URIs are relative to *https://localhost:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**image_id_get**](ImagesApi.md#image_id_get) | **GET** /image/{id} | Get information for image id.
[**images_get**](ImagesApi.md#images_get) | **GET** /images | Get all image names.


# **image_id_get**
> ImageWrapper image_id_get(id)

Get information for image id.

This gives more details about on image, such as the image name and other statistics.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::ImagesApi.new

id = "id_example" # String | ID of the image.


begin
  #Get information for image id.
  result = api_instance.image_id_get(id)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling ImagesApi->image_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the image. | 

### Return type

[**ImageWrapper**](ImageWrapper.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



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



