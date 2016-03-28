# IronTitan::NewJob

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Docker image to use for job. Default is the same as the &#39;image&#39; parameter. | [optional] 
**image** | **String** | Docker image to use for job. | 
**payload** | **String** | Payload for the job.  This is what you pass into each job to make it do something. | [optional] 
**delay** | **Integer** | Number of seconds to wait before starting. Default 0. | [optional] 
**timeout** | **Integer** | Maximum runtime in seconds. If job runs for longer, it will be killed. Default 60 seconds. | [optional] 
**priority** | **Integer** | Priority of the job. 3 levels from 0-2. Default 0. | [optional] 
**retries** | **Integer** | Max number of retries. A retry will be attempted if a task fails. Default 3. TODO: naming: retries or max_retries? | [optional] 
**retries_delay** | **Integer** | Time in seconds to wait before next attempt. Default 60. | [optional] 
**retry_from_id** | **String** | If this field is set, then this job is a retry of a previous job. retry_from_id points to the previous job. | [optional] 


