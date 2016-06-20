# IronTitan::Group

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of this group. Must be different than the image name. Can ony contain alphanumeric, -, and _. | [optional] 
**created_at** | **DateTime** | Time when image first used/created. | [optional] 
**image** | **String** | Name of Docker image to use in this group. You should include the image tag, which should be a version number, to be more accurate. Can be overridden on a per job basis with job.image. | [optional] 
**env_vars** | **Hash&lt;String, String&gt;** | User defined environment variables that will be passed in to each job in this group. | [optional] 
**max_concurrency** | **Integer** | The maximum number of jobs that will run at the exact same time in this group. | [optional] 


