# IronTitan::Job

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**image** | **String** | Name of image to use. | 
**payload** | **String** | Payload for the job. This is what you pass into each job to make it do something. | [optional] 
**delay** | **Integer** | Number of seconds to wait before queueing the job for consumption for the first time. Must be a positive integer. Jobs with a delay start in state \&quot;delayed\&quot; and transition to \&quot;running\&quot; after delay seconds. | [optional] [default to 0]
**timeout** | **Integer** | Maximum runtime in seconds. If a consumer retrieves the\njob, but does not change it&#39;s status within timeout seconds, the job\nis considered failed, with reason timeout (Titan may allow a small\ngrace period). The consumer should also kill the job after timeout\nseconds. If a consumer tries to change status after Titan has already\ntimed out the job, the consumer will be ignored.\n | [optional] [default to 60]
**priority** | **Integer** | Priority of the job. Higher has more priority. 3 levels from 0-2. Jobs at same priority are processed in FIFO order. | 
**max_retries** | **Integer** | \&quot;Number of automatic retries this job is allowed. A retry will be attempted if a task fails. Max 25. Automatic retries are performed by titan when a task reaches a failed state and has `max_retries` &gt; 0. A retry is performed by queueing a new job with the same image id and payload. The new job&#39;s max_retries is one less than the original. The new job&#39;s `retry_of` field is set to the original Job ID.  Titan will delay the new job for retries_delay seconds before queueing it. Cancelled or successful tasks are never automatically retried.\&quot;\n | [optional] [default to 0]
**retries_delay** | **Integer** | Time in seconds to wait before retrying the job. Must be a non-negative integer. | [optional] [default to 60]
**id** | **String** | Unique identifier representing a specific job. | [optional] 
**status** | **String** | States and valid transitions.\n\n                 +---------+\n       +---------&gt; delayed &lt;----------------+\n                 +----+----+                |\n                      |                     |\n                      |                     |\n                 +----v----+                |\n       +---------&gt; queued  &lt;----------------+\n                 +----+----+                *\n                      |                     *\n                      |               retry * creates new job\n                 +----v----+                *\n                 | running |                *\n                 +--+-+-+--+                |\n          +---------|-|-|-----+-------------+\n      +---|---------+ | +-----|---------+   |\n      |   |           |       |         |   |\n+-----v---^-+      +--v-------^+     +--v---^-+\n| success   |      | cancelled |     |  error |\n+-----------+      +-----------+     +--------+\n\n* delayed - has a delay.\n* queued - Ready to be consumed when it&#39;s turn comes.\n* running - Currently consumed by a runner which will attempt to process it.\n* success - (or complete? success/error is common javascript terminology)\n* error - Something went wrong. In this case more information can be obtained\n  by inspecting the \&quot;reason\&quot; field.\n  - timeout\n  - killed - forcibly killed by worker due to resource restrictions or access\n    violations.\n  - bad_exit - exited with non-zero status due to program termination/crash.\n* cancelled - cancelled via API. More information in the reason field.\n  - client_request - Request was cancelled by a client.\n | [optional] 
**group_name** | **String** | Group this job belongs to.  | [optional] 
**error** | **String** | The error message, if status is &#39;error&#39;. This is errors due to things outside the job itself. Errors from user code will be found in the log. | [optional] 
**reason** | **String** | Machine usable reason for job being in this state.\nValid values for error status are `timeout | killed | bad_exit`.\nValid values for cancelled status are `client_request`.\nFor everything else, this is undefined.\n | [optional] 
**created_at** | **DateTime** | Time when job was submitted. Always in UTC. | [optional] 
**started_at** | **DateTime** | Time when job started execution. Always in UTC. | [optional] 
**completed_at** | **DateTime** | Time when job completed, whether it was successul or failed. Always in UTC. | [optional] 
**retry_of** | **String** | If this field is set, then this job is a retry of the ID in this field. | [optional] 
**retry_at** | **String** | If this field is set, then this job was retried by the job referenced in this field. | [optional] 


