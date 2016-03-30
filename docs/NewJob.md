# IronTitan::NewJob

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**image** | **String** | Name of image to use. | [optional] 
**payload** | **String** | Payload for the job. This is what you pass into each job to make it do something. | [optional] 
**delay** | **Integer** | Number of seconds to wait before queueing the job for consumption for the first time. Must be a positive integer. Jobs with a delay start in state \&quot;delayed\&quot; and transition to \&quot;running\&quot; after delay seconds. | [optional] [default to 0]
**timeout** | **Integer** | Maximum runtime in seconds. If a consumer retrieves the job, but does not change it&#39;s status within timeout seconds, the job is considered failed, with reason timeout (Titan may allow a small grace period). The consumer should also kill the job after timeout seconds. If a consumer tries to change status after Titan has already timed out the job, the consumer will be ignored. | [optional] [default to 60]
**priority** | **Integer** | Priority of the job. Higher has more priority. 3 levels from 0-2. Jobs at same priority are processed in FIFO order. | [optional] [default to 0]
**max_retries** | **Integer** | Number of automatic retries this job is allowed. A retry will be attempted if a task fails. Max 25.\nAutomatic retries are performed by titan when a task reaches a failed state and has `max_retries` &gt; 0. A retry is performed by queueing a new job with the same image id and payload. The new job&#39;s max_retries is one less than the original. The new job&#39;s `retry_of` field is set to the original Job ID.  Titan will delay the new job for retries_delay seconds before queueing it. Cancelled or successful tasks are never automatically retried. | [optional] [default to 3]
**retries_delay** | **Integer** | Time in seconds to wait before retrying the job. Must be a non-negative integer. | [optional] [default to 60]


